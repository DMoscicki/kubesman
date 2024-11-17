import 'dart:async';

import 'package:casdoor_flutter_sdk/casdoor_flutter_sdk.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:frontend/auth_factory/factory.dart';

Future<String> MacOSAuthCasdoor(String url) async {
  final Completer<String> isFinished = Completer<String>();

  final browser = InAppAuthBrowser();
  final settings = InAppBrowserClassSettings(
      browserSettings: InAppBrowserSettings(
        hideTitleBar: true,
        hideUrlBar: true,
        hideToolbarBottom: true,
      ),
      webViewSettings: InAppWebViewSettings(
        javaScriptEnabled: true,
        isInspectable: false,
        userAgent:
            "Mozilla/5.0 (Android 14; Mobile; rv:123.0) Gecko/123.0 Firefox/123.0",
        useShouldOverrideUrlLoading: true,
        useOnLoadResource: true,
      ));

  browser.setOnExitCallback(() {
    if (!isFinished.isCompleted) {
      isFinished.completeError(CasdoorAuthCancelledException());
    }
  });

  browser.setOnShouldOverrideUrlLoadingCallback((returnUrl) async {
    if (returnUrl != null) {
      if (returnUrl.scheme == data.casdoor.config.callbackUrlScheme) {
        isFinished.complete(returnUrl.toString());
        browser.close();
        return NavigationActionPolicy.CANCEL;
      }
    }

    return NavigationActionPolicy.ALLOW;
  });

  browser.openUrlRequest(
    urlRequest: URLRequest(url: WebUri(url)),
    settings: settings,
  );

  return isFinished.future;
}
