import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'vendorparameters.g.dart';


///VendorParameters are opaque parameters for one particular driver.
@JsonSerializable()
class Vendorparameters {
    
    ///DriverName is the name used by the DRA driver kubelet plugin.
    @JsonKey(name: "driverName")
    String? driverName;
    
    ///Parameters can be arbitrary setup parameters. They are ignored while allocating a claim.
    @JsonKey(name: "parameters")
    Map<String, dynamic>? parameters;

    Vendorparameters({
        this.driverName,
        this.parameters,
    });

    factory Vendorparameters.fromJson(Map<String, dynamic> json) => _$VendorparametersFromJson(json);

    Map<String, dynamic> toJson() => _$VendorparametersToJson(this);
}
