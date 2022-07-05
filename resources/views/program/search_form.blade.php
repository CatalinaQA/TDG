<div class="row g-3">
    <div class="col-sm-2">
        {{ Form::select('faculty_id', $faculties, $request['faculty_id'], ['class' => 'form-control', 'placeholder' => 'Nombre facultad']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::select('coordination_id', $coordinations, $request['coordination_id'], ['class' => 'form-control', 'placeholder' => 'Nombre coordinación']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::text('program_name', $request['program_name'], ['class' => 'form-control', 'placeholder' => 'Nombre programa']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::select('program_category', [
            "Técnico"         => "Técnico",
            "Tecnológico"     => "Tecnológico",
            "Profesional"     => "Profesional",
            "Especialización" => "Especialización",
            "Maestría"        => "Maestría",
        ], $request['program_category'], ['class' => 'form-control', 'placeholder' => 'Categoría programa']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::text('snies_register', $request['snies_register'], ['class' => 'form-control', 'placeholder' => 'Registro SNIES']) }}
    </div>
    <div class="col-sm">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </div>
</div>