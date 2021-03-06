<div class="row-fluid" >
    <div class="span12">
        <legend>Listado de encuestas</legend>
    </div>
</div>
<div class="row-fluid" >
    <div class="span12">
        <form class="form-inline">
            <div class="input-append">     
                <input type="text" class="input-large" ng-model="filter.nombre" placeholder="Escribe el nombre de la encuesta" /><button type="button" class="btn" ng-click="search()">Filtrar</button>
            </div>
            <a href="#/encuesta/new"  class="btn btn-primary" >Nueva encuesta</a>
        </form>
    </div>
</div>
<div class="row-fluid" >
    <div class="span12" >
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th style="text-align: right">N&ordm;</th>
                    <th width="100%">Nombre</th>
                    <th style="text-align: center">Habilitada</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="encuesta in model">
                    <td style="text-align: right">{{encuesta.idEncuesta}}</td>
                    <td ><a href="#/encuesta/editdelete/{{encuesta.idEncuesta}}">{{encuesta.nombre}}</a></td>
                    <td ng-switch on="encuesta.habilitada" style="text-align: center"><img ng-switch-when="true" src="../../img/icons/check24x24.gif" alt="check"><img ng-switch-default src="../../img/icons/minus24x24.gif" alt="uncheck"></td>
                </tr>
            </tbody>
        </table>
    </div>
</div>
<div class="row-fluid" >
    <div class="span12">
        <ix3-business-messages />
    </div>
</div>