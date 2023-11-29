<div class="col-md-4">
  <div class="card">
    <img class="card-img-top" />
    <div class="card-body">
      <h5 class="card-title">
        Editable Card Title
      </h5>
      <p class="card-text">
        Here is some editable text.
      </p>
      <a class="btn btn-primary" href="#">
        Editable Link
      </a>
    </div>
  </div>
</div>
<div class="responsive">
  <#if imagens.getSiblings()?has_content>
    <#list imagens.getSiblings() as cur_imagens>
      <#if (cur_imagens.imagem.getData())?? && cur_imagens.imagem.getData() !="">
        <img alt="${cur_imagens.imagem.getAttribute("alt")}" data-fileentryid="${cur_imagens.imagem.getAttribute("fileEntryId")}" src="${cur_imagens.imagem.getData()}" />
      </#if>
    </#list>
  </#if>
</div>
<div class="container">
  <div class="row responsive">
    <#if imagens.getSiblings()?has_content>
      <#list imagens.getSiblings() as cur_imagens>
        <div class="col-md-12">
          <div class="card bg-dark text-white">
            <img class="card-img" src="${cur_imagens.imagem.getData()}" alt="${cur_imagens.imagem.getAttribute("alt")}" data-fileentryid="${cur_imagens.imagem.getAttribute("fileEntryId")}">
            <div class="card-img-overlay d-flex flex-column">
              <h5 class="card-title">
                ${cur_imagens.titulo.getData()}
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
<div class="container">
  <div class="responsive row">
    <#if imagens.getSiblings()?has_content>
      <#list imagens.getSiblings() as cur_imagens>
        <div class="col-md-4">
          <div class="card bg-dark text-white">
            <img class="card-img" src="${cur_imagens.imagem.getData()}" alt="${cur_imagens.imagem.getAttribute("alt")}" data-fileentryid="${cur_imagens.imagem.getAttribute("fileEntryId")}" class="img-fluid">
            <div class="card-body">
              <h5 class="card-title">
                ${cur_imagens.titulo.getData()}
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