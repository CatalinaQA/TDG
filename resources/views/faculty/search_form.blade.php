<div class="row g-3">
    <div class="col-sm-4">
        {{ Form::text('faculty_name', $request['faculty_name'], ['class' => 'form-control', 'placeholder' => 'Nombre facultad']) }}
    </div>
    <div class="col-sm">
        {{ Form::text('dean_name', $request['dean_name'], ['class' => 'form-control', 'placeholder' => 'Nombre decano']) }}
    </div>
    <div class="col-sm">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </div>
</div>