import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'vendorparameters_resource_v1_alpha2.g.dart';


///VendorParameters are opaque parameters for one particular driver.
@JsonSerializable()
class VendorparametersResourceV1Alpha2 {
    
    ///DriverName is the name used by the DRA driver kubelet plugin.
    @JsonKey(name: "driverName")
    String? driverName;
    
    ///Parameters can be arbitrary setup parameters. They are ignored while allocating a claim.
    @JsonKey(name: "parameters")
    Map<String, dynamic>? parameters;

    VendorparametersResourceV1Alpha2({
        this.driverName,
        this.parameters,
    });

    factory VendorparametersResourceV1Alpha2.fromJson(Map<String, dynamic> json) => _$VendorparametersResourceV1Alpha2FromJson(json);

    Map<String, dynamic> toJson() => _$VendorparametersResourceV1Alpha2ToJson(this);
}
