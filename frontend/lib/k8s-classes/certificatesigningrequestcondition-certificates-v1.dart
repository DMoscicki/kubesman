import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'certificatesigningrequestcondition_certificates_v1.g.dart';


///CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest
///object
@JsonSerializable()
class CertificatesigningrequestconditionCertificatesV1 {
    
    ///lastTransitionTime is the time the condition last transitioned from one status to
    ///another. If unset, when a new condition type is added or an existing condition's status
    ///is changed, the server defaults this to the current time.
    @JsonKey(name: "lastTransitionTime")
    DateTime? lastTransitionTime;
    
    ///lastUpdateTime is the time of the last update to this condition
    @JsonKey(name: "lastUpdateTime")
    DateTime? lastUpdateTime;
    
    ///message contains a human readable message with details about the request state
    @JsonKey(name: "message")
    String? message;
    
    ///reason indicates a brief reason for the request state
    @JsonKey(name: "reason")
    String? reason;
    
    ///status of the condition, one of True, False, Unknown. Approved, Denied, and Failed
    ///conditions may not be "False" or "Unknown".
    @JsonKey(name: "status")
    String? status;
    
    ///type of the condition. Known conditions are "Approved", "Denied", and "Failed".
    ///
    ///An "Approved" condition is added via the /approval subresource, indicating the request
    ///was approved and should be issued by the signer.
    ///
    ///A "Denied" condition is added via the /approval subresource, indicating the request was
    ///denied and should not be issued by the signer.
    ///
    ///A "Failed" condition is added via the /status subresource, indicating the signer failed
    ///to issue the certificate.
    ///
    ///Approved and Denied conditions are mutually exclusive. Approved, Denied, and Failed
    ///conditions cannot be removed once added.
    ///
    ///Only one condition of a given type is allowed.
    @JsonKey(name: "type")
    String? type;

    CertificatesigningrequestconditionCertificatesV1({
        this.lastTransitionTime,
        this.lastUpdateTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory CertificatesigningrequestconditionCertificatesV1.fromJson(Map<String, dynamic> json) => _$CertificatesigningrequestconditionCertificatesV1FromJson(json);

    Map<String, dynamic> toJson() => _$CertificatesigningrequestconditionCertificatesV1ToJson(this);
}
