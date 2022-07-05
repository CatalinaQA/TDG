<div class="row g-3">
    <div class="col-sm-4">
        {{ Form::select('faculty_id', $faculties, $request['faculty_id'], ['class' => 'form-control', 'placeholder' => 'Nombre facultad']) }}
    </div>
    <div class="col-sm">
        {{ Form::text('coordination_name', $request['coordination_name'], ['class' => 'form-control', 'placeholder' => 'Nombre coordinación']) }}
    </div>
    <div class="col-sm">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </div>
</div>