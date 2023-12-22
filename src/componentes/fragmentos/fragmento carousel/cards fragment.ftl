<div class="container pt-5">
    <div class="row">
        [#list 1..configuration.numberOfCards as index]
        <div class="col-sm-12 col-md-6 col-lg-4">
            <div class="card">
                <div class="card-img-carousel">
                    <lfr-editable id="img${index}" type="image">
                        <img src="..." class="card-img-top" alt="...">
                    </lfr-editable>
                </div>
                <div class="card-body">
                    <lfr-editable id="titulo${index}" type="rich-text">
                        <h5 class="card-title">Card title</h5>
                    </lfr-editable>
                    <lfr-editable id="texto${index}" type="rich-text" class="py-2">
                        <span class="card-text">Some quick example text to build on the card title and make up the bulk of the card's content.</span>
                    </lfr-editable>
                    <lfr-editable id="botao${index}" type="link">
                        <a href="#" class="btn btn-primary bg-${configuration.buttonColor.cssClass} text-${configuration.buttonTextColor.cssClass}">Acessar</a>
                    </lfr-editable>
                </div>
            </div>
        </div>
        [/#list]
    </div>
</div>