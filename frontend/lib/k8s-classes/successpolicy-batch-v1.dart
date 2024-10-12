import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'successpolicy_batch_v1.g.dart';


///SuccessPolicy describes when a Job can be declared as succeeded based on the success of
///some indexes.
@JsonSerializable()
class SuccesspolicyBatchV1 {
    
    ///rules represents the list of alternative rules for the declaring the Jobs as successful
    ///before `.status.succeeded >= .spec.completions`. Once any of the rules are met, the
    ///"SucceededCriteriaMet" condition is added, and the lingering pods are removed. The
    ///terminal state for such a Job has the "Complete" condition. Additionally, these rules are
    ///evaluated in order; Once the Job meets one of the rules, other rules are ignored. At most
    ///20 elements are allowed.
    @JsonKey(name: "rules")
    List<IoK8SApiBatchV1SuccessPolicyRule>? rules;

    SuccesspolicyBatchV1({
        required this.rules,
    });

    factory SuccesspolicyBatchV1.fromJson(Map<String, dynamic> json) => _$SuccesspolicyBatchV1FromJson(json);

    Map<String, dynamic> toJson() => _$SuccesspolicyBatchV1ToJson(this);
}


///SuccessPolicyRule describes rule for declaring a Job as succeeded. Each rule must have at
///least one of the "succeededIndexes" or "succeededCount" specified.
@JsonSerializable()
class IoK8SApiBatchV1SuccessPolicyRule {
    
    ///succeededCount specifies the minimal required size of the actual set of the succeeded
    ///indexes for the Job. When succeededCount is used along with succeededIndexes, the check
    ///is constrained only to the set of indexes specified by succeededIndexes. For example,
    ///given that succeededIndexes is "1-4", succeededCount is "3", and completed indexes are
    ///"1", "3", and "5", the Job isn't declared as succeeded because only "1" and "3" indexes
    ///are considered in that rules. When this field is null, this doesn't default to any value
    ///and is never evaluated at any time. When specified it needs to be a positive integer.
    @JsonKey(name: "succeededCount")
    int? succeededCount;
    
    ///succeededIndexes specifies the set of indexes which need to be contained in the actual
    ///set of the succeeded indexes for the Job. The list of indexes must be within 0 to
    ///".spec.completions-1" and must not contain duplicates. At least one element is required.
    ///The indexes are represented as intervals separated by commas. The intervals can be a
    ///decimal integer or a pair of decimal integers separated by a hyphen. The number are
    ///listed in represented by the first and last element of the series, separated by a hyphen.
    ///For example, if the completed indexes are 1, 3, 4, 5 and 7, they are represented as
    ///"1,3-5,7". When this field is null, this field doesn't default to any value and is never
    ///evaluated at any time.
    @JsonKey(name: "succeededIndexes")
    String? succeededIndexes;

    IoK8SApiBatchV1SuccessPolicyRule({
        this.succeededCount,
        this.succeededIndexes,
    });

    factory IoK8SApiBatchV1SuccessPolicyRule.fromJson(Map<String, dynamic> json) => _$IoK8SApiBatchV1SuccessPolicyRuleFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiBatchV1SuccessPolicyRuleToJson(this);
}
