package VCD::Schema::TypeMap;

our $map = {
    '1.5' => {
        'application/vnd.vmware.vcloud.orgList+xml' => 'VCD::Schema::VCloud_v1_5::OrgListType',
        'application/vnd.vmware.vcloud.screenTicket+xml' => 'VCD::Schema::VCloud_v1_5::ScreenTicketType',
        'application/vnd.vmware.vcloud.productSections+xml' => 'VCD::Schema::VCloud_v1_5::ProductSectionListType',
        'application/vnd.vmware.vcloud.relocateVmParams+xml' => 'VCD::Schema::VCloud_v1_5::RelocateParamsType',
        'application/vnd.vmware.vcloud.networkConfigSection+xml' => 'VCD::Schema::VCloud_v1_5::NetworkConfigSectionType',
        'application/vnd.vmware.admin.right+xml' => 'VCD::Schema::VCloud_v1_5::RightType',
        'application/vnd.vmware.admin.organizationGeneralSettings+xml' => 'VCD::Schema::VCloud_v1_5::OrgGeneralSettingsType',
        'application/vnd.vmware.vcloud.cloneVAppParams+xml' => 'VCD::Schema::VCloud_v1_5::CloneVAppParamsType',
        'application/vnd.vmware.admin.providervdc+xml' => 'VCD::Schema::VCloud_v1_5::ProviderVdcType',
        'application/vnd.vmware.admin.publishCatalogParams+xml' => 'VCD::Schema::VCloud_v1_5::PublishCatalogParamsType',
        'application/vnd.vmware.admin.taskOperationList+xml' => 'VCD::Schema::VCloud_v1_5::TaskOperationListType',
        'application/vnd.vmware.vcloud.orgNetwork+xml' => 'VCD::Schema::VCloud_v1_5::OrgNetworkType',
        'application/vnd.vmware.vcloud.task+xml' => 'VCD::Schema::VCloud_v1_5::TaskType',
        'application/vnd.vmware.vcloud.captureVAppParams+xml' => 'VCD::Schema::VCloud_v1_5::CaptureVAppParamsType',
        'application/vnd.vmware.admin.vAppLeaseSettings+xml' => 'VCD::Schema::VCloud_v1_5::OrgLeaseSettingsType',
        'application/vnd.vmware.vcloud.vApp+xml' => 'VCD::Schema::VCloud_v1_5::VAppType',
        'application/vnd.vmware.admin.taskExtensionRequestList+xml' => 'VCD::Schema::VCloud_v1_5::ReferencesType',
        'application/vnd.vmware.admin.vAppTemplateLeaseSettings+xml' => 'VCD::Schema::VCloud_v1_5::OrgVAppTemplateLeaseSettingsType',
        'application/vnd.vmware.vcloud.vmPendingQuestion+xml' => 'VCD::Schema::VCloud_v1_5::VmPendingQuestionType',
        'application/vnd.vmware.vcloud.controlAccess+xml' => 'VCD::Schema::VCloud_v1_5::ControlAccessParamsType',
        'application/vnd.vmware.vcloud.runtimeInfoSection+xml' => 'VCD::Schema::VCloud_v1_5::RuntimeInfoSectionType',
        'application/vnd.vmware.admin.organization+xml' => 'VCD::Schema::VCloud_v1_5::AdminOrgType',
        'application/vnd.vmware.admin.vdcReferences+xml' => 'VCD::Schema::VCloud_v1_5::VdcReferencesType',
        'application/vnd.vmware.vcloud.recomposeVAppParams+xml' => 'VCD::Schema::VCloud_v1_5::RecomposeVAppParamsType',
        'application/vnd.vmware.vcloud.rasdItem+xml' => 'VCD::Schema::External::OVF::RASDType',
        'application/vnd.vmware.vcloud.rasdItemsList+xml' => 'VCD::Schema::VCloud_v1_5::RasdItemsListType',
        'application/vnd.vmware.vcloud.media+xml' => 'VCD::Schema::VCloud_v1_5::MediaType',
        'application/vnd.vmware.vcloud.vm+xml' => 'VCD::Schema::VCloud_v1_5::VmType',
        'application/vnd.vmware.vcloud.owner+xml' => 'VCD::Schema::VCloud_v1_5::OwnerType',
        'application/vnd.vmware.admin.group+xml' => 'VCD::Schema::VCloud_v1_5::GroupType',
        'application/vnd.vmware.admin.user+xml' => 'VCD::Schema::VCloud_v1_5::UserType',
        'application/vnd.vmware.admin.role+xml' => 'VCD::Schema::VCloud_v1_5::RoleType',
        'application/vnd.vmware.vcloud.metadata+xml' => 'VCD::Schema::VCloud_v1_5::MetadataType',
        'application/vnd.vmware.vcloud.catalogItem+xml' => 'VCD::Schema::VCloud_v1_5::CatalogItemType',
        'application/vnd.vmware.vcloud.undeployVAppParams+xml' => 'VCD::Schema::VCloud_v1_5::UndeployVAppParamsType',
        'application/vnd.vmware.admin.orgNetwork+xml' => 'VCD::Schema::VCloud_v1_5::OrgNetworkType',
        'application/vnd.vmware.vcloud.vmPendingAnswer+xml' => 'VCD::Schema::VCloud_v1_5::VmQuestionAnswerType',
        'application/vnd.vmware.admin.vdc+xml' => 'VCD::Schema::VCloud_v1_5::AdminVdcType',
        'application/vnd.vmware.vcloud.vdc+xml' => 'VCD::Schema::VCloud_v1_5::VdcType',
        'application/vnd.vmware.vcloud.mediaInsertOrEjectParams+xml' => 'VCD::Schema::VCloud_v1_5::MediaInsertOrEjectParamsType',
        'application/vnd.vmware.vcloud.virtualHardwareSection+xml' => 'VCD::Schema::External::OVF::VirtualHardwareSectionType',
        'application/vnd.vmware.vcloud.vAppNetwork+xml' => 'VCD::Schema::VCloud_v1_5::VAppNetworkType',
        'application/vnd.vmware.vcloud.cloneVAppTemplateParams+xml' => 'VCD::Schema::VCloud_v1_5::CloneVAppTemplateParamsType',
        'application/vnd.vmware.admin.catalog+xml' => 'VCD::Schema::VCloud_v1_5::AdminCatalogType',
        'application/vnd.vmware.vcloud.instantiateVAppTemplateParams+xml' => 'VCD::Schema::VCloud_v1_5::InstantiateVAppTemplateParamsType',
        'application/vnd.vmware.vcloud.customizationSection+xml' => 'VCD::Schema::VCloud_v1_5::CustomizationSectionType',
        'application/vnd.vmware.vcloud.deployVAppParams+xml' => 'VCD::Schema::VCloud_v1_5::DeployVAppParamsType',
        'application/vnd.vmware.vcloud.tasksList+xml' => 'VCD::Schema::VCloud_v1_5::TasksListType',
        'application/vnd.vmware.vcloud.leaseSettingsSection+xml' => 'VCD::Schema::VCloud_v1_5::LeaseSettingsSectionType',
        'application/vnd.vmware.vcloud.org+xml' => 'VCD::Schema::VCloud_v1_5::OrgType',
        'application/vnd.vmware.admin.organizationEmailSettings+xml' => 'VCD::Schema::VCloud_v1_5::OrgEmailSettingsType',
        'application/vnd.vmware.vcloud.operatingSystemSection+xml' => 'VCD::Schema::External::OVF::OperatingSystemSectionType',
        'application/vnd.vmware.admin.orgSettings+xml' => 'VCD::Schema::VCloud_v1_5::OrgSettingsType',
        'application/vnd.vmware.vcloud.composeVAppParams+xml' => 'VCD::Schema::VCloud_v1_5::ComposeVAppParamsType',
        'application/vnd.vmware.admin.organizationPasswordPolicySettings+xml' => 'VCD::Schema::VCloud_v1_5::OrgPasswordPolicySettingsType',
        'application/vnd.vmware.vcloud.cloneMediaParams+xml' => 'VCD::Schema::VCloud_v1_5::CloneMediaParamsType',
        'application/vnd.vmware.vcloud.catalog+xml' => 'VCD::Schema::VCloud_v1_5::CatalogType',
        'application/vnd.vmware.vcloud.networkSection+xml' => 'VCD::Schema::External::OVF::NetworkSectionType',
        'application/vnd.vmware.vcloud.vAppTemplate+xml' => 'VCD::Schema::VCloud_v1_5::VAppTemplateType',
        'application/vnd.vmware.vcloud.networkConnectionSection+xml' => 'VCD::Schema::VCloud_v1_5::NetworkConnectionSectionType',
        'application/vnd.vmware.vcloud.network+xml' => 'VCD::Schema::VCloud_v1_5::NetworkType',
        'application/vnd.vmware.vcloud.entity+xml' => 'VCD::Schema::VCloud_v1_5::EntityType',
        'application/vnd.vmware.vcloud.startupSection+xml' => 'VCD::Schema::External::OVF::StartupSectionType',
        'application/vnd.vmware.admin.vcloud+xml' => 'VCD::Schema::VCloud_v1_5::VCloudType',
        'application/vnd.vmware.vcloud.guestCustomizationSection+xml' => 'VCD::Schema::VCloud_v1_5::GuestCustomizationSectionType',
        'application/vnd.vmware.vcloud.session+xml' => 'VCD::Schema::VCloud_v1_5::SessionType',
        'application/vnd.vmware.vcloud.uploadVAppTemplateParams+xml' => 'VCD::Schema::VCloud_v1_5::UploadVAppTemplateParamsType',
        'application/vnd.vmware.vcloud.metadata.value+xml' => 'VCD::Schema::VCloud_v1_5::MetadataValueType',
        'application/vnd.vmware.admin.importMediaParams+xml' => 'VCD::Schema::VCloud_v1_5::Extension::ImportMediaParamsType',
        'application/vnd.vmware.admin.systemPasswordPolicySettings+xml' => 'VCD::Schema::VCloud_v1_5::Extension::SystemPasswordPolicySettingsType',
        'application/vnd.vmware.admin.ldapUserSettings+xml' => 'VCD::Schema::VCloud_v1_5::Extension::LdapUserAttributesType',
        'application/vnd.vmware.admin.vmsObjectRefsList+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VmObjectRefsListType',
        'application/vnd.vmware.admin.host+xml' => 'VCD::Schema::VCloud_v1_5::Extension::HostType',
        'application/vnd.vmware.admin.importVmIntoExistingVAppParams+xml' => 'VCD::Schema::VCloud_v1_5::Extension::ImportVmIntoExistingVAppParamsType',
        'application/vnd.vmware.admin.vmwExtension+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWExtensionType',
        'application/vnd.vmware.admin.resourcePoolList+xml' => 'VCD::Schema::VCloud_v1_5::Extension::ResourcePoolListType',
        'application/vnd.vmware.admin.OrganizationVdcResourcePoolSet+xml' => 'VCD::Schema::VCloud_v1_5::Extension::OrganizationResourcePoolSetType',
        'application/vnd.vmware.admin.vmwexternalnet+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWExternalNetworkType',
        'application/vnd.vmware.admin.ldapSettings+xml' => 'VCD::Schema::VCloud_v1_5::Extension::LdapSettingsType',
        'application/vnd.vmware.admin.datastore+xml' => 'VCD::Schema::VCloud_v1_5::Extension::DatastoreType',
        'application/vnd.vmware.admin.systemSettings+xml' => 'VCD::Schema::VCloud_v1_5::Extension::SystemSettingsType',
        'application/vnd.vmware.admin.vmwExternalNetworkReferences+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWExternalNetworkReferencesType',
        'application/vnd.vmware.admin.importVmAsVAppTemplateParams+xml' => 'VCD::Schema::VCloud_v1_5::Extension::ImportVmAsVAppTemplateParamsType',
        'application/vnd.vmware.admin.vmwVimServerReferences+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWVimServerReferencesType',
        'application/vnd.vmware.admin.uberAdminSettings+xml' => 'VCD::Schema::VCloud_v1_5::Extension::UberAdminSettingsType',
        'application/vnd.vmware.admin.generalSettings+xml' => 'VCD::Schema::VCloud_v1_5::Extension::GeneralSettingsType',
        'application/vnd.vmware.admin.amqpSettings+xml' => 'VCD::Schema::VCloud_v1_5::Extension::AmqpSettingsType',
        'application/vnd.vmware.admin.vmwNetworkPool+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWNetworkPoolType',
        'application/vnd.vmware.admin.notificationsSettings+xml' => 'VCD::Schema::VCloud_v1_5::Extension::NotificationsSettingsType',
        'application/vnd.vmware.admin.vmwProviderVdcReferences+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWProviderVdcReferencesType',
        'application/vnd.vmware.admin.resourcePoolSetUpdateParams+xml' => 'VCD::Schema::VCloud_v1_5::Extension::UpdateResourcePoolSetParamsType',
        'application/vnd.vmware.admin.vimServerNetworks+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VimObjectRefListType',
        'application/vnd.vmware.admin.vmwprovidervdc+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWProviderVdcType',
        'application/vnd.vmware.admin.vmwProviderVdcResourcePoolSet+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWProviderVdcResourcePoolSetType',
        'application/vnd.vmware.admin.importVmAsVAppParams+xml' => 'VCD::Schema::VCloud_v1_5::Extension::ImportVmAsVAppParamsType',
        'application/vnd.vmware.admin.vmwvirtualcenter+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VimServerType',
        'application/vnd.vmware.admin.registerVimServerParams+xml' => 'VCD::Schema::VCloud_v1_5::Extension::RegisterVimServerParamsType',
        'application/vnd.vmware.admin.ldapGroupSettings+xml' => 'VCD::Schema::VCloud_v1_5::Extension::LdapGroupAttributesType',
        'application/vnd.vmware.admin.vmwNetworkPoolReferences+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWNetworkPoolReferencesType',
        'application/vnd.vmware.admin.licensingReportList+xml' => 'VCD::Schema::VCloud_v1_5::Extension::LicensingReportListType',
        'application/vnd.vmware.admin.vmwHostReferences+xml' => 'VCD::Schema::VCloud_v1_5::Extension::VMWHostReferencesType',
        'application/vnd.vmware.admin.prepareHostParams+xml' => 'VCD::Schema::VCloud_v1_5::Extension::PrepareHostParamsType',
        'application/vnd.vmware.admin.amqpSettingsTest+xml' => 'VCD::Schema::VCloud_v1_5::Extension::AmqpSettingsTestType',
        'application/vnd.vmware.admin.licensingReport+xml' => 'VCD::Schema::VCloud_v1_5::Extension::LicensingReportType',
    }
};

sub get_schema_type {
    my ($version, $media_type) = @_;

    return $map->{$version}{$media_type};
}

1;
