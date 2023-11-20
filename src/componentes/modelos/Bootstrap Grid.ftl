<!------------------------Card padrão---------------------------->
<div class="container bootstrap-grid-selector">
  <div class="row">
    <#if grupo.getSiblings()?has_content>
      <#list grupo.getSiblings() as cur_grupo>
        <div class="col-md-4">
          <div class="card bg-dark text-white">
            <#if (cur_grupo.imagem.getData())?? && cur_grupo.imagem.getData() !="">
              <img alt="${cur_grupo.imagem.getAttribute("alt")}" data-fileentryid="${cur_grupo.imagem.getAttribute("fileEntryId")}" src="${cur_grupo.imagem.getData()}" class="img-fluid" />
            </#if>
            <div class="card-body">
              <#if (cur_grupo.texto.getData())??>
                <h5 class="card-title">
                  ${cur_grupo.texto.getData()}
                </h5>
              </#if>
              <p class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</p>
              <div class="mt-auto">
                <a href="#" class="btn btn-primary btn-block">Acessar</a>
              </div>
            </div>
          </div>
        </div>
      </#list>
    </#if>
  </div>
</div>
<!------------------------------------Card com imagem de fundo (Inacabado) --------------------------->
<div class="container">
  <div class="row">
    <#if grupo.getSiblings()?has_content>
      <#list grupo.getSiblings() as cur_grupo>
        <div class="col">
          <div class="card bg-dark text-white">
            <img class="card-img" src="${cur_grupo.imagem.getData()}" alt="${cur_grupo.imagem.getAttribute("alt")}" data-fileentryid="${cur_grupo.imagem.getAttribute("fileEntryId")}" class="img-fluid">
            <div class="card-img-overlay d-flex flex-column">
              <h5 class="card-title">
                ${cur_grupo.texto.getData()}
              </h5>
              <p class="card-text">This is a wider card with supporting text below as a natural lead-in to additional content. This content is a little bit longer.</p>
              <p class="card-text">Atualizado pela última vez, 3 minutos atrás</p>
              <a href="#" class="btn btn-primary">Acessar</a>
            </div>
          </div>
        </div>
      </#list>
    </#if>
  </div>
</div>