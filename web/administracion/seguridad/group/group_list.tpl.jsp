<div class="row-fluid">
    <div class="span12">
         <button class="btn" data-ng-click="newRow()">Nuevo</button>
        <table class="table table-bordered table-striped table-condensed">
            <thead>
                <tr>
                    <th>Login</th>
                    <th>Name</th>
                </tr>
            </thead>
            <tbody>
                <tr ng-repeat="row in model" >
                    <td><button class="btn btn-link" data-ng-click="editRow(row)">{{row.login}}</button></td>
                    <td>{{row.name}}</td>
                </tr>
            </tbody>
        </table>
        <button class="btn" data-ng-click="newRow()">Nuevo</button>
    </div>
</div>