import 'package:json_annotation/json_annotation.dart';
import 'dart:convert';

part 'volume_v1.g.dart';


///Volume represents a named volume in a pod that may be accessed by any container in the
///pod.
@JsonSerializable()
class VolumeV1 {
    
    ///awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
    ///machine and then exposed to the pod. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "awsElasticBlockStore")
    IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource? awsElasticBlockStore;
    
    ///azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
    @JsonKey(name: "azureDisk")
    IoK8SApiCoreV1AzureDiskVolumeSource? azureDisk;
    
    ///azureFile represents an Azure File Service mount on the host and bind mount to the pod.
    @JsonKey(name: "azureFile")
    IoK8SApiCoreV1AzureFileVolumeSource? azureFile;
    
    ///cephFS represents a Ceph FS mount on the host that shares a pod's lifetime
    @JsonKey(name: "cephfs")
    IoK8SApiCoreV1CephFsVolumeSource? cephfs;
    
    ///cinder represents a cinder volume attached and mounted on kubelets host machine. More
    ///info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "cinder")
    IoK8SApiCoreV1CinderVolumeSource? cinder;
    
    ///configMap represents a configMap that should populate this volume
    @JsonKey(name: "configMap")
    IoK8SApiCoreV1ConfigMapVolumeSource? configMap;
    
    ///csi (Container Storage Interface) represents ephemeral storage that is handled by certain
    ///external CSI drivers (Beta feature).
    @JsonKey(name: "csi")
    IoK8SApiCoreV1CsiVolumeSource? csi;
    
    ///downwardAPI represents downward API about the pod that should populate this volume
    @JsonKey(name: "downwardAPI")
    IoK8SApiCoreV1DownwardApiVolumeSource? downwardApi;
    
    ///emptyDir represents a temporary directory that shares a pod's lifetime. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#emptydir
    @JsonKey(name: "emptyDir")
    IoK8SApiCoreV1EmptyDirVolumeSource? emptyDir;
    
    ///ephemeral represents a volume that is handled by a cluster storage driver. The volume's
    ///lifecycle is tied to the pod that defines it - it will be created before the pod starts,
    ///and deleted when the pod is removed.
    ///
    ///Use this if: a) the volume is only needed while the pod runs, b) features of normal
    ///volumes like restoring from snapshot or capacity
    ///tracking are needed,
    ///c) the storage driver is specified through a storage class, and d) the storage driver
    ///supports dynamic volume provisioning through
    ///a PersistentVolumeClaim (see EphemeralVolumeSource for more
    ///information on the connection between this volume type
    ///and PersistentVolumeClaim).
    ///
    ///Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for
    ///longer than the lifecycle of an individual pod.
    ///
    ///Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used
    ///that way - see the documentation of the driver for more information.
    ///
    ///A pod can use both types of ephemeral volumes and persistent volumes at the same time.
    @JsonKey(name: "ephemeral")
    IoK8SApiCoreV1EphemeralVolumeSource? ephemeral;
    
    ///fc represents a Fibre Channel resource that is attached to a kubelet's host machine and
    ///then exposed to the pod.
    @JsonKey(name: "fc")
    IoK8SApiCoreV1FcVolumeSource? fc;
    
    ///flexVolume represents a generic volume resource that is provisioned/attached using an
    ///exec based plugin.
    @JsonKey(name: "flexVolume")
    IoK8SApiCoreV1FlexVolumeSource? flexVolume;
    
    ///flocker represents a Flocker volume attached to a kubelet's host machine. This depends on
    ///the Flocker control service being running
    @JsonKey(name: "flocker")
    IoK8SApiCoreV1FlockerVolumeSource? flocker;
    
    ///gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host
    ///machine and then exposed to the pod. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "gcePersistentDisk")
    IoK8SApiCoreV1GcePersistentDiskVolumeSource? gcePersistentDisk;
    
    ///gitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is
    ///deprecated. To provision a container with a git repo, mount an EmptyDir into an
    ///InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's
    ///container.
    @JsonKey(name: "gitRepo")
    IoK8SApiCoreV1GitRepoVolumeSource? gitRepo;
    
    ///glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More
    ///info: https://examples.k8s.io/volumes/glusterfs/README.md
    @JsonKey(name: "glusterfs")
    IoK8SApiCoreV1GlusterfsVolumeSource? glusterfs;
    
    ///hostPath represents a pre-existing file or directory on the host machine that is directly
    ///exposed to the container. This is generally used for system agents or other privileged
    ///things that are allowed to see the host machine. Most containers will NOT need this. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "hostPath")
    IoK8SApiCoreV1HostPathVolumeSource? hostPath;
    
    ///iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and
    ///then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md
    @JsonKey(name: "iscsi")
    IoK8SApiCoreV1IscsiVolumeSource? iscsi;
    
    ///name of the volume. Must be a DNS_LABEL and unique within the pod. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///nfs represents an NFS mount on the host that shares a pod's lifetime More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "nfs")
    IoK8SApiCoreV1NfsVolumeSource? nfs;
    
    ///persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in
    ///the same namespace. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
    @JsonKey(name: "persistentVolumeClaim")
    IoK8SApiCoreV1PersistentVolumeClaimVolumeSource? persistentVolumeClaim;
    
    ///photonPersistentDisk represents a PhotonController persistent disk attached and mounted
    ///on kubelets host machine
    @JsonKey(name: "photonPersistentDisk")
    IoK8SApiCoreV1PhotonPersistentDiskVolumeSource? photonPersistentDisk;
    
    ///portworxVolume represents a portworx volume attached and mounted on kubelets host machine
    @JsonKey(name: "portworxVolume")
    IoK8SApiCoreV1PortworxVolumeSource? portworxVolume;
    
    ///projected items for all in one resources secrets, configmaps, and downward API
    @JsonKey(name: "projected")
    IoK8SApiCoreV1ProjectedVolumeSource? projected;
    
    ///quobyte represents a Quobyte mount on the host that shares a pod's lifetime
    @JsonKey(name: "quobyte")
    IoK8SApiCoreV1QuobyteVolumeSource? quobyte;
    
    ///rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More
    ///info: https://examples.k8s.io/volumes/rbd/README.md
    @JsonKey(name: "rbd")
    IoK8SApiCoreV1RbdVolumeSource? rbd;
    
    ///scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
    @JsonKey(name: "scaleIO")
    IoK8SApiCoreV1ScaleIoVolumeSource? scaleIo;
    
    ///secret represents a secret that should populate this volume. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#secret
    @JsonKey(name: "secret")
    IoK8SApiCoreV1SecretVolumeSource? secret;
    
    ///storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
    @JsonKey(name: "storageos")
    IoK8SApiCoreV1StorageOsVolumeSource? storageos;
    
    ///vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
    @JsonKey(name: "vsphereVolume")
    IoK8SApiCoreV1VsphereVirtualDiskVolumeSource? vsphereVolume;

    VolumeV1({
        this.awsElasticBlockStore,
        this.azureDisk,
        this.azureFile,
        this.cephfs,
        this.cinder,
        this.configMap,
        this.csi,
        this.downwardApi,
        this.emptyDir,
        this.ephemeral,
        this.fc,
        this.flexVolume,
        this.flocker,
        this.gcePersistentDisk,
        this.gitRepo,
        this.glusterfs,
        this.hostPath,
        this.iscsi,
        required this.name,
        this.nfs,
        this.persistentVolumeClaim,
        this.photonPersistentDisk,
        this.portworxVolume,
        this.projected,
        this.quobyte,
        this.rbd,
        this.scaleIo,
        this.secret,
        this.storageos,
        this.vsphereVolume,
    });

    factory VolumeV1.fromJson(Map<String, dynamic> json) => _$VolumeV1FromJson(json);

    Map<String, dynamic> toJson() => _$VolumeV1ToJson(this);
}


///awsElasticBlockStore represents an AWS Disk resource that is attached to a kubelet's host
///machine and then exposed to the pod. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
///
///Represents a Persistent Disk resource in AWS.
///
///An AWS EBS disk must exist before mounting to a container. The disk must also be in the
///same AWS zone as the kubelet. An AWS EBS disk can only be mounted as read/write once. AWS
///EBS volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource {
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///partition is the partition in the volume that you want to mount. If omitted, the default
    ///is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as
    ///"1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property
    ///empty).
    @JsonKey(name: "partition")
    int? partition;
    
    ///readOnly value true will force the readOnly setting in VolumeMounts. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeID is unique ID of the persistent disk resource in AWS (Amazon EBS volume). More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#awselasticblockstore
    @JsonKey(name: "volumeID")
    String volumeId;

    IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource({
        this.fsType,
        this.partition,
        this.readOnly,
        required this.volumeId,
    });

    factory IoK8SApiCoreV1AwsElasticBlockStoreVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AwsElasticBlockStoreVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AwsElasticBlockStoreVolumeSourceToJson(this);
}


///azureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
///
///AzureDisk represents an Azure Data Disk mount on the host and bind mount to the pod.
@JsonSerializable()
class IoK8SApiCoreV1AzureDiskVolumeSource {
    
    ///cachingMode is the Host Caching mode: None, Read Only, Read Write.
    @JsonKey(name: "cachingMode")
    String? cachingMode;
    
    ///diskName is the Name of the data disk in the blob storage
    @JsonKey(name: "diskName")
    String diskName;
    
    ///diskURI is the URI of data disk in the blob storage
    @JsonKey(name: "diskURI")
    String diskUri;
    
    ///fsType is Filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///kind expected values are Shared: multiple blob disks per storage account  Dedicated:
    ///single blob disk per storage account  Managed: azure managed data disk (only in managed
    ///availability set). defaults to shared
    @JsonKey(name: "kind")
    String? kind;
    
    ///readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1AzureDiskVolumeSource({
        this.cachingMode,
        required this.diskName,
        required this.diskUri,
        this.fsType,
        this.kind,
        this.readOnly,
    });

    factory IoK8SApiCoreV1AzureDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AzureDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AzureDiskVolumeSourceToJson(this);
}


///azureFile represents an Azure File Service mount on the host and bind mount to the pod.
///
///AzureFile represents an Azure File Service mount on the host and bind mount to the pod.
@JsonSerializable()
class IoK8SApiCoreV1AzureFileVolumeSource {
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretName is the  name of secret that contains Azure Storage Account Name and Key
    @JsonKey(name: "secretName")
    String secretName;
    
    ///shareName is the azure share Name
    @JsonKey(name: "shareName")
    String shareName;

