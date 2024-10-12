import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'nodesysteminfo.g.dart';


///NodeSystemInfo is a set of ids/uuids to uniquely identify the node.
@JsonSerializable()
class Nodesysteminfo {
    
    ///The Architecture reported by the node
    @JsonKey(name: "architecture")
    String? architecture;
    
    ///Boot ID reported by the node.
    @JsonKey(name: "bootID")
    String? bootId;
    
    ///ContainerRuntime Version reported by the node through runtime remote API (e.g.
    ///containerd://1.4.2).
    @JsonKey(name: "containerRuntimeVersion")
    String? containerRuntimeVersion;
    
    ///Kernel Version reported by the node from 'uname -r' (e.g. 3.16.0-0.bpo.4-amd64).
    @JsonKey(name: "kernelVersion")
    String? kernelVersion;
    
    ///Kubelet Version reported by the node.
    @JsonKey(name: "kubeletVersion")
    String? kubeletVersion;
    
    ///KubeProxy Version reported by the node.
    @JsonKey(name: "kubeProxyVersion")
    String? kubeProxyVersion;
    
    ///MachineID reported by the node. For unique machine identification in the cluster this
    ///field is preferred. Learn more from man(5) machine-id:
    ///http://man7.org/linux/man-pages/man5/machine-id.5.html
    @JsonKey(name: "machineID")
    String? machineId;
    
    ///The Operating System reported by the node
    @JsonKey(name: "operatingSystem")
    String? operatingSystem;
    
    ///OS Image reported by the node from /etc/os-release (e.g. Debian GNU/Linux 7 (wheezy)).
    @JsonKey(name: "osImage")
    String? osImage;
    
    ///SystemUUID reported by the node. For unique machine identification MachineID is
    ///preferred. This field is specific to Red Hat hosts
    ///https://access.redhat.com/documentation/en-us/red_hat_subscription_management/1/html/rhsm/uuid
    @JsonKey(name: "systemUUID")
    String? systemUuid;

    Nodesysteminfo({
        required this.architecture,
        required this.bootId,
        required this.containerRuntimeVersion,
        required this.kernelVersion,
        required this.kubeletVersion,
        required this.kubeProxyVersion,
        required this.machineId,
        required this.operatingSystem,
        required this.osImage,
        required this.systemUuid,
    });

    factory Nodesysteminfo.fromJson(Map<String, dynamic> json) => _$NodesysteminfoFromJson(json);

    Map<String, dynamic> toJson() => _$NodesysteminfoToJson(this);
}
