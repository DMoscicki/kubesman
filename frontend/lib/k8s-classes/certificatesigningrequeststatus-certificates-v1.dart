import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'certificatesigningrequeststatus_certificates_v1.g.dart';


///CertificateSigningRequestStatus contains conditions used to indicate
///approved/denied/failed status of the request, and the issued certificate.
@JsonSerializable()
class CertificatesigningrequeststatusCertificatesV1 {
    
    ///certificate is populated with an issued certificate by the signer after an Approved
    ///condition is present. This field is set via the /status subresource. Once populated, this
    ///field is immutable.
    ///
    ///If the certificate signing request is denied, a condition of type "Denied" is added and
    ///this field remains empty. If the signer cannot issue the certificate, a condition of type
    ///"Failed" is added and this field remains empty.
    ///
    ///Validation requirements:
    ///1. certificate must contain one or more PEM blocks.
    ///2. All PEM blocks must have the "CERTIFICATE" label, contain no headers, and the encoded
    ///data
    ///must be a BER-encoded ASN.1 Certificate structure as described in section 4 of RFC5280.
    ///3. Non-PEM content may appear before or after the "CERTIFICATE" PEM blocks and is
    ///unvalidated,
    ///to allow for explanatory text as described in section 5.2 of RFC7468.
    ///
    ///If more than one PEM block is present, and the definition of the requested
    ///spec.signerName does not indicate otherwise, the first block is the issued certificate,
    ///and subsequent blocks should be treated as intermediate certificates and presented in TLS
    ///handshakes.
    ///
    ///The certificate is encoded in PEM format.
    ///
    ///When serialized as JSON or YAML, the data is additionally base64-encoded, so it consists
    ///of:
    ///
    ///base64(
    ///-----BEGIN CERTIFICATE-----
    ///...
    ///-----END CERTIFICATE-----
    ///)
    @JsonKey(name: "certificate")
    String? certificate;
    
    ///conditions applied to the request. Known conditions are "Approved", "Denied", and
    ///"Failed".
    @JsonKey(name: "conditions")
    List<IoK8SApiCertificatesV1CertificateSigningRequestCondition>? conditions;

    CertificatesigningrequeststatusCertificatesV1({
        this.certificate,
        this.conditions,
    });

    factory CertificatesigningrequeststatusCertificatesV1.fromJson(Map<String, dynamic> json) => _$CertificatesigningrequeststatusCertificatesV1FromJson(json);

    Map<String, dynamic> toJson() => _$CertificatesigningrequeststatusCertificatesV1ToJson(this);
}


///CertificateSigningRequestCondition describes a condition of a CertificateSigningRequest
///object
@JsonSerializable()
class IoK8SApiCertificatesV1CertificateSigningRequestCondition {
    
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
    String status;
    
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
    String type;

    IoK8SApiCertificatesV1CertificateSigningRequestCondition({
        this.lastTransitionTime,
        this.lastUpdateTime,
        this.message,
        this.reason,
        required this.status,
        required this.type,
    });

    factory IoK8SApiCertificatesV1CertificateSigningRequestCondition.fromJson(Map<String, dynamic> json) => _$IoK8SApiCertificatesV1CertificateSigningRequestConditionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCertificatesV1CertificateSigningRequestConditionToJson(this);
}
