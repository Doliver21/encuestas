<div class="row-fluid">
    <form class="form-horizontal">
        <fieldset>

            <!-- Form Name -->
            <legend>Datos del Secure Resource Type</legend>

            <!-- Text input-->
            <div class="control-group">
                <label class="control-label" for="name">Nombre</label>
                <div class="controls">
                    <input id="name" data-ng-model="model.name" name="name" type="text" placeholder="nombre" class="input-small" required="">
                </div>
            </div>

            <!-- Text input-->
            <div class="control-group">
                <label class="control-label" for="name">Descripci&oacute;n:</label>
                <div class="controls">
                    <input id="description" data-ng-model="model.description" name="description" type="text" placeholder="descripcion" class="input-large" required="">
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