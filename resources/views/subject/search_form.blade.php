<div class="row g-3">
    <div class="col-sm-3">
        {{ Form::select('faculty_id', $faculties, $request['faculty_id'], ['class' => 'form-control', 'placeholder' => 'Nombre facultad']) }}
    </div>
    <div class="col-sm-3">
        {{ Form::select('coordination_id', $coordinations, $request['coordination_id'], ['class' => 'form-control', 'placeholder' => 'Nombre coordinación']) }}
    </div>
    <div class="col-sm-3">
        {{ Form::select('program_id', $programs, $request['program_id'], ['class' => 'form-control', 'placeholder' => 'Nombre programa']) }}
    </div>
    <div class="col-sm-3">
        {{ Form::select('area_id', $areas, $request['area_id'], ['class' => 'form-control', 'placeholder' => 'Nombre área']) }}
    </div>
</div>
<br>
<div class="row g-3">
    <div class="col-sm-3">
        {{ Form::text('subject_name', $request['subject_name'], ['class' => 'form-control', 'placeholder' => 'Código o nombre asignatura']) }}
    </div>
    <div class="col-sm-3">
        {{ Form::text('prerequisite_code_1', $request['prerequisite_code_1'], ['class' => 'form-control', 'placeholder' => 'Código pre-requisito 1']) }}
    </div>
    <div class="col-sm-3">
        {{ Form::text('corequisite_code_1', $request['corequisite_code_1'], ['class' => 'form-control', 'placeholder' => 'Código co-requisito 1']) }}
    </div>
    <div class="col-sm">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </div>
</div>