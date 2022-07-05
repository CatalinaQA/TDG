<div class="row g-3">
    <div class="col-sm-4">
        {{ Form::text('document', $request['document'], ['class' => 'form-control', 'placeholder' => 'Documento']) }}
    </div>
    <div class="col-sm-4">
        {{ Form::text('name', $request['name'], ['class' => 'form-control', 'placeholder' => 'Nombre docente']) }}
    </div>
    <div class="col-sm">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </div>
</div>