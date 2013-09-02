<div class="row-fluid">
    <form class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>Datos del usuario</legend>

            <!-- Text input-->
            <div class="control-group">
                <label class="control-label" for="login">Identificador de usuario:</label>
                <div class="controls">
                    <input id="login" data-ng-model="model.login" name="login" type="text" placeholder="usuario del correo" class="input-small" required="">
                </div>
            </div>

            <!-- Text input-->
            <div class="control-group">
                <label class="control-label" for="name">Nombre completo:</label>
                <div class="controls">
                    <input id="name" data-ng-model="model.name" name="name" type="text" placeholder="Nombre completo del usuario" class="input-large" required="">
                </div>
            </div>
        </fieldset>
    </form>
    <div class="row-fluid">
        <div class="span12">
            <button class="btn" data-ng-click="newChildRow('memberOf')">Nuevo Grupo</button>
            <table class="table table-bordered table-striped table-condensed">
                <thead>
                    <tr>
                        <th>Login</th>
                        <th>Name</th>
                    </tr>
                </thead>
                <tbody>
                    <tr ng-repeat="row in memberOf" >
                        <td><a class="btn btn-link" href="#/group/edit/{{row.group.idIdentity}}">{{row.group.login}}</a></td>
                        <td>{{row.group.toString}}</td>
                    </tr>
                </tbody>
            </table>
        </div>
    </div>
    <div class="row-fluid">    
        <div class="alert">
          <button type="button" class="close" data-dismiss="alert">&times;</button>
          <ul>
              <li>
                  
              </li>
          </ul>
        </div>
    </div>
    <div class="row-fluid">
        <div class="span4">
            <button class="btn btn-danger" data-ng-hide="newRow==true" data-ng-click="deleteRow()" ><i class="icon-remove"></i> Borrar</button>
        </div>
        <div class="span8" style="text-align: right">
            <button class="btn" data-ng-click="cancelRow()" >Cancelar</button>
            <button class="btn btn-primary" data-ng-click="saveRow()" >Guardar</button>
        </div>    
    </div>
</div>

