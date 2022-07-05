<div class="row g-3">
    <div class="col-sm-4">
        {{ Form::text('name', $request['name'], ['class' => 'form-control', 'placeholder' => 'Nombre docente']) }}
    </div>
    <div class="col-sm-3">
        {{ Form::select('contract_type', 
            ["Tiempo completo" => "Tiempo completo", "Catedra" => "Catedra", "Tiempo ocasional" => "Tiempo ocasional"], 
            $request['contract_type'], ['class' => 'form-control', 'placeholder' => 'Tipo de contrato']) }}
    </div>
    <div class="col-sm">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </div>
</div>