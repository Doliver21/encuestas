<div class="row-fluid">
    <form class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>Datos del Grupo</legend>

            <!-- Text input-->
            <div class="control-group">
                <label class="control-label" for="login">Identificador de grupo</label>
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
        <div class="span4">
            <button class="btn btn-danger" data-ng-hide="newRow==true" data-ng-click="deleteRow()" ><i class="icon-remove"></i> Borrar</button>
        </div>
        <div class="span8" style="text-align: right">
            <button class="btn" data-ng-click="cancelRow()" >Cancelar</button>
            <button class="btn btn-primary" data-ng-click="saveRow()" >Guardar</button>
        </div>    
    </div>
</div>