    IoK8SApiCoreV1AzureFileVolumeSource({
        this.readOnly,
        required this.secretName,
        required this.shareName,
    });

    factory IoK8SApiCoreV1AzureFileVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1AzureFileVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1AzureFileVolumeSourceToJson(this);
}


///cephFS represents a Ceph FS mount on the host that shares a pod's lifetime
///
///Represents a Ceph Filesystem mount that lasts the lifetime of a pod Cephfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1CephFsVolumeSource {
    
    ///monitors is Required: Monitors is a collection of Ceph monitors More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "monitors")
    List<String> monitors;
    
    ///path is Optional: Used as the mounted root, rather than the full Ceph tree, default is /
    @JsonKey(name: "path")
    String? path;
    
    ///readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts. More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretFile is Optional: SecretFile is the path to key ring for User, default is
    ////etc/ceph/user.secret More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "secretFile")
    String? secretFile;
    
    ///secretRef is Optional: SecretRef is reference to the authentication secret for User,
    ///default is empty. More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///user is optional: User is the rados user name, default is admin More info:
    ///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
    @JsonKey(name: "user")
    String? user;

    IoK8SApiCoreV1CephFsVolumeSource({
        required this.monitors,
        this.path,
        this.readOnly,
        this.secretFile,
        this.secretRef,
        this.user,
    });

    factory IoK8SApiCoreV1CephFsVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CephFsVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CephFsVolumeSourceToJson(this);
}


///secretRef is Optional: SecretRef is reference to the authentication secret for User,
///default is empty. More info:
///https://examples.k8s.io/volumes/cephfs/README.md#how-to-use-it
///
///LocalObjectReference contains enough information to let you locate the referenced object
///inside the same namespace.
///
///secretRef is optional: points to a secret object containing parameters used to connect to
///OpenStack.
///
///nodePublishSecretRef is a reference to the secret object containing sensitive information
///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
///calls. This field is optional, and  may be empty if no secret is required. If the secret
///object contains more than one secret, all secret references are passed.
///
///secretRef is Optional: secretRef is reference to the secret object containing sensitive
///information to pass to the plugin scripts. This may be empty if no secret object is
///specified. If the secret object contains more than one secret, all secrets are passed to
///the plugin scripts.
///
///secretRef is the CHAP Secret for iSCSI target and initiator authentication
///
///secretRef is name of the authentication secret for RBDUser. If provided overrides
///keyring. Default is nil. More info:
///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
///
///secretRef references to the secret for ScaleIO user and other sensitive information. If
///this is not provided, Login operation will fail.
///
///secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If
///not specified, default values will be attempted.
@JsonSerializable()
class IoK8SApiCoreV1LocalObjectReference {
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;

    IoK8SApiCoreV1LocalObjectReference({
        this.name,
    });

    factory IoK8SApiCoreV1LocalObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1LocalObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1LocalObjectReferenceToJson(this);
}


///cinder represents a cinder volume attached and mounted on kubelets host machine. More
///info: https://examples.k8s.io/mysql-cinder-pd/README.md
///
///Represents a cinder volume resource in Openstack. A Cinder volume must exist before
///mounting to a container. The volume must also be in the same region as the kubelet.
///Cinder volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1CinderVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Examples: "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts. More info: https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is optional: points to a secret object containing parameters used to connect to
    ///OpenStack.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///volumeID used to identify the volume in cinder. More info:
    ///https://examples.k8s.io/mysql-cinder-pd/README.md
    @JsonKey(name: "volumeID")
    String volumeId;

    IoK8SApiCoreV1CinderVolumeSource({
        this.fsType,
        this.readOnly,
        this.secretRef,
        required this.volumeId,
    });

    factory IoK8SApiCoreV1CinderVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CinderVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CinderVolumeSourceToJson(this);
}


///configMap represents a configMap that should populate this volume
///
///Adapts a ConfigMap into a volume.
///
///The contents of the target ConfigMap's Data field will be presented in a volume as files
///using the keys in the Data field as the file names, unless the items element is populated
///with specific mappings of keys to paths. ConfigMap volumes support ownership management
///and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapVolumeSource {
    
    ///defaultMode is optional: mode bits used to set permissions on created files by default.
    ///Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML
    ///accepts both octal and decimal values, JSON requires decimal values for mode bits.
    ///Defaults to 0644. Directories within the path are not affected by this setting. This
    ///might be in conflict with other options that affect the file mode, like fsGroup, and the
    ///result can be other mode bits set.
    @JsonKey(name: "defaultMode")
    int? defaultMode;
    
    ///items if unspecified, each key-value pair in the Data field of the referenced ConfigMap
    ///will be projected into the volume as a file whose name is the key and content is the
    ///value. If specified, the listed keys will be projected into the specified paths, and
    ///unlisted keys will not be present. If a key is specified which is not present in the
    ///ConfigMap, the volume setup will error unless it is marked optional. Paths must be
    ///relative and may not contain the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///optional specify whether the ConfigMap or its keys must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1ConfigMapVolumeSource({
        this.defaultMode,
        this.items,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1ConfigMapVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapVolumeSourceToJson(this);
}


///Maps a string key to a path within a volume.
@JsonSerializable()
class IoK8SApiCoreV1KeyToPath {
    
    ///key is the key to project.
    @JsonKey(name: "key")
    String key;
    
    ///mode is Optional: mode bits used to set permissions on this file. Must be an octal value
    ///between 0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and
    ///decimal values, JSON requires decimal values for mode bits. If not specified, the volume
    ///defaultMode will be used. This might be in conflict with other options that affect the
    ///file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "mode")
    int? mode;
    
    ///path is the relative path of the file to map the key to. May not be an absolute path. May
    ///not contain the path element '..'. May not start with the string '..'.
    @JsonKey(name: "path")
    String path;

    IoK8SApiCoreV1KeyToPath({
        required this.key,
        this.mode,
        required this.path,
    });

    factory IoK8SApiCoreV1KeyToPath.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1KeyToPathFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1KeyToPathToJson(this);
}


///csi (Container Storage Interface) represents ephemeral storage that is handled by certain
///external CSI drivers (Beta feature).
///
///Represents a source location of a volume to mount, managed by an external CSI driver
@JsonSerializable()
class IoK8SApiCoreV1CsiVolumeSource {
    
    ///driver is the name of the CSI driver that handles this volume. Consult with your admin
    ///for the correct name as registered in the cluster.
    @JsonKey(name: "driver")
    String driver;
    
    ///fsType to mount. Ex. "ext4", "xfs", "ntfs". If not provided, the empty value is passed to
    ///the associated CSI driver which will determine the default filesystem to apply.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///nodePublishSecretRef is a reference to the secret object containing sensitive information
    ///to pass to the CSI driver to complete the CSI NodePublishVolume and NodeUnpublishVolume
    ///calls. This field is optional, and  may be empty if no secret is required. If the secret
    ///object contains more than one secret, all secret references are passed.
    @JsonKey(name: "nodePublishSecretRef")
    IoK8SApiCoreV1LocalObjectReference? nodePublishSecretRef;
    
    ///readOnly specifies a read-only configuration for the volume. Defaults to false
    ///(read/write).
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeAttributes stores driver-specific properties that are passed to the CSI driver.
    ///Consult your driver's documentation for supported values.
    @JsonKey(name: "volumeAttributes")
    Map<String, String>? volumeAttributes;

    IoK8SApiCoreV1CsiVolumeSource({
        required this.driver,
        this.fsType,
        this.nodePublishSecretRef,
        this.readOnly,
        this.volumeAttributes,
    });

    factory IoK8SApiCoreV1CsiVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1CsiVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1CsiVolumeSourceToJson(this);
}


///downwardAPI represents downward API about the pod that should populate this volume
///
///DownwardAPIVolumeSource represents a volume containing downward API info. Downward API
///volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1DownwardApiVolumeSource {
    
    ///Optional: mode bits to use on created files by default. Must be a Optional: mode bits
    ///used to set permissions on created files by default. Must be an octal value between 0000
    ///and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal
    ///values, JSON requires decimal values for mode bits. Defaults to 0644. Directories within
    ///the path are not affected by this setting. This might be in conflict with other options
    ///that affect the file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "defaultMode")
    int? defaultMode;
    
    ///Items is a list of downward API volume file
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1DownwardApiVolumeFile>? items;

    IoK8SApiCoreV1DownwardApiVolumeSource({
        this.defaultMode,
        this.items,
    });

    factory IoK8SApiCoreV1DownwardApiVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DownwardApiVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DownwardApiVolumeSourceToJson(this);
}


///DownwardAPIVolumeFile represents information to create the file containing the pod field
@JsonSerializable()
class IoK8SApiCoreV1DownwardApiVolumeFile {
    
    ///Required: Selects a field of the pod: only annotations, labels, name, namespace and uid
    ///are supported.
    @JsonKey(name: "fieldRef")
    IoK8SApiCoreV1ObjectFieldSelector? fieldRef;
    
    ///Optional: mode bits used to set permissions on this file, must be an octal value between
    ///0000 and 0777 or a decimal value between 0 and 511. YAML accepts both octal and decimal
    ///values, JSON requires decimal values for mode bits. If not specified, the volume
    ///defaultMode will be used. This might be in conflict with other options that affect the
    ///file mode, like fsGroup, and the result can be other mode bits set.
    @JsonKey(name: "mode")
    int? mode;
    
    ///Required: Path is  the relative path name of the file to be created. Must not be absolute
    ///or contain the '..' path. Must be utf-8 encoded. The first item of the relative path must
    ///not start with '..'
    @JsonKey(name: "path")
    String path;
    
    ///Selects a resource of the container: only resources limits and requests (limits.cpu,
    ///limits.memory, requests.cpu and requests.memory) are currently supported.
    @JsonKey(name: "resourceFieldRef")
    IoK8SApiCoreV1ResourceFieldSelector? resourceFieldRef;

    IoK8SApiCoreV1DownwardApiVolumeFile({
        this.fieldRef,
        this.mode,
        required this.path,
        this.resourceFieldRef,
    });

    factory IoK8SApiCoreV1DownwardApiVolumeFile.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DownwardApiVolumeFileFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DownwardApiVolumeFileToJson(this);
}


///Required: Selects a field of the pod: only annotations, labels, name, namespace and uid
///are supported.
///
///ObjectFieldSelector selects an APIVersioned field of an object.
@JsonSerializable()
class IoK8SApiCoreV1ObjectFieldSelector {
    
