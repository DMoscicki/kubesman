// Automatically generated by the Flatbuffers compiler. Do not modify.
// @generated
pub mod api {
  use super::*;
  pub mod admissionregistration {
    use super::*;
    pub mod v_1 {
      use super::*;
      mod audit_annotation_generated;
      pub use self::audit_annotation_generated::*;
      mod expression_warning_generated;
      pub use self::expression_warning_generated::*;
      mod match_condition_generated;
      pub use self::match_condition_generated::*;
      mod match_resources_generated;
      pub use self::match_resources_generated::*;
      mod mutating_webhook_generated;
      pub use self::mutating_webhook_generated::*;
      mod mutating_webhook_configuration_generated;
      pub use self::mutating_webhook_configuration_generated::*;
      mod mutating_webhook_configuration_list_generated;
      pub use self::mutating_webhook_configuration_list_generated::*;
      mod named_rule_with_operations_generated;
      pub use self::named_rule_with_operations_generated::*;
      mod param_kind_generated;
      pub use self::param_kind_generated::*;
      mod param_ref_generated;
      pub use self::param_ref_generated::*;
      mod rule_generated;
      pub use self::rule_generated::*;
      mod rule_with_operations_generated;
      pub use self::rule_with_operations_generated::*;
      mod service_reference_generated;
      pub use self::service_reference_generated::*;
      mod type_checking_generated;
      pub use self::type_checking_generated::*;
      mod validating_admission_policy_generated;
      pub use self::validating_admission_policy_generated::*;
      mod validating_admission_policy_binding_generated;
      pub use self::validating_admission_policy_binding_generated::*;
      mod validating_admission_policy_binding_list_generated;
      pub use self::validating_admission_policy_binding_list_generated::*;
      mod validating_admission_policy_binding_spec_generated;
      pub use self::validating_admission_policy_binding_spec_generated::*;
      mod validating_admission_policy_list_generated;
      pub use self::validating_admission_policy_list_generated::*;
      mod validating_admission_policy_spec_generated;
      pub use self::validating_admission_policy_spec_generated::*;
      mod validating_admission_policy_status_generated;
      pub use self::validating_admission_policy_status_generated::*;
      mod validating_webhook_generated;
      pub use self::validating_webhook_generated::*;
      mod validating_webhook_configuration_generated;
      pub use self::validating_webhook_configuration_generated::*;
      mod validating_webhook_configuration_list_generated;
      pub use self::validating_webhook_configuration_list_generated::*;
      mod validation_generated;
      pub use self::validation_generated::*;
      mod variable_generated;
      pub use self::variable_generated::*;
      mod webhook_client_config_generated;
      pub use self::webhook_client_config_generated::*;
    } // v_1
    pub mod v_1alpha_1 {
      use super::*;
      mod audit_annotation_generated;
      pub use self::audit_annotation_generated::*;
      mod expression_warning_generated;
      pub use self::expression_warning_generated::*;
      mod match_condition_generated;
      pub use self::match_condition_generated::*;
      mod match_resources_generated;
      pub use self::match_resources_generated::*;
      mod named_rule_with_operations_generated;
      pub use self::named_rule_with_operations_generated::*;
      mod param_kind_generated;
      pub use self::param_kind_generated::*;
      mod param_ref_generated;
      pub use self::param_ref_generated::*;
      mod type_checking_generated;
      pub use self::type_checking_generated::*;
      mod validating_admission_policy_generated;
      pub use self::validating_admission_policy_generated::*;
      mod validating_admission_policy_binding_generated;
      pub use self::validating_admission_policy_binding_generated::*;
      mod validating_admission_policy_binding_list_generated;
      pub use self::validating_admission_policy_binding_list_generated::*;
      mod validating_admission_policy_binding_spec_generated;
      pub use self::validating_admission_policy_binding_spec_generated::*;
      mod validating_admission_policy_list_generated;
      pub use self::validating_admission_policy_list_generated::*;
      mod validating_admission_policy_spec_generated;
      pub use self::validating_admission_policy_spec_generated::*;
      mod validating_admission_policy_status_generated;
      pub use self::validating_admission_policy_status_generated::*;
      mod validation_generated;
      pub use self::validation_generated::*;
      mod variable_generated;
      pub use self::variable_generated::*;
    } // v_1alpha_1
  } // admissionregistration
} // api
pub mod apimachinery {
  use super::*;
  pub mod pkg {
    use super::*;
    pub mod apis {
      use super::*;
      pub mod meta {
        use super::*;
        pub mod v_1 {
          use super::*;
          pub mod label_selector_ {
            use super::*;
            mod match_labels_entry_generated;
            pub use self::match_labels_entry_generated::*;
          } // label_selector_
          pub mod object_meta_ {
            use super::*;
            mod labels_entry_generated;
            pub use self::labels_entry_generated::*;
            mod annotations_entry_generated;
            pub use self::annotations_entry_generated::*;
          } // object_meta_
          mod apigroup_generated;
          pub use self::apigroup_generated::*;
          mod apigroup_list_generated;
          pub use self::apigroup_list_generated::*;
          mod apiresource_generated;
          pub use self::apiresource_generated::*;
          mod apiresource_list_generated;
          pub use self::apiresource_list_generated::*;
          mod apiversions_generated;
          pub use self::apiversions_generated::*;
          mod apply_options_generated;
          pub use self::apply_options_generated::*;
          mod condition_generated;
          pub use self::condition_generated::*;
          mod create_options_generated;
          pub use self::create_options_generated::*;
          mod delete_options_generated;
          pub use self::delete_options_generated::*;
          mod duration_generated;
          pub use self::duration_generated::*;
          mod fields_v1_generated;
          pub use self::fields_v1_generated::*;
          mod get_options_generated;
          pub use self::get_options_generated::*;
          mod group_kind_generated;
          pub use self::group_kind_generated::*;
          mod group_resource_generated;
          pub use self::group_resource_generated::*;
          mod group_version_generated;
          pub use self::group_version_generated::*;
          mod group_version_for_discovery_generated;
          pub use self::group_version_for_discovery_generated::*;
          mod group_version_kind_generated;
          pub use self::group_version_kind_generated::*;
          mod group_version_resource_generated;
          pub use self::group_version_resource_generated::*;
          mod label_selector_generated;
          pub use self::label_selector_generated::*;
          mod label_selector_requirement_generated;
          pub use self::label_selector_requirement_generated::*;
          mod list_generated;
          pub use self::list_generated::*;
          mod list_meta_generated;
          pub use self::list_meta_generated::*;
          mod list_options_generated;
          pub use self::list_options_generated::*;
          mod managed_fields_entry_generated;
          pub use self::managed_fields_entry_generated::*;
          mod micro_time_generated;
          pub use self::micro_time_generated::*;
          mod object_meta_generated;
          pub use self::object_meta_generated::*;
          mod owner_reference_generated;
          pub use self::owner_reference_generated::*;
          mod partial_object_metadata_generated;
          pub use self::partial_object_metadata_generated::*;
          mod partial_object_metadata_list_generated;
          pub use self::partial_object_metadata_list_generated::*;
          mod patch_generated;
          pub use self::patch_generated::*;
          mod patch_options_generated;
          pub use self::patch_options_generated::*;
          mod preconditions_generated;
          pub use self::preconditions_generated::*;
          mod root_paths_generated;
          pub use self::root_paths_generated::*;
          mod server_address_by_client_cidr_generated;
          pub use self::server_address_by_client_cidr_generated::*;
          mod status_generated;
          pub use self::status_generated::*;
          mod status_cause_generated;
          pub use self::status_cause_generated::*;
          mod status_details_generated;
          pub use self::status_details_generated::*;
          mod table_options_generated;
          pub use self::table_options_generated::*;
          mod time_generated;
          pub use self::time_generated::*;
          mod timestamp_generated;
          pub use self::timestamp_generated::*;
          mod type_meta_generated;
          pub use self::type_meta_generated::*;
          mod update_options_generated;
          pub use self::update_options_generated::*;
          mod verbs_generated;
          pub use self::verbs_generated::*;
          mod watch_event_generated;
          pub use self::watch_event_generated::*;
        } // v_1
      } // meta
    } // apis
    pub mod runtime {
      use super::*;
      mod raw_extension_generated;
      pub use self::raw_extension_generated::*;
      mod type_meta_generated;
      pub use self::type_meta_generated::*;
      mod unknown_generated;
      pub use self::unknown_generated::*;
    } // runtime
  } // pkg
} // apimachinery
