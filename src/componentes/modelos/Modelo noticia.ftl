<div class="container">
    <h2>
        <#if (titulo.getData())??>
            ${titulo.getData()}
        </#if>
    </h2>
    <p>
        <#if (subtitulo.getData())??>
            ${subtitulo.getData()}
        </#if>
    </p>
    <div class="infos">
        <span>
            <#if (categoria.getData())??>
                ${categoria.getData()}
            </#if>
        </span>
        |
        <span>
            <#assign data_Data=getterUtil.getString(data.getData())>
                <#if validator.isNotNull(data_Data)>
                    <#assign data_DateObj=dateUtil.parseDate("yyyy-MM-dd", data_Data, locale)>
                        ${dateUtil.getDate(data_DateObj, "dd MMM yyyy - HH:mm:ss", locale)}
                </#if>
        </span>
        |
        <span>
            <#if (autor.getData())??>
                ${autor.getData()}
            </#if>
        </span>
    </div>
    <div class="content">
        <div class="content-image">
            <#if (imagem.getData())?? && imagem.getData() !="">
                <img alt="${imagem.getAttribute("alt")}" data-fileentryid="${imagem.getAttribute("fileEntryId")}" src="${imagem.getData()}" />
            </#if>
        </div>
        <div class="content-text">
            <#if (conteudo.getData())??>
                ${conteudo.getData()}
            </#if>
        </div>
    </div>
</div>