    ///Version of the schema the FieldPath is written in terms of, defaults to "v1".
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///Path of the field to select in the specified API version.
    @JsonKey(name: "fieldPath")
    String fieldPath;

    IoK8SApiCoreV1ObjectFieldSelector({
        this.apiVersion,
        required this.fieldPath,
    });

    factory IoK8SApiCoreV1ObjectFieldSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ObjectFieldSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ObjectFieldSelectorToJson(this);
}


///Selects a resource of the container: only resources limits and requests (limits.cpu,
///limits.memory, requests.cpu and requests.memory) are currently supported.
///
///ResourceFieldSelector represents container resources (cpu, memory) and their output format
@JsonSerializable()
class IoK8SApiCoreV1ResourceFieldSelector {
    
    ///Container name: required for volumes, optional for env vars
    @JsonKey(name: "containerName")
    String? containerName;
    
    ///Specifies the output format of the exposed resources, defaults to "1"
    @JsonKey(name: "divisor")
    dynamic divisor;
    
    ///Required: resource to select
    @JsonKey(name: "resource")
    String resource;

    IoK8SApiCoreV1ResourceFieldSelector({
        this.containerName,
        this.divisor,
        required this.resource,
    });

    factory IoK8SApiCoreV1ResourceFieldSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ResourceFieldSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ResourceFieldSelectorToJson(this);
}


///emptyDir represents a temporary directory that shares a pod's lifetime. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#emptydir
///
///Represents an empty directory for a pod. Empty directory volumes support ownership
///management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1EmptyDirVolumeSource {
    
    ///medium represents what type of storage medium should back this directory. The default is
    ///"" which means to use the node's default medium. Must be an empty string (default) or
    ///Memory. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
    @JsonKey(name: "medium")
    String? medium;
    
    ///sizeLimit is the total amount of local storage required for this EmptyDir volume. The
    ///size limit is also applicable for memory medium. The maximum usage on memory medium
    ///EmptyDir would be the minimum value between the SizeLimit specified here and the sum of
    ///memory limits of all containers in a pod. The default is nil which means that the limit
    ///is undefined. More info: https://kubernetes.io/docs/concepts/storage/volumes#emptydir
    @JsonKey(name: "sizeLimit")
    dynamic sizeLimit;

    IoK8SApiCoreV1EmptyDirVolumeSource({
        this.medium,
        this.sizeLimit,
    });

    factory IoK8SApiCoreV1EmptyDirVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EmptyDirVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EmptyDirVolumeSourceToJson(this);
}


///ephemeral represents a volume that is handled by a cluster storage driver. The volume's
///lifecycle is tied to the pod that defines it - it will be created before the pod starts,
///and deleted when the pod is removed.
///
///Use this if: a) the volume is only needed while the pod runs, b) features of normal
///volumes like restoring from snapshot or capacity
///tracking are needed,
///c) the storage driver is specified through a storage class, and d) the storage driver
///supports dynamic volume provisioning through
///a PersistentVolumeClaim (see EphemeralVolumeSource for more
///information on the connection between this volume type
///and PersistentVolumeClaim).
///
///Use PersistentVolumeClaim or one of the vendor-specific APIs for volumes that persist for
///longer than the lifecycle of an individual pod.
///
///Use CSI for light-weight local ephemeral volumes if the CSI driver is meant to be used
///that way - see the documentation of the driver for more information.
///
///A pod can use both types of ephemeral volumes and persistent volumes at the same time.
///
///Represents an ephemeral volume that is handled by a normal storage driver.
@JsonSerializable()
class IoK8SApiCoreV1EphemeralVolumeSource {
    
    ///Will be used to create a stand-alone PVC to provision the volume. The pod in which this
    ///EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be
    ///deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>`
    ///where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation
    ///will reject the pod if the concatenated name is not valid for a PVC (for example, too
    ///long).
    ///
    ///An existing PVC with that name that is not owned by the pod will *not* be used for the
    ///pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until
    ///the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod,
    ///the PVC has to updated with an owner reference to the pod once the pod exists. Normally
    ///this should not be necessary, but it may be useful when manually reconstructing a broken
    ///cluster.
    ///
    ///This field is read-only and no changes will be made by Kubernetes to the PVC after it has
    ///been created.
    ///
    ///Required, must not be nil.
    @JsonKey(name: "volumeClaimTemplate")
    IoK8SApiCoreV1PersistentVolumeClaimTemplate? volumeClaimTemplate;

    IoK8SApiCoreV1EphemeralVolumeSource({
        this.volumeClaimTemplate,
    });

    factory IoK8SApiCoreV1EphemeralVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1EphemeralVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1EphemeralVolumeSourceToJson(this);
}


///Will be used to create a stand-alone PVC to provision the volume. The pod in which this
///EphemeralVolumeSource is embedded will be the owner of the PVC, i.e. the PVC will be
///deleted together with the pod.  The name of the PVC will be `<pod name>-<volume name>`
///where `<volume name>` is the name from the `PodSpec.Volumes` array entry. Pod validation
///will reject the pod if the concatenated name is not valid for a PVC (for example, too
///long).
///
///An existing PVC with that name that is not owned by the pod will *not* be used for the
///pod to avoid using an unrelated volume by mistake. Starting the pod is then blocked until
///the unrelated PVC is removed. If such a pre-created PVC is meant to be used by the pod,
///the PVC has to updated with an owner reference to the pod once the pod exists. Normally
///this should not be necessary, but it may be useful when manually reconstructing a broken
///cluster.
///
///This field is read-only and no changes will be made by Kubernetes to the PVC after it has
///been created.
///
///Required, must not be nil.
///
///PersistentVolumeClaimTemplate is used to produce PersistentVolumeClaim objects as part of
///an EphemeralVolumeSource.
@JsonSerializable()
class IoK8SApiCoreV1PersistentVolumeClaimTemplate {
    
    ///May contain labels and annotations that will be copied into the PVC when creating it. No
    ///other fields are allowed and will be rejected during validation.
    @JsonKey(name: "metadata")
    IoK8SApimachineryPkgApisMetaV1ObjectMeta? metadata;
    
    ///The specification for the PersistentVolumeClaim. The entire content is copied unchanged
    ///into the PVC that gets created from this template. The same fields as in a
    ///PersistentVolumeClaim are also valid here.
    @JsonKey(name: "spec")
    IoK8SApiCoreV1PersistentVolumeClaimSpec spec;

    IoK8SApiCoreV1PersistentVolumeClaimTemplate({
        this.metadata,
        required this.spec,
    });

    factory IoK8SApiCoreV1PersistentVolumeClaimTemplate.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PersistentVolumeClaimTemplateFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PersistentVolumeClaimTemplateToJson(this);
}


///May contain labels and annotations that will be copied into the PVC when creating it. No
///other fields are allowed and will be rejected during validation.
///
///ObjectMeta is metadata that all persisted resources must have, which includes all objects
///users must create.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1ObjectMeta {
    
    ///Annotations is an unstructured key value map stored with a resource that may be set by
    ///external tools to store and retrieve arbitrary metadata. They are not queryable and
    ///should be preserved when modifying objects. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/annotations
    @JsonKey(name: "annotations")
    Map<String, String>? annotations;
    
    ///CreationTimestamp is a timestamp representing the server time when this object was
    ///created. It is not guaranteed to be set in happens-before order across separate
    ///operations. Clients may not set this value. It is represented in RFC3339 form and is in
    ///UTC.
    ///
    ///Populated by the system. Read-only. Null for lists. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "creationTimestamp")
    DateTime? creationTimestamp;
    
    ///Number of seconds allowed for this object to gracefully terminate before it will be
    ///removed from the system. Only set when deletionTimestamp is also set. May only be
    ///shortened. Read-only.
    @JsonKey(name: "deletionGracePeriodSeconds")
    int? deletionGracePeriodSeconds;
    
    ///DeletionTimestamp is RFC 3339 date and time at which this resource will be deleted. This
    ///field is set by the server when a graceful deletion is requested by the user, and is not
    ///directly settable by a client. The resource is expected to be deleted (no longer visible
    ///from resource lists, and not reachable by name) after the time in this field, once the
    ///finalizers list is empty. As long as the finalizers list contains items, deletion is
    ///blocked. Once the deletionTimestamp is set, this value may not be unset or be set further
    ///into the future, although it may be shortened or the resource may be deleted prior to
    ///this time. For example, a user may request that a pod is deleted in 30 seconds. The
    ///Kubelet will react by sending a graceful termination signal to the containers in the pod.
    ///After that 30 seconds, the Kubelet will send a hard termination signal (SIGKILL) to the
    ///container and after cleanup, remove the pod from the API. In the presence of network
    ///partitions, this object may still exist after this timestamp, until an administrator or
    ///automated process can determine the resource is fully terminated. If not set, graceful
    ///deletion of the object has not been requested.
    ///
    ///Populated by the system when a graceful deletion is requested. Read-only. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#metadata
    @JsonKey(name: "deletionTimestamp")
    DateTime? deletionTimestamp;
    
    ///Must be empty before the object is deleted from the registry. Each entry is an identifier
    ///for the responsible component that will remove the entry from the list. If the
    ///deletionTimestamp of the object is non-nil, entries in this list can only be removed.
    ///Finalizers may be processed and removed in any order.  Order is NOT enforced because it
    ///introduces significant risk of stuck finalizers. finalizers is a shared field, any actor
    ///with permission can reorder it. If the finalizer list is processed in order, then this
    ///can lead to a situation in which the component responsible for the first finalizer in the
    ///list is waiting for a signal (field value, external system, or other) produced by a
    ///component responsible for a finalizer later in the list, resulting in a deadlock. Without
    ///enforced ordering finalizers are free to order amongst themselves and are not vulnerable
    ///to ordering changes in the list.
    @JsonKey(name: "finalizers")
    List<String>? finalizers;
    
    ///GenerateName is an optional prefix, used by the server, to generate a unique name ONLY IF
    ///the Name field has not been provided. If this field is used, the name returned to the
    ///client will be different than the name passed. This value will also be combined with a
    ///unique suffix. The provided value has the same validation rules as the Name field, and
    ///may be truncated by the length of the suffix required to make the value unique on the
    ///server.
    ///
    ///If this field is specified and the generated name exists, the server will return a 409.
    ///
    ///Applied only if Name is not specified. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#idempotency
    @JsonKey(name: "generateName")
    String? generateName;
    
    ///A sequence number representing a specific generation of the desired state. Populated by
    ///the system. Read-only.
    @JsonKey(name: "generation")
    int? generation;
    
    ///Map of string keys and values that can be used to organize and categorize (scope and
    ///select) objects. May match selectors of replication controllers and services. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/labels
    @JsonKey(name: "labels")
    Map<String, String>? labels;
    
    ///ManagedFields maps workflow-id and version to the set of fields that are managed by that
    ///workflow. This is mostly for internal housekeeping, and users typically shouldn't need to
    ///set or understand this field. A workflow can be the user's name, a controller's name, or
    ///the name of a specific apply path like "ci-cd". The set of fields is always in the
    ///version that the workflow used when modifying the object.
    @JsonKey(name: "managedFields")
    List<IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry>? managedFields;
    
    ///Name must be unique within a namespace. Is required when creating resources, although
    ///some resources may allow a client to request the generation of an appropriate name
    ///automatically. Name is primarily intended for creation idempotence and configuration
    ///definition. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
    @JsonKey(name: "name")
    String? name;
    
    ///Namespace defines the space within which each name must be unique. An empty namespace is
    ///equivalent to the "default" namespace, but "default" is the canonical representation. Not
    ///all objects are required to be scoped to a namespace - the value of this field for those
    ///objects will be empty.
    ///
    ///Must be a DNS_LABEL. Cannot be updated. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/namespaces
    @JsonKey(name: "namespace")
    String? namespace;
    
    ///List of objects depended by this object. If ALL objects in the list have been deleted,
    ///this object will be garbage collected. If this object is managed by a controller, then an
    ///entry in this list will point to this controller, with the controller field set to true.
    ///There cannot be more than one managing controller.
    @JsonKey(name: "ownerReferences")
    List<IoK8SApimachineryPkgApisMetaV1OwnerReference>? ownerReferences;
    
    ///An opaque value that represents the internal version of this object that can be used by
    ///clients to determine when objects have changed. May be used for optimistic concurrency,
    ///change detection, and the watch operation on a resource or set of resources. Clients must
    ///treat these values as opaque and passed unmodified back to the server. They may only be
    ///valid for a particular resource or set of resources.
    ///
    ///Populated by the system. Read-only. Value must be treated as opaque by clients and . More
    ///info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#concurrency-control-and-consistency
    @JsonKey(name: "resourceVersion")
    String? resourceVersion;
    
    ///Deprecated: selfLink is a legacy read-only field that is no longer populated by the
    ///system.
    @JsonKey(name: "selfLink")
    String? selfLink;
    
    ///UID is the unique in time and space value for this object. It is typically generated by
    ///the server on successful creation of a resource and is not allowed to change on PUT
    ///operations.
    ///
    ///Populated by the system. Read-only. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
    @JsonKey(name: "uid")
    String? uid;

    IoK8SApimachineryPkgApisMetaV1ObjectMeta({
        this.annotations,
        this.creationTimestamp,
        this.deletionGracePeriodSeconds,
        this.deletionTimestamp,
        this.finalizers,
        this.generateName,
        this.generation,
        this.labels,
        this.managedFields,
        this.name,
        this.namespace,
        this.ownerReferences,
        this.resourceVersion,
        this.selfLink,
        this.uid,
    });

    factory IoK8SApimachineryPkgApisMetaV1ObjectMeta.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ObjectMetaFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ObjectMetaToJson(this);
}


