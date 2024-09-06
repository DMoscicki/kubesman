import 'package:flutter/material.dart';
import 'package:frontend/pages/entry_page.dart';
import 'package:frontend/themes/themes.provider.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
    create: (context) => ThemeProvider(),
    child: const MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Kubesman',
      theme: Provider.of<ThemeProvider>(context).themeData,
      home: const EntryPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

// class MainPage extends StatefulWidget {
//   const MainPage({super.key});

//   @override
//   State<MainPage> createState() => _MainPageState();
// }

// class _MainPageState extends State<MainPage> {
//   final _controller = SidebarXController(selectedIndex: 0);

//   final WidgetStateProperty<Icon?> thumbIcon =
//       WidgetStateProperty.resolveWith<Icon?>(
//     (Set<WidgetState> states) {
//       if (states.contains(WidgetState.selected)) {
//         return const Icon(Icons.sunny);
//       }
//       return const Icon(Icons.dark_mode_outlined);
//     },
//   );

//   @override
//   Widget build(BuildContext context) {
//     var screenSize = MediaQuery.of(context).size;
//     return Scaffold(
//       appBar: AppBar(
//         backgroundColor: Theme.of(context).colorScheme.surface,
//         elevation: 0,
//         title: Padding(
//           padding: const EdgeInsets.only(left: 40.0, top: 30.0),
//           child: Text('Kubesman',
//               style: GoogleFonts.robotoMono(
//                   fontSize: FontSizer.littlefontmain(context),
//                   color: Theme.of(context).colorScheme.secondary)),
//         ),
//         centerTitle: false,
//         titleSpacing: 0.0,
//         actions: [
//           Padding(
//               padding: const EdgeInsets.only(right: 30.0, top: 24.0),
//               child: Switch(
//                   value: context.read<ThemeProvider>().themeData ==
//                       ThemeClass.lightTheme,
//                   thumbIcon: thumbIcon,
//                   activeColor: Colors.amberAccent,
//                   onChanged: (_) {
//                     Provider.of<ThemeProvider>(context, listen: false)
//                         .toggleTheme();
//                   })),
//         ],
//       ),
//     );
//   }
// }
