<div class="cnu-banner mb-0 card" style="padding-top:${configuration.PreenchimentoPelicula}px; padding-bottom:${configuration.PreenchimentoPelicula}px;">
    <lfr-editable id="ImagemDesktop" type="image" class="img-desktop d-none d-sm-block">
        <img src="" class="card-img" />
    </lfr-editable>
    <lfr-editable id="ImagemMobile" type="image" class="img-mobile d-sm-none">
        <img src="" class="card-img" />
    </lfr-editable>
    <div class="card-img-overlay bg-${configuration.backgroundColor.cssClass} row flex-column justify-content-center py-4 c-px-md-80">
        <div class="col-lg-5">
            <lfr-editable class="my-3" id="text01" type="rich-text">
                <span style="color: var(--ct-as-claro, #B1D34B); font-family: Unimed Sans; font-size: 16px; font-style: normal; font-weight: 600;">
                    Lorem ipsum
                </span>
            </lfr-editable>
            <lfr-editable id="text02" type="rich-text">
                <span class="banner-title" style="font-family: Unimed Sans; font-size: 40px; font-style: normal; font-weight: 700;">
                    Lorem ipsum dolor sit amet, consectetur adipiscing elit.
                </span>
            </lfr-editable>
            <lfr-editable class="my-3" id="link01" type="link" style="font-size: 18px; font-weight: 600;">
                <a href="#" class="btn btn-lg bg-${configuration.buttonColor.cssClass} text-${configuration.buttonTextColor.cssClass}" style="font-family: Unimed Sans; font-size: 18px; font-style: normal; font-weight: 600;">
                    Lorem ipsum dolor
                </a>
            </lfr-editable>
        </div>
    </div>
</div>
<style>
.cnu-banner .card-img {
    height: calc(450px + ${configuration.PreenchimentoPelicula}px);
}

.cnu-banner .card-img:before {
    background-color : var(--${configuration.backgroundColor.cssClass});
}
</style>
<div class="container">
    <div class="row">
        <#if grupo.getSiblings()?has_content>
            <#list grupo.getSiblings() as cur_grupo>
                <div class="col-md-4">
                    <div class="card bg-dark text-white">
                        <#if (cur_grupo.imagem.getData())?? && cur_grupo.imagem.getData() !="">
                            <img alt="${cur_grupo.imagem.getAttribute("alt")}" data-fileentryid="${cur_grupo.imagem.getAttribute("fileEntryId")}" src="${cur_grupo.imagem.getData()}" />
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