///ManagedFieldsEntry is a workflow-id, a FieldSet and the group version of the resource
///that the fieldset applies to.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry {
    
    ///APIVersion defines the version of this resource that this field set applies to. The
    ///format is "group/version" just like the top-level APIVersion field. It is necessary to
    ///track the version of a field set because it cannot be automatically converted.
    @JsonKey(name: "apiVersion")
    String? apiVersion;
    
    ///FieldsType is the discriminator for the different fields format and version. There is
    ///currently only one possible value: "FieldsV1"
    @JsonKey(name: "fieldsType")
    String? fieldsType;
    
    ///FieldsV1 holds the first JSON version format as described in the "FieldsV1" type.
    @JsonKey(name: "fieldsV1")
    Map<String, dynamic>? fieldsV1;
    
    ///Manager is an identifier of the workflow managing these fields.
    @JsonKey(name: "manager")
    String? manager;
    
    ///Operation is the type of operation which lead to this ManagedFieldsEntry being created.
    ///The only valid values for this field are 'Apply' and 'Update'.
    @JsonKey(name: "operation")
    String? operation;
    
    ///Subresource is the name of the subresource used to update that object, or empty string if
    ///the object was updated through the main resource. The value of this field is used to
    ///distinguish between managers, even if they share the same name. For example, a status
    ///update will be distinct from a regular update using the same manager name. Note that the
    ///APIVersion field is not related to the Subresource field and it always corresponds to the
    ///version of the main resource.
    @JsonKey(name: "subresource")
    String? subresource;
    
    ///Time is the timestamp of when the ManagedFields entry was added. The timestamp will also
    ///be updated if a field is added, the manager changes any of the owned fields value or
    ///removes a field. The timestamp does not update when a field is removed from the entry
    ///because another manager took it over.
    @JsonKey(name: "time")
    DateTime? time;

    IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry({
        this.apiVersion,
        this.fieldsType,
        this.fieldsV1,
        this.manager,
        this.operation,
        this.subresource,
        this.time,
    });

    factory IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntry.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1ManagedFieldsEntryToJson(this);
}


///OwnerReference contains enough information to let you identify an owning object. An
///owning object must be in the same namespace as the dependent, or be cluster-scoped, so
///there is no namespace field.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1OwnerReference {
    
    ///API version of the referent.
    @JsonKey(name: "apiVersion")
    String apiVersion;
    
    ///If true, AND if the owner has the "foregroundDeletion" finalizer, then the owner cannot
    ///be deleted from the key-value store until this reference is removed. See
    ///https://kubernetes.io/docs/concepts/architecture/garbage-collection/#foreground-deletion
    ///for how the garbage collector interacts with this field and enforces the foreground
    ///deletion. Defaults to false. To set this field, a user needs "delete" permission of the
    ///owner, otherwise 422 (Unprocessable Entity) will be returned.
    @JsonKey(name: "blockOwnerDeletion")
    bool? blockOwnerDeletion;
    
    ///If true, this reference points to the managing controller.
    @JsonKey(name: "controller")
    bool? controller;
    
    ///Kind of the referent. More info:
    ///https://git.k8s.io/community/contributors/devel/sig-architecture/api-conventions.md#types-kinds
    @JsonKey(name: "kind")
    String kind;
    
    ///Name of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#names
    @JsonKey(name: "name")
    String name;
    
    ///UID of the referent. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names#uids
    @JsonKey(name: "uid")
    String uid;

    IoK8SApimachineryPkgApisMetaV1OwnerReference({
        required this.apiVersion,
        this.blockOwnerDeletion,
        this.controller,
        required this.kind,
        required this.name,
        required this.uid,
    });

    factory IoK8SApimachineryPkgApisMetaV1OwnerReference.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1OwnerReferenceToJson(this);
}


///The specification for the PersistentVolumeClaim. The entire content is copied unchanged
///into the PVC that gets created from this template. The same fields as in a
///PersistentVolumeClaim are also valid here.
///
///PersistentVolumeClaimSpec describes the common attributes of storage devices and allows a
///Source for provider-specific attributes
@JsonSerializable()
class IoK8SApiCoreV1PersistentVolumeClaimSpec {
    
    ///accessModes contains the desired access modes the volume should have. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#access-modes-1
    @JsonKey(name: "accessModes")
    List<String>? accessModes;
    
    ///dataSource field can be used to specify either: * An existing VolumeSnapshot object
    ///(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the
    ///provisioner or an external controller can support the specified data source, it will
    ///create a new volume based on the contents of the specified data source. When the
    ///AnyVolumeDataSource feature gate is enabled, dataSource contents will be copied to
    ///dataSourceRef, and dataSourceRef contents will be copied to dataSource when
    ///dataSourceRef.namespace is not specified. If the namespace is specified, then
    ///dataSourceRef will not be copied to dataSource.
    @JsonKey(name: "dataSource")
    IoK8SApiCoreV1TypedLocalObjectReference? dataSource;
    
    ///dataSourceRef specifies the object from which to populate the volume with data, if a
    ///non-empty volume is desired. This may be any object from a non-empty API group (non core
    ///object) or a PersistentVolumeClaim object. When this field is specified, volume binding
    ///will only succeed if the type of the specified object matches some installed volume
    ///populator or dynamic provisioner. This field will replace the functionality of the
    ///dataSource field and as such if both fields are non-empty, they must have the same value.
    ///For backwards compatibility, when namespace isn't specified in dataSourceRef, both fields
    ///(dataSource and dataSourceRef) will be set to the same value automatically if one of them
    ///is empty and the other is non-empty. When namespace is specified in dataSourceRef,
    ///dataSource isn't set to the same value and must be empty. There are three important
    ///differences between dataSource and dataSourceRef: * While dataSource only allows two
    ///specific types of objects, dataSourceRef
    ///allows any non-core object, as well as PersistentVolumeClaim objects.
    ///* While dataSource ignores disallowed values (dropping them), dataSourceRef
    ///preserves all values, and generates an error if a disallowed value is
    ///specified.
    ///* While dataSource only allows local objects, dataSourceRef allows objects
    ///in any namespaces.
    ///(Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
    ///(Alpha) Using the namespace field of dataSourceRef requires the
    ///CrossNamespaceVolumeDataSource feature gate to be enabled.
    @JsonKey(name: "dataSourceRef")
    IoK8SApiCoreV1TypedObjectReference? dataSourceRef;
    
    ///resources represents the minimum resources the volume should have. If
    ///RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource
    ///requirements that are lower than previous value but must still be higher than capacity
    ///recorded in the status field of the claim. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
    @JsonKey(name: "resources")
    IoK8SApiCoreV1VolumeResourceRequirements? resources;
    
