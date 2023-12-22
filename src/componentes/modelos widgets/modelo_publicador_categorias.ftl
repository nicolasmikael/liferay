<#if entries?has_content>
    <div class="container px-4">
        <div class="row">
            <#list entries as entry>
                <#assign AssetCategoryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService") />
                <#assign assetRenderer=entry.getAssetRenderer() />
                <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, assetRenderer, entry, !stringUtil.equals(assetLinkBehavior, "showFullContent" )) />
                <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
                <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
                <div class="col-md-4">
                    <div class="card h-100">
                        <#assign imgField=DDMFormFieldsReferencesMap['imagem'].name />
                        <#assign imgValue=DDMFormFieldValuesMap[imgField]
                            [0].getValue().getString(locale) />
                        <#assign imgTop=imgValue?eval />
                        <a href="${viewURL}">
                            <img class="card-img" src="${imgTop.url}">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <#assign titleField=DDMFormFieldsReferencesMap['titulo'].name />
                                <#assign title=DDMFormFieldValuesMap[titleField]
                                    [0].getValue().getString(locale) />
                                ${title}
                            </h5>
                            <div class="richTextContainer">
                                <p>
                                    <#assign contentField=DDMFormFieldsReferencesMap['conteudo'].name />
                                    <#assign content=DDMFormFieldValuesMap[contentField]
                                        [0].getValue().getString(locale) />
                                    ${content}
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</#if>