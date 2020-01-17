<?xml version="1.0"?>

<recipe>

   <merge from="root/AndroidManifest.xml.ftl"
           to="${escapeXmlAttribute(manifestOut)}/AndroidManifest.xml" />


     <instantiate from="root/src/app_package/SimpleActivity.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/${activityName}.${ktOrJavaExt}" />


   <#if generateViewModel>
     <instantiate from="root/src/app_package/SimpleViewModel.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/${viewModelName}.${ktOrJavaExt}" />
   </#if>

	<#if generateLayout>
    <instantiate from="root/res/layout/simple.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${layout_name}.xml" />
    </#if>


	<#if needAdapter>

	 <instantiate from="root/src/app_package/SimpleAdaper.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/${adapterName}.${ktOrJavaExt}" />


    <instantiate from="root/src/app_package/SimpleAdaperEntity.${ktOrJavaExt}.ftl"
        to="${escapeXmlAttribute(srcOut)}/${adapterEntityName}.${ktOrJavaExt}" />
        
   <instantiate from="root/res/layout/simpleAdapterLayout.xml.ftl"
        to="${escapeXmlAttribute(resOut)}/layout/${adapter_layout_name}.xml" />

  </#if>



</recipe>