    ///selector is a label query over volumes to consider for binding.
    @JsonKey(name: "selector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? selector;
    
    ///storageClassName is the name of the StorageClass required by the claim. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#class-1
    @JsonKey(name: "storageClassName")
    String? storageClassName;
    
    ///volumeAttributesClassName may be used to set the VolumeAttributesClass used by this
    ///claim. If specified, the CSI driver will create or update the volume with the attributes
    ///defined in the corresponding VolumeAttributesClass. This has a different purpose than
    ///storageClassName, it can be changed after the claim is created. An empty string value
    ///means that no VolumeAttributesClass will be applied to the claim but it's not allowed to
    ///reset this field to empty string once it is set. If unspecified and the
    ///PersistentVolumeClaim is unbound, the default VolumeAttributesClass will be set by the
    ///persistentvolume controller if it exists. If the resource referred to by
    ///volumeAttributesClass does not exist, this PersistentVolumeClaim will be set to a Pending
    ///state, as reflected by the modifyVolumeStatus field, until such as a resource exists.
    ///More info: https://kubernetes.io/docs/concepts/storage/volume-attributes-classes/ (Alpha)
    ///Using this field requires the VolumeAttributesClass feature gate to be enabled.
    @JsonKey(name: "volumeAttributesClassName")
    String? volumeAttributesClassName;
    
    ///volumeMode defines what type of volume is required by the claim. Value of Filesystem is
    ///implied when not included in claim spec.
    @JsonKey(name: "volumeMode")
    String? volumeMode;
    
    ///volumeName is the binding reference to the PersistentVolume backing this claim.
    @JsonKey(name: "volumeName")
    String? volumeName;

    IoK8SApiCoreV1PersistentVolumeClaimSpec({
        this.accessModes,
        this.dataSource,
        this.dataSourceRef,
        this.resources,
        this.selector,
        this.storageClassName,
        this.volumeAttributesClassName,
        this.volumeMode,
        this.volumeName,
    });

    factory IoK8SApiCoreV1PersistentVolumeClaimSpec.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PersistentVolumeClaimSpecFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PersistentVolumeClaimSpecToJson(this);
}


///dataSource field can be used to specify either: * An existing VolumeSnapshot object
///(snapshot.storage.k8s.io/VolumeSnapshot) * An existing PVC (PersistentVolumeClaim) If the
///provisioner or an external controller can support the specified data source, it will
///create a new volume based on the contents of the specified data source. When the
///AnyVolumeDataSource feature gate is enabled, dataSource contents will be copied to
///dataSourceRef, and dataSourceRef contents will be copied to dataSource when
///dataSourceRef.namespace is not specified. If the namespace is specified, then
///dataSourceRef will not be copied to dataSource.
///
///TypedLocalObjectReference contains enough information to let you locate the typed
///referenced object inside the same namespace.
@JsonSerializable()
class IoK8SApiCoreV1TypedLocalObjectReference {
    
    ///APIGroup is the group for the resource being referenced. If APIGroup is not specified,
    ///the specified Kind must be in the core API group. For any other third-party types,
    ///APIGroup is required.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced
    @JsonKey(name: "kind")
    String kind;
    
    ///Name is the name of resource being referenced
    @JsonKey(name: "name")
    String name;

    IoK8SApiCoreV1TypedLocalObjectReference({
        this.apiGroup,
        required this.kind,
        required this.name,
    });

    factory IoK8SApiCoreV1TypedLocalObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TypedLocalObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TypedLocalObjectReferenceToJson(this);
}


///dataSourceRef specifies the object from which to populate the volume with data, if a
///non-empty volume is desired. This may be any object from a non-empty API group (non core
///object) or a PersistentVolumeClaim object. When this field is specified, volume binding
///will only succeed if the type of the specified object matches some installed volume
///populator or dynamic provisioner. This field will replace the functionality of the
///dataSource field and as such if both fields are non-empty, they must have the same value.
///For backwards compatibility, when namespace isn't specified in dataSourceRef, both fields
///(dataSource and dataSourceRef) will be set to the same value automatically if one of them
///is empty and the other is non-empty. When namespace is specified in dataSourceRef,
///dataSource isn't set to the same value and must be empty. There are three important
///differences between dataSource and dataSourceRef: * While dataSource only allows two
///specific types of objects, dataSourceRef
///allows any non-core object, as well as PersistentVolumeClaim objects.
///* While dataSource ignores disallowed values (dropping them), dataSourceRef
///preserves all values, and generates an error if a disallowed value is
///specified.
///* While dataSource only allows local objects, dataSourceRef allows objects
///in any namespaces.
///(Beta) Using this field requires the AnyVolumeDataSource feature gate to be enabled.
///(Alpha) Using the namespace field of dataSourceRef requires the
///CrossNamespaceVolumeDataSource feature gate to be enabled.
@JsonSerializable()
class IoK8SApiCoreV1TypedObjectReference {
    
    ///APIGroup is the group for the resource being referenced. If APIGroup is not specified,
    ///the specified Kind must be in the core API group. For any other third-party types,
    ///APIGroup is required.
    @JsonKey(name: "apiGroup")
    String? apiGroup;
    
    ///Kind is the type of resource being referenced
    @JsonKey(name: "kind")
    String kind;
    
    ///Name is the name of resource being referenced
    @JsonKey(name: "name")
    String name;
    
    ///Namespace is the namespace of resource being referenced Note that when a namespace is
    ///specified, a gateway.networking.k8s.io/ReferenceGrant object is required in the referent
    ///namespace to allow that namespace's owner to accept the reference. See the ReferenceGrant
    ///documentation for details. (Alpha) This field requires the CrossNamespaceVolumeDataSource
    ///feature gate to be enabled.
    @JsonKey(name: "namespace")
    String? namespace;

    IoK8SApiCoreV1TypedObjectReference({
        this.apiGroup,
        required this.kind,
        required this.name,
        this.namespace,
    });

    factory IoK8SApiCoreV1TypedObjectReference.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1TypedObjectReferenceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1TypedObjectReferenceToJson(this);
}


///resources represents the minimum resources the volume should have. If
///RecoverVolumeExpansionFailure feature is enabled users are allowed to specify resource
///requirements that are lower than previous value but must still be higher than capacity
///recorded in the status field of the claim. More info:
///https://kubernetes.io/docs/concepts/storage/persistent-volumes#resources
///
///VolumeResourceRequirements describes the storage resource requirements for a volume.
@JsonSerializable()
class IoK8SApiCoreV1VolumeResourceRequirements {
    
    ///Limits describes the maximum amount of compute resources allowed. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "limits")
    Map<String, dynamic>? limits;
    
    ///Requests describes the minimum amount of compute resources required. If Requests is
    ///omitted for a container, it defaults to Limits if that is explicitly specified, otherwise
    ///to an implementation-defined value. Requests cannot exceed Limits. More info:
    ///https://kubernetes.io/docs/concepts/configuration/manage-resources-containers/
    @JsonKey(name: "requests")
    Map<String, dynamic>? requests;

    IoK8SApiCoreV1VolumeResourceRequirements({
        this.limits,
        this.requests,
    });

    factory IoK8SApiCoreV1VolumeResourceRequirements.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeResourceRequirementsFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeResourceRequirementsToJson(this);
}


///selector is a label query over volumes to consider for binding.
///
///A label selector is a label query over a set of resources. The result of matchLabels and
///matchExpressions are ANDed. An empty label selector matches all objects. A null label
///selector matches no objects.
///
///Select all ClusterTrustBundles that match this label selector.  Only has effect if
///signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match
///nothing".  If set but empty, interpreted as "match everything".
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1LabelSelector {
    
    ///matchExpressions is a list of label selector requirements. The requirements are ANDed.
    @JsonKey(name: "matchExpressions")
    List<IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement>? matchExpressions;
    
    ///matchLabels is a map of {key,value} pairs. A single {key,value} in the matchLabels map is
    ///equivalent to an element of matchExpressions, whose key field is "key", the operator is
    ///"In", and the values array contains only "value". The requirements are ANDed.
    @JsonKey(name: "matchLabels")
    Map<String, String>? matchLabels;

    IoK8SApimachineryPkgApisMetaV1LabelSelector({
        this.matchExpressions,
        this.matchLabels,
    });

    factory IoK8SApimachineryPkgApisMetaV1LabelSelector.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorToJson(this);
}


///A label selector requirement is a selector that contains values, a key, and an operator
///that relates the key and values.
@JsonSerializable()
class IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement {
    
    ///key is the label key that the selector applies to.
    @JsonKey(name: "key")
    String key;
    
    ///operator represents a key's relationship to a set of values. Valid operators are In,
    ///NotIn, Exists and DoesNotExist.
    @JsonKey(name: "operator")
    String ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator;
    
    ///values is an array of string values. If the operator is In or NotIn, the values array
    ///must be non-empty. If the operator is Exists or DoesNotExist, the values array must be
    ///empty. This array is replaced during a strategic merge patch.
    @JsonKey(name: "values")
    List<String>? values;

    IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement({
        required this.key,
        required this.ioK8SApimachineryPkgApisMetaV1LabelSelectorRequirementOperator,
        this.values,
    });

    factory IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirement.fromJson(Map<String, dynamic> json) => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApimachineryPkgApisMetaV1LabelSelectorRequirementToJson(this);
}


///fc represents a Fibre Channel resource that is attached to a kubelet's host machine and
///then exposed to the pod.
///
///Represents a Fibre Channel volume. Fibre Channel volumes can only be mounted as
///read/write once. Fibre Channel volumes support ownership management and SELinux
///relabeling.
@JsonSerializable()
class IoK8SApiCoreV1FcVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///lun is Optional: FC target lun number
    @JsonKey(name: "lun")
    int? lun;
    
    ///readOnly is Optional: Defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///targetWWNs is Optional: FC target worldwide names (WWNs)
    @JsonKey(name: "targetWWNs")
    List<String>? targetWwNs;
    
    ///wwids Optional: FC volume world wide identifiers (wwids) Either wwids or combination of
    ///targetWWNs and lun must be set, but not both simultaneously.
    @JsonKey(name: "wwids")
    List<String>? wwids;

    IoK8SApiCoreV1FcVolumeSource({
        this.fsType,
        this.lun,
        this.readOnly,
        this.targetWwNs,
        this.wwids,
    });

    factory IoK8SApiCoreV1FcVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1FcVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1FcVolumeSourceToJson(this);
}


///flexVolume represents a generic volume resource that is provisioned/attached using an
///exec based plugin.
///
///FlexVolume represents a generic volume resource that is provisioned/attached using an
///exec based plugin.
@JsonSerializable()
class IoK8SApiCoreV1FlexVolumeSource {
    
    ///driver is the name of the driver to use for this volume.
    @JsonKey(name: "driver")
    String driver;
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". The default filesystem depends on FlexVolume
    ///script.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///options is Optional: this field holds extra command options if any.
    @JsonKey(name: "options")
    Map<String, String>? options;
    
