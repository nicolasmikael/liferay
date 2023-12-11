<#if entries?has_content>
    <div class="container">
        <div class="responsive row">
            <#list entries as entry>
                <#assign viewURL=assetPublisherHelper.getAssetViewURL(renderRequest, renderResponse, entry) />
                <#assign assetRenderer=entry.getAssetRenderer() />
                <#assign DDMFormFieldValuesMap=assetRenderer.getDDMFormValuesReader().getDDMFormValues().getDDMFormFieldValuesMap() />
                <#assign DDMFormFieldsReferencesMap=assetRenderer.article.DDMStructure.DDMForm.getDDMFormFieldsReferencesMap(true) />
                <div class="col-md-4">
                    <div class="card">
                        <#assign imgField=DDMFormFieldsReferencesMap['imagem'].name />
                        <#assign imgValue=DDMFormFieldValuesMap[imgField]
                            [0].getValue().getString(locale) />
                        <#assign imgTop=imgValue?eval />
                        <a href="${viewURL}">
                            <img class="card-img-top" src="${imgTop.url}">
                        </a>
                        <div class="card-body">
                            <h5 class="card-title">
                                <#assign titleField=DDMFormFieldsReferencesMap['titulo'].name />
                                <#assign title=DDMFormFieldValuesMap[titleField]
                                    [0].getValue().getString(locale) />
                                ${title}
                            </h5>
                            <p class="card-text">
                                <#assign authorField=DDMFormFieldsReferencesMap['autor'].name />
                                <#assign author=DDMFormFieldValuesMap[authorField]
                                    [0].getValue().getString(locale) />
                                ${author}
                            </p>
                            <p class="card-text">
                                <#assign dateField=DDMFormFieldsReferencesMap['data'].name />
                                <#assign date=DDMFormFieldValuesMap[dateField]
                                    [0].getValue().getString(locale) />
                                ${date}
                            </p>
                        </div>
                    </div>
                </div>
            </#list>
        </div>
    </div>
</#if>