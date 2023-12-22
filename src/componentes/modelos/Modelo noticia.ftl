<div class="container">
    <div class="news-detail">
        <#if (imagem.getData())?? && imagem.getData() !="">
            <img class="news-image rounded" alt="${imagem.getAttribute('alt')}" data-fileentryid="${imagem.getAttribute('fileEntryId')}" src="${imagem.getData()}" />
        </#if>
        <h2 class="text-center news-title">
            <#if (titulo.getData())??>
                ${titulo.getData()}
            </#if>
        </h2>
        <div class="news-description">
            <#if (conteudo.getData())??>
                ${conteudo.getData()}
            </#if>
        </div>
    </div>
</div>