    ///readOnly is Optional: defaults to false (read/write). ReadOnly here will force the
    ///ReadOnly setting in VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is Optional: secretRef is reference to the secret object containing sensitive
    ///information to pass to the plugin scripts. This may be empty if no secret object is
    ///specified. If the secret object contains more than one secret, all secrets are passed to
    ///the plugin scripts.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;

    IoK8SApiCoreV1FlexVolumeSource({
        required this.driver,
        this.fsType,
        this.options,
        this.readOnly,
        this.secretRef,
    });

    factory IoK8SApiCoreV1FlexVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1FlexVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1FlexVolumeSourceToJson(this);
}


///flocker represents a Flocker volume attached to a kubelet's host machine. This depends on
///the Flocker control service being running
///
///Represents a Flocker volume mounted by the Flocker agent. One and only one of datasetName
///and datasetUUID should be set. Flocker volumes do not support ownership management or
///SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1FlockerVolumeSource {
    
    ///datasetName is Name of the dataset stored as metadata -> name on the dataset for Flocker
    ///should be considered as deprecated
    @JsonKey(name: "datasetName")
    String? datasetName;
    
    ///datasetUUID is the UUID of the dataset. This is unique identifier of a Flocker dataset
    @JsonKey(name: "datasetUUID")
    String? datasetUuid;

    IoK8SApiCoreV1FlockerVolumeSource({
        this.datasetName,
        this.datasetUuid,
    });

    factory IoK8SApiCoreV1FlockerVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1FlockerVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1FlockerVolumeSourceToJson(this);
}


///gcePersistentDisk represents a GCE Disk resource that is attached to a kubelet's host
///machine and then exposed to the pod. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
///
///Represents a Persistent Disk resource in Google Compute Engine.
///
///A GCE PD must exist before mounting to a container. The disk must also be in the same GCE
///project and zone as the kubelet. A GCE PD can only be mounted as read/write once or
///read-only many times. GCE PDs support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1GcePersistentDiskVolumeSource {
    
    ///fsType is filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///partition is the partition in the volume that you want to mount. If omitted, the default
    ///is to mount by volume name. Examples: For volume /dev/sda1, you specify the partition as
    ///"1". Similarly, the volume partition for /dev/sda is "0" (or you can leave the property
    ///empty). More info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "partition")
    int? partition;
    
    ///pdName is unique name of the PD resource in GCE. Used to identify the disk in GCE. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "pdName")
    String pdName;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More
    ///info: https://kubernetes.io/docs/concepts/storage/volumes#gcepersistentdisk
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1GcePersistentDiskVolumeSource({
        this.fsType,
        this.partition,
        required this.pdName,
        this.readOnly,
    });

    factory IoK8SApiCoreV1GcePersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GcePersistentDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GcePersistentDiskVolumeSourceToJson(this);
}


///gitRepo represents a git repository at a particular revision. DEPRECATED: GitRepo is
///deprecated. To provision a container with a git repo, mount an EmptyDir into an
///InitContainer that clones the repo using git, then mount the EmptyDir into the Pod's
///container.
///
///Represents a volume that is populated with the contents of a git repository. Git repo
///volumes do not support ownership management. Git repo volumes support SELinux
///relabeling.
///
///DEPRECATED: GitRepo is deprecated. To provision a container with a git repo, mount an
///EmptyDir into an InitContainer that clones the repo using git, then mount the EmptyDir
///into the Pod's container.
@JsonSerializable()
class IoK8SApiCoreV1GitRepoVolumeSource {
    
    ///directory is the target directory name. Must not contain or start with '..'.  If '.' is
    ///supplied, the volume directory will be the git repository.  Otherwise, if specified, the
    ///volume will contain the git repository in the subdirectory with the given name.
    @JsonKey(name: "directory")
    String? directory;
    
    ///repository is the URL
    @JsonKey(name: "repository")
    String repository;
    
    ///revision is the commit hash for the specified revision.
    @JsonKey(name: "revision")
    String? revision;

    IoK8SApiCoreV1GitRepoVolumeSource({
        this.directory,
        required this.repository,
        this.revision,
    });

    factory IoK8SApiCoreV1GitRepoVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GitRepoVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GitRepoVolumeSourceToJson(this);
}


///glusterfs represents a Glusterfs mount on the host that shares a pod's lifetime. More
///info: https://examples.k8s.io/volumes/glusterfs/README.md
///
///Represents a Glusterfs mount that lasts the lifetime of a pod. Glusterfs volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1GlusterfsVolumeSource {
    
    ///endpoints is the endpoint name that details Glusterfs topology. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "endpoints")
    String endpoints;
    
    ///path is the Glusterfs volume path. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "path")
    String path;
    
    ///readOnly here will force the Glusterfs volume to be mounted with read-only permissions.
    ///Defaults to false. More info:
    ///https://examples.k8s.io/volumes/glusterfs/README.md#create-a-pod
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1GlusterfsVolumeSource({
        required this.endpoints,
        required this.path,
        this.readOnly,
    });

    factory IoK8SApiCoreV1GlusterfsVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1GlusterfsVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1GlusterfsVolumeSourceToJson(this);
}


///hostPath represents a pre-existing file or directory on the host machine that is directly
///exposed to the container. This is generally used for system agents or other privileged
///things that are allowed to see the host machine. Most containers will NOT need this. More
///info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
///
///Represents a host path mapped into a pod. Host path volumes do not support ownership
///management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1HostPathVolumeSource {
    
    ///path of the directory on the host. If the path is a symlink, it will follow the link to
    ///the real path. More info: https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "path")
    String path;
    
    ///type for HostPath Volume Defaults to "" More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#hostpath
    @JsonKey(name: "type")
    String? type;

    IoK8SApiCoreV1HostPathVolumeSource({
        required this.path,
        this.type,
    });

    factory IoK8SApiCoreV1HostPathVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1HostPathVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1HostPathVolumeSourceToJson(this);
}


///iscsi represents an ISCSI Disk resource that is attached to a kubelet's host machine and
///then exposed to the pod. More info: https://examples.k8s.io/volumes/iscsi/README.md
///
///Represents an ISCSI disk. ISCSI volumes can only be mounted as read/write once. ISCSI
///volumes support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1IscsiVolumeSource {
    
    ///chapAuthDiscovery defines whether support iSCSI Discovery CHAP authentication
    @JsonKey(name: "chapAuthDiscovery")
    bool? chapAuthDiscovery;
    
    ///chapAuthSession defines whether support iSCSI Session CHAP authentication
    @JsonKey(name: "chapAuthSession")
    bool? chapAuthSession;
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#iscsi
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///initiatorName is the custom iSCSI Initiator Name. If initiatorName is specified with
    ///iscsiInterface simultaneously, new iSCSI interface <target portal>:<volume name> will be
    ///created for the connection.
    @JsonKey(name: "initiatorName")
    String? initiatorName;
    
    ///iqn is the target iSCSI Qualified Name.
    @JsonKey(name: "iqn")
    String iqn;
    
    ///iscsiInterface is the interface Name that uses an iSCSI transport. Defaults to 'default'
    ///(tcp).
    @JsonKey(name: "iscsiInterface")
    String? iscsiInterface;
    
    ///lun represents iSCSI Target Lun number.
    @JsonKey(name: "lun")
    int lun;
    
    ///portals is the iSCSI Target Portal List. The portal is either an IP or ip_addr:port if
    ///the port is other than default (typically TCP ports 860 and 3260).
    @JsonKey(name: "portals")
    List<String>? portals;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is the CHAP Secret for iSCSI target and initiator authentication
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///targetPortal is iSCSI Target Portal. The Portal is either an IP or ip_addr:port if the
    ///port is other than default (typically TCP ports 860 and 3260).
    @JsonKey(name: "targetPortal")
    String targetPortal;

    IoK8SApiCoreV1IscsiVolumeSource({
        this.chapAuthDiscovery,
        this.chapAuthSession,
        this.fsType,
        this.initiatorName,
        required this.iqn,
        this.iscsiInterface,
        required this.lun,
        this.portals,
        this.readOnly,
        this.secretRef,
        required this.targetPortal,
    });

    factory IoK8SApiCoreV1IscsiVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1IscsiVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1IscsiVolumeSourceToJson(this);
}


///nfs represents an NFS mount on the host that shares a pod's lifetime More info:
///https://kubernetes.io/docs/concepts/storage/volumes#nfs
///
///Represents an NFS mount that lasts the lifetime of a pod. NFS volumes do not support
///ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1NfsVolumeSource {
    
    ///path that is exported by the NFS server. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "path")
    String path;
    
    ///readOnly here will force the NFS export to be mounted with read-only permissions.
    ///Defaults to false. More info: https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///server is the hostname or IP address of the NFS server. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#nfs
    @JsonKey(name: "server")
    String server;

    IoK8SApiCoreV1NfsVolumeSource({
        required this.path,
        this.readOnly,
        required this.server,
    });

    factory IoK8SApiCoreV1NfsVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1NfsVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1NfsVolumeSourceToJson(this);
}


///persistentVolumeClaimVolumeSource represents a reference to a PersistentVolumeClaim in
///the same namespace. More info:
///https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
///
///PersistentVolumeClaimVolumeSource references the user's PVC in the same namespace. This
///volume finds the bound PV and mounts that volume for the pod. A
///PersistentVolumeClaimVolumeSource is, essentially, a wrapper around another type of
///volume that is owned by someone else (the system).
@JsonSerializable()
class IoK8SApiCoreV1PersistentVolumeClaimVolumeSource {
    
    ///claimName is the name of a PersistentVolumeClaim in the same namespace as the pod using
    ///this volume. More info:
    ///https://kubernetes.io/docs/concepts/storage/persistent-volumes#persistentvolumeclaims
    @JsonKey(name: "claimName")
    String claimName;
    
    ///readOnly Will force the ReadOnly setting in VolumeMounts. Default false.
    @JsonKey(name: "readOnly")
    bool? readOnly;

    IoK8SApiCoreV1PersistentVolumeClaimVolumeSource({
        required this.claimName,
        this.readOnly,
    });

    factory IoK8SApiCoreV1PersistentVolumeClaimVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PersistentVolumeClaimVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PersistentVolumeClaimVolumeSourceToJson(this);
}


