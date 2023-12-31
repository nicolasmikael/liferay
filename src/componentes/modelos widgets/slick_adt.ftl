<#if entries?has_content>
    <div class="container px-4">
        <div class="carousel-home row">
            <#list entries as entry>
                <#assign AssetCategoryLocalService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryLocalService") />
                <#assign assetRenderer=entry.getAssetRenderer() />
                <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, assetRenderer, entry, !stringUtil.equals(assetLinkBehavior, "showFullContent" )) />
                <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
                <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
                <#assign categoryColors={ "Ciência" : "#baffc9" , "Política" : "#ffdfba" , "Futebol" : "#bae1ff" , "Tempo" : "#dbcdf0" , "Cultura e Lazer" : "#f2c6de" , "Saúde" : "#f2c6de" } />
                <div class="col-sm-12 col-md-6 col-lg-4">
                    <div class="card card-category">
                        <#assign imgField=DDMFormFieldsReferencesMap['imagem'].name />
                        <#assign imgValue=DDMFormFieldValuesMap[imgField]
                            [0].getValue().getString(locale) />
                        <#assign imgTop=imgValue?eval />
                        <a href="${viewURL}">
                            <div class="card-image-category" style="background-image : url('${imgTop.url}');">
                            </div>
                        </a>
                        <div class="card-body">
                            <div class="card-category-name">
                                <#list AssetCategoryLocalService.getEntryCategories(entry.getEntryId()) as entryCat>
                                    <#assign catName=entryCat.getName()>
                                        <#assign categoryColor=categoryColors[catName]!'' />
                                        <#assign catName=entryCat.getName()>
                                            <span class="btn" style="background-color: ${categoryColor};">
                                                ${catName}
                                            </span>
                                </#list>
                            </div>
                            <p class="h6 card-text py-2">
                                <#assign titleField=DDMFormFieldsReferencesMap['titulo'].name />
                                <#assign title=DDMFormFieldValuesMap[titleField]
                                    [0].getValue().getString(locale) />
                                ${title}
                            </p>
                            <div class="richTextContainer2">
                                <p class="card-text">
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