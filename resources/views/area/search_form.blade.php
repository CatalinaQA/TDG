<div class="row g-3">
    <div class="col-sm-2">
        {{ Form::select('faculty_id', $faculties, $request['faculty_id'], ['class' => 'form-control', 'placeholder' => 'Nombre facultad']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::select('coordination_id', $coordinations, $request['coordination_id'], ['class' => 'form-control', 'placeholder' => 'Nombre coordinación']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::select('program_id', $programs, $request['program_id'], ['class' => 'form-control', 'placeholder' => 'Nombre programa']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::text('area_name', $request['area_name'], ['class' => 'form-control', 'placeholder' => 'Nombre área']) }}
    </div>
    <div class="col-sm">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </div>
</div>