///photonPersistentDisk represents a PhotonController persistent disk attached and mounted
///on kubelets host machine
///
///Represents a Photon Controller persistent disk resource.
@JsonSerializable()
class IoK8SApiCoreV1PhotonPersistentDiskVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///pdID is the ID that identifies Photon Controller persistent disk
    @JsonKey(name: "pdID")
    String pdId;

    IoK8SApiCoreV1PhotonPersistentDiskVolumeSource({
        this.fsType,
        required this.pdId,
    });

    factory IoK8SApiCoreV1PhotonPersistentDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PhotonPersistentDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PhotonPersistentDiskVolumeSourceToJson(this);
}


///portworxVolume represents a portworx volume attached and mounted on kubelets host
///machine
///
///PortworxVolumeSource represents a Portworx volume resource.
@JsonSerializable()
class IoK8SApiCoreV1PortworxVolumeSource {
    
    ///fSType represents the filesystem type to mount Must be a filesystem type supported by the
    ///host operating system. Ex. "ext4", "xfs". Implicitly inferred to be "ext4" if unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///volumeID uniquely identifies a Portworx volume
    @JsonKey(name: "volumeID")
    String volumeId;

    IoK8SApiCoreV1PortworxVolumeSource({
        this.fsType,
        this.readOnly,
        required this.volumeId,
    });

    factory IoK8SApiCoreV1PortworxVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1PortworxVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1PortworxVolumeSourceToJson(this);
}


///projected items for all in one resources secrets, configmaps, and downward API
///
///Represents a projected volume source
@JsonSerializable()
class IoK8SApiCoreV1ProjectedVolumeSource {
    
    ///defaultMode are the mode bits used to set permissions on created files by default. Must
    ///be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML
    ///accepts both octal and decimal values, JSON requires decimal values for mode bits.
    ///Directories within the path are not affected by this setting. This might be in conflict
    ///with other options that affect the file mode, like fsGroup, and the result can be other
    ///mode bits set.
    @JsonKey(name: "defaultMode")
    int? defaultMode;
    
    ///sources is the list of volume projections
    @JsonKey(name: "sources")
    List<IoK8SApiCoreV1VolumeProjection>? sources;

    IoK8SApiCoreV1ProjectedVolumeSource({
        this.defaultMode,
        this.sources,
    });

    factory IoK8SApiCoreV1ProjectedVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ProjectedVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ProjectedVolumeSourceToJson(this);
}


///Projection that may be projected along with other supported volume types
@JsonSerializable()
class IoK8SApiCoreV1VolumeProjection {
    
    ///ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of
    ///ClusterTrustBundle objects in an auto-updating file.
    ///
    ///Alpha, gated by the ClusterTrustBundleProjection feature gate.
    ///
    ///ClusterTrustBundle objects can either be selected by name, or by the combination of
    ///signer name and a label selector.
    ///
    ///Kubelet performs aggressive normalization of the PEM contents written into the pod
    ///filesystem.  Esoteric PEM features such as inter-block comments and block headers are
    ///stripped.  Certificates are deduplicated. The ordering of certificates within the file is
    ///arbitrary, and Kubelet may change the order over time.
    @JsonKey(name: "clusterTrustBundle")
    IoK8SApiCoreV1ClusterTrustBundleProjection? clusterTrustBundle;
    
    ///configMap information about the configMap data to project
    @JsonKey(name: "configMap")
    IoK8SApiCoreV1ConfigMapProjection? configMap;
    
    ///downwardAPI information about the downwardAPI data to project
    @JsonKey(name: "downwardAPI")
    IoK8SApiCoreV1DownwardApiProjection? downwardApi;
    
    ///secret information about the secret data to project
    @JsonKey(name: "secret")
    IoK8SApiCoreV1SecretProjection? secret;
    
    ///serviceAccountToken is information about the serviceAccountToken data to project
    @JsonKey(name: "serviceAccountToken")
    IoK8SApiCoreV1ServiceAccountTokenProjection? serviceAccountToken;

    IoK8SApiCoreV1VolumeProjection({
        this.clusterTrustBundle,
        this.configMap,
        this.downwardApi,
        this.secret,
        this.serviceAccountToken,
    });

    factory IoK8SApiCoreV1VolumeProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VolumeProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VolumeProjectionToJson(this);
}


///ClusterTrustBundle allows a pod to access the `.spec.trustBundle` field of
///ClusterTrustBundle objects in an auto-updating file.
///
///Alpha, gated by the ClusterTrustBundleProjection feature gate.
///
///ClusterTrustBundle objects can either be selected by name, or by the combination of
///signer name and a label selector.
///
///Kubelet performs aggressive normalization of the PEM contents written into the pod
///filesystem.  Esoteric PEM features such as inter-block comments and block headers are
///stripped.  Certificates are deduplicated. The ordering of certificates within the file is
///arbitrary, and Kubelet may change the order over time.
///
///ClusterTrustBundleProjection describes how to select a set of ClusterTrustBundle objects
///and project their contents into the pod filesystem.
@JsonSerializable()
class IoK8SApiCoreV1ClusterTrustBundleProjection {
    
    ///Select all ClusterTrustBundles that match this label selector.  Only has effect if
    ///signerName is set.  Mutually-exclusive with name.  If unset, interpreted as "match
    ///nothing".  If set but empty, interpreted as "match everything".
    @JsonKey(name: "labelSelector")
    IoK8SApimachineryPkgApisMetaV1LabelSelector? labelSelector;
    
    ///Select a single ClusterTrustBundle by object name.  Mutually-exclusive with signerName
    ///and labelSelector.
    @JsonKey(name: "name")
    String? name;
    
    ///If true, don't block pod startup if the referenced ClusterTrustBundle(s) aren't
    ///available.  If using name, then the named ClusterTrustBundle is allowed not to exist.  If
    ///using signerName, then the combination of signerName and labelSelector is allowed to
    ///match zero ClusterTrustBundles.
    @JsonKey(name: "optional")
    bool? optional;
    
    ///Relative path from the volume root to write the bundle.
    @JsonKey(name: "path")
    String path;
    
    ///Select all ClusterTrustBundles that match this signer name. Mutually-exclusive with
    ///name.  The contents of all selected ClusterTrustBundles will be unified and deduplicated.
    @JsonKey(name: "signerName")
    String? signerName;

    IoK8SApiCoreV1ClusterTrustBundleProjection({
        this.labelSelector,
        this.name,
        this.optional,
        required this.path,
        this.signerName,
    });

    factory IoK8SApiCoreV1ClusterTrustBundleProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ClusterTrustBundleProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ClusterTrustBundleProjectionToJson(this);
}


///configMap information about the configMap data to project
///
///Adapts a ConfigMap into a projected volume.
///
///The contents of the target ConfigMap's Data field will be presented in a projected volume
///as files using the keys in the Data field as the file names, unless the items element is
///populated with specific mappings of keys to paths. Note that this is identical to a
///configmap volume source without the default mode.
@JsonSerializable()
class IoK8SApiCoreV1ConfigMapProjection {
    
    ///items if unspecified, each key-value pair in the Data field of the referenced ConfigMap
    ///will be projected into the volume as a file whose name is the key and content is the
    ///value. If specified, the listed keys will be projected into the specified paths, and
    ///unlisted keys will not be present. If a key is specified which is not present in the
    ///ConfigMap, the volume setup will error unless it is marked optional. Paths must be
    ///relative and may not contain the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///optional specify whether the ConfigMap or its keys must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1ConfigMapProjection({
        this.items,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1ConfigMapProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ConfigMapProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ConfigMapProjectionToJson(this);
}


///downwardAPI information about the downwardAPI data to project
///
///Represents downward API info for projecting into a projected volume. Note that this is
///identical to a downwardAPI volume source without the default mode.
@JsonSerializable()
class IoK8SApiCoreV1DownwardApiProjection {
    
    ///Items is a list of DownwardAPIVolume file
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1DownwardApiVolumeFile>? items;

    IoK8SApiCoreV1DownwardApiProjection({
        this.items,
    });

    factory IoK8SApiCoreV1DownwardApiProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1DownwardApiProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1DownwardApiProjectionToJson(this);
}


///secret information about the secret data to project
///
///Adapts a secret into a projected volume.
///
///The contents of the target Secret's Data field will be presented in a projected volume as
///files using the keys in the Data field as the file names. Note that this is identical to
///a secret volume source without the default mode.
@JsonSerializable()
class IoK8SApiCoreV1SecretProjection {
    
    ///items if unspecified, each key-value pair in the Data field of the referenced Secret will
    ///be projected into the volume as a file whose name is the key and content is the value. If
    ///specified, the listed keys will be projected into the specified paths, and unlisted keys
    ///will not be present. If a key is specified which is not present in the Secret, the volume
    ///setup will error unless it is marked optional. Paths must be relative and may not contain
    ///the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///Name of the referent. This field is effectively required, but due to backwards
    ///compatibility is allowed to be empty. Instances of this type with an empty value here are
    ///almost certainly wrong. More info:
    ///https://kubernetes.io/docs/concepts/overview/working-with-objects/names/#names
    @JsonKey(name: "name")
    String? name;
    
    ///optional field specify whether the Secret or its key must be defined
    @JsonKey(name: "optional")
    bool? optional;

    IoK8SApiCoreV1SecretProjection({
        this.items,
        this.name,
        this.optional,
    });

    factory IoK8SApiCoreV1SecretProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretProjectionToJson(this);
}


///serviceAccountToken is information about the serviceAccountToken data to project
///
///ServiceAccountTokenProjection represents a projected service account token volume. This
///projection can be used to insert a service account token into the pods runtime filesystem
///for use against APIs (Kubernetes API Server or otherwise).
@JsonSerializable()
class IoK8SApiCoreV1ServiceAccountTokenProjection {
    
    ///audience is the intended audience of the token. A recipient of a token must identify
    ///itself with an identifier specified in the audience of the token, and otherwise should
    ///reject the token. The audience defaults to the identifier of the apiserver.
    @JsonKey(name: "audience")
    String? audience;
    
    ///expirationSeconds is the requested duration of validity of the service account token. As
    ///the token approaches expiration, the kubelet volume plugin will proactively rotate the
    ///service account token. The kubelet will start trying to rotate the token if the token is
    ///older than 80 percent of its time to live or if the token is older than 24 hours.Defaults
    ///to 1 hour and must be at least 10 minutes.
    @JsonKey(name: "expirationSeconds")
    int? expirationSeconds;
    
    ///path is the path relative to the mount point of the file to project the token into.
    @JsonKey(name: "path")
    String path;

