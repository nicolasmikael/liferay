<#assign hasCategories=false />
<#if entries?has_content>
    <@clay.container>
        <@clay.row>
            <#list entries as entry>
                <#assign categories=entry.getCategories() />
                <#if categories?has_content>
                    <#assign hasCategories=true />
                    <@clay.col xs="12">
                        <div class="results-header">
                            <h3>
                                Categorias de Notícias
                            </h3>
                        </div>
                        <@displayCategories categories=categories />
                    </@clay.col>
                </#if>
            </#list>
            <#if !hasCategories>
                ${renderRequest.setAttribute("PORTLET_CONFIGURATOR_VISIBILITY", true)}
                <div class="alert alert-info w-100">
                    <@liferay_ui.message key="there-are-no-categories" />
                </div>
            </#if>
        </@clay.row>
    </@clay.container>
</#if>
<#macro displayCategories
    categories>
    <#if categories?has_content>
        <div class="d-flex flex-md-nowrap flex-wrap catgc">
            <#list categories as category>
                <div>
                    <#assign categoryURL=renderResponse.createRenderURL() />
                    <#assign categoryColors={ "Ciência" : "#baffc9" , "Política" : "#ffdfba" , "Futebol" : "#bae1ff" , "Tempo" : "#dbcdf0" , "Cultura e Lazer" : "#f2c6de" , "Saúde" : "#f2c6de" } />
                    <#assign catName=category.getName()>
                        <#assign categoryColor=categoryColors[catName]!'' />
                        ${categoryURL.setParameter("resetCur", "true")}
                        ${categoryURL.setParameter("categoryId", category.getCategoryId()?string)}
                        <a class="btn btn-light text-nowrap" href="${categoryURL}" style="background-color: ${categoryColor};">
                            ${catName}
                        </a>
                        <#if serviceLocator??>
                            <#assign
                                assetCategoryService=serviceLocator.findService("com.liferay.asset.kernel.service.AssetCategoryService")
                                childCategories=assetCategoryService.getChildCategories(category.getCategoryId()) />
                            <@displayCategories categories=childCategories />
                        </#if>
                </div>
            </#list>
        </div>
    </#if>
</#macro>