    IoK8SApiCoreV1ServiceAccountTokenProjection({
        this.audience,
        this.expirationSeconds,
        required this.path,
    });

    factory IoK8SApiCoreV1ServiceAccountTokenProjection.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ServiceAccountTokenProjectionFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ServiceAccountTokenProjectionToJson(this);
}


///quobyte represents a Quobyte mount on the host that shares a pod's lifetime
///
///Represents a Quobyte mount that lasts the lifetime of a pod. Quobyte volumes do not
///support ownership management or SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1QuobyteVolumeSource {
    
    ///group to map volume access to Default is no group
    @JsonKey(name: "group")
    String? group;
    
    ///readOnly here will force the Quobyte volume to be mounted with read-only permissions.
    ///Defaults to false.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///registry represents a single or multiple Quobyte Registry services specified as a string
    ///as host:port pair (multiple entries are separated with commas) which acts as the central
    ///registry for volumes
    @JsonKey(name: "registry")
    String registry;
    
    ///tenant owning the given Quobyte volume in the Backend Used with dynamically provisioned
    ///Quobyte volumes, value is set by the plugin
    @JsonKey(name: "tenant")
    String? tenant;
    
    ///user to map volume access to Defaults to serivceaccount user
    @JsonKey(name: "user")
    String? user;
    
    ///volume is a string that references an already created Quobyte volume by name.
    @JsonKey(name: "volume")
    String volume;

    IoK8SApiCoreV1QuobyteVolumeSource({
        this.group,
        this.readOnly,
        required this.registry,
        this.tenant,
        this.user,
        required this.volume,
    });

    factory IoK8SApiCoreV1QuobyteVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1QuobyteVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1QuobyteVolumeSourceToJson(this);
}


///rbd represents a Rados Block Device mount on the host that shares a pod's lifetime. More
///info: https://examples.k8s.io/volumes/rbd/README.md
///
///Represents a Rados Block Device mount that lasts the lifetime of a pod. RBD volumes
///support ownership management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1RbdVolumeSource {
    
    ///fsType is the filesystem type of the volume that you want to mount. Tip: Ensure that the
    ///filesystem type is supported by the host operating system. Examples: "ext4", "xfs",
    ///"ntfs". Implicitly inferred to be "ext4" if unspecified. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#rbd
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///image is the rados image name. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "image")
    String image;
    
    ///keyring is the path to key ring for RBDUser. Default is /etc/ceph/keyring. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "keyring")
    String? keyring;
    
    ///monitors is a collection of Ceph monitors. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "monitors")
    List<String> monitors;
    
    ///pool is the rados pool name. Default is rbd. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "pool")
    String? pool;
    
    ///readOnly here will force the ReadOnly setting in VolumeMounts. Defaults to false. More
    ///info: https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef is name of the authentication secret for RBDUser. If provided overrides
    ///keyring. Default is nil. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///user is the rados user name. Default is admin. More info:
    ///https://examples.k8s.io/volumes/rbd/README.md#how-to-use-it
    @JsonKey(name: "user")
    String? user;

    IoK8SApiCoreV1RbdVolumeSource({
        this.fsType,
        required this.image,
        this.keyring,
        required this.monitors,
        this.pool,
        this.readOnly,
        this.secretRef,
        this.user,
    });

    factory IoK8SApiCoreV1RbdVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1RbdVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1RbdVolumeSourceToJson(this);
}


///scaleIO represents a ScaleIO persistent volume attached and mounted on Kubernetes nodes.
///
///ScaleIOVolumeSource represents a persistent ScaleIO volume
@JsonSerializable()
class IoK8SApiCoreV1ScaleIoVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Default is "xfs".
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///gateway is the host address of the ScaleIO API Gateway.
    @JsonKey(name: "gateway")
    String gateway;
    
    ///protectionDomain is the name of the ScaleIO Protection Domain for the configured storage.
    @JsonKey(name: "protectionDomain")
    String? protectionDomain;
    
    ///readOnly Defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef references to the secret for ScaleIO user and other sensitive information. If
    ///this is not provided, Login operation will fail.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference secretRef;
    
    ///sslEnabled Flag enable/disable SSL communication with Gateway, default false
    @JsonKey(name: "sslEnabled")
    bool? sslEnabled;
    
    ///storageMode indicates whether the storage for a volume should be ThickProvisioned or
    ///ThinProvisioned. Default is ThinProvisioned.
    @JsonKey(name: "storageMode")
    String? storageMode;
    
    ///storagePool is the ScaleIO Storage Pool associated with the protection domain.
    @JsonKey(name: "storagePool")
    String? storagePool;
    
    ///system is the name of the storage system as configured in ScaleIO.
    @JsonKey(name: "system")
    String system;
    
    ///volumeName is the name of a volume already created in the ScaleIO system that is
    ///associated with this volume source.
    @JsonKey(name: "volumeName")
    String? volumeName;

    IoK8SApiCoreV1ScaleIoVolumeSource({
        this.fsType,
        required this.gateway,
        this.protectionDomain,
        this.readOnly,
        required this.secretRef,
        this.sslEnabled,
        this.storageMode,
        this.storagePool,
        required this.system,
        this.volumeName,
    });

    factory IoK8SApiCoreV1ScaleIoVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1ScaleIoVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1ScaleIoVolumeSourceToJson(this);
}


///secret represents a secret that should populate this volume. More info:
///https://kubernetes.io/docs/concepts/storage/volumes#secret
///
///Adapts a Secret into a volume.
///
///The contents of the target Secret's Data field will be presented in a volume as files
///using the keys in the Data field as the file names. Secret volumes support ownership
///management and SELinux relabeling.
@JsonSerializable()
class IoK8SApiCoreV1SecretVolumeSource {
    
    ///defaultMode is Optional: mode bits used to set permissions on created files by default.
    ///Must be an octal value between 0000 and 0777 or a decimal value between 0 and 511. YAML
    ///accepts both octal and decimal values, JSON requires decimal values for mode bits.
    ///Defaults to 0644. Directories within the path are not affected by this setting. This
    ///might be in conflict with other options that affect the file mode, like fsGroup, and the
    ///result can be other mode bits set.
    @JsonKey(name: "defaultMode")
    int? defaultMode;
    
    ///items If unspecified, each key-value pair in the Data field of the referenced Secret will
    ///be projected into the volume as a file whose name is the key and content is the value. If
    ///specified, the listed keys will be projected into the specified paths, and unlisted keys
    ///will not be present. If a key is specified which is not present in the Secret, the volume
    ///setup will error unless it is marked optional. Paths must be relative and may not contain
    ///the '..' path or start with '..'.
    @JsonKey(name: "items")
    List<IoK8SApiCoreV1KeyToPath>? items;
    
    ///optional field specify whether the Secret or its keys must be defined
    @JsonKey(name: "optional")
    bool? optional;
    
    ///secretName is the name of the secret in the pod's namespace to use. More info:
    ///https://kubernetes.io/docs/concepts/storage/volumes#secret
    @JsonKey(name: "secretName")
    String? secretName;

    IoK8SApiCoreV1SecretVolumeSource({
        this.defaultMode,
        this.items,
        this.optional,
        this.secretName,
    });

    factory IoK8SApiCoreV1SecretVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1SecretVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1SecretVolumeSourceToJson(this);
}


///storageOS represents a StorageOS volume attached and mounted on Kubernetes nodes.
///
///Represents a StorageOS persistent volume resource.
@JsonSerializable()
class IoK8SApiCoreV1StorageOsVolumeSource {
    
    ///fsType is the filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///readOnly defaults to false (read/write). ReadOnly here will force the ReadOnly setting in
    ///VolumeMounts.
    @JsonKey(name: "readOnly")
    bool? readOnly;
    
    ///secretRef specifies the secret to use for obtaining the StorageOS API credentials.  If
    ///not specified, default values will be attempted.
    @JsonKey(name: "secretRef")
    IoK8SApiCoreV1LocalObjectReference? secretRef;
    
    ///volumeName is the human-readable name of the StorageOS volume.  Volume names are only
    ///unique within a namespace.
    @JsonKey(name: "volumeName")
    String? volumeName;
    
    ///volumeNamespace specifies the scope of the volume within StorageOS.  If no namespace is
    ///specified then the Pod's namespace will be used.  This allows the Kubernetes name scoping
    ///to be mirrored within StorageOS for tighter integration. Set VolumeName to any name to
    ///override the default behaviour. Set to "default" if you are not using namespaces within
    ///StorageOS. Namespaces that do not pre-exist within StorageOS will be created.
    @JsonKey(name: "volumeNamespace")
    String? volumeNamespace;

    IoK8SApiCoreV1StorageOsVolumeSource({
        this.fsType,
        this.readOnly,
        this.secretRef,
        this.volumeName,
        this.volumeNamespace,
    });

    factory IoK8SApiCoreV1StorageOsVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1StorageOsVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1StorageOsVolumeSourceToJson(this);
}


///vsphereVolume represents a vSphere volume attached and mounted on kubelets host machine
///
///Represents a vSphere volume resource.
@JsonSerializable()
class IoK8SApiCoreV1VsphereVirtualDiskVolumeSource {
    
    ///fsType is filesystem type to mount. Must be a filesystem type supported by the host
    ///operating system. Ex. "ext4", "xfs", "ntfs". Implicitly inferred to be "ext4" if
    ///unspecified.
    @JsonKey(name: "fsType")
    String? fsType;
    
    ///storagePolicyID is the storage Policy Based Management (SPBM) profile ID associated with
    ///the StoragePolicyName.
    @JsonKey(name: "storagePolicyID")
    String? storagePolicyId;
    
    ///storagePolicyName is the storage Policy Based Management (SPBM) profile name.
    @JsonKey(name: "storagePolicyName")
    String? storagePolicyName;
    
    ///volumePath is the path that identifies vSphere volume vmdk
    @JsonKey(name: "volumePath")
    String volumePath;

    IoK8SApiCoreV1VsphereVirtualDiskVolumeSource({
        this.fsType,
        this.storagePolicyId,
        this.storagePolicyName,
        required this.volumePath,
    });

    factory IoK8SApiCoreV1VsphereVirtualDiskVolumeSource.fromJson(Map<String, dynamic> json) => _$IoK8SApiCoreV1VsphereVirtualDiskVolumeSourceFromJson(json);

    Map<String, dynamic> toJson() => _$IoK8SApiCoreV1VsphereVirtualDiskVolumeSourceToJson(this);
}
