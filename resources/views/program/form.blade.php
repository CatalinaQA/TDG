<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('Nombre facultad') }}
            {{ Form::select('faculty_id', $faculties, $program->faculty_id, ['class' => 'form-control' . ($errors->has('faculty_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre facultad']) }}
            {!! $errors->first('faculty_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre coordinación') }}
            {{ Form::select('coordination_id', $coordinations, $program->coordination_id, ['class' => 'form-control' . ($errors->has('coordination_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre coordinación']) }}
            {!! $errors->first('coordination_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre programa') }}
            {{ Form::text('program_name', $program->program_name, ['class' => 'form-control' . ($errors->has('program_name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre programa']) }}
            {!! $errors->first('program_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Categoría') }}
            {{ Form::select('program_category', [
                "Técnico"         => "Técnico",
                "Tecnológico"     => "Tecnológico",
                "Profesional"     => "Profesional",
                "Especialización" => "Especialización",
                "Maestría"        => "Maestría",
            ], $program->program_category, ['class' => 'form-control' . ($errors->has('program_category') ? ' is-invalid' : ''), 'placeholder' => 'Categoría']) }}
            {!! $errors->first('program_category', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Registro SNIES') }}
            {{ Form::text('snies_register', $program->snies_register, ['class' => 'form-control' . ($errors->has('snies_register') ? ' is-invalid' : ''), 'placeholder' => 'Registro SNIES']) }}
            {!! $errors->first('snies_register', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Teléfono') }}
            {{ Form::text('program_phone', $program->program_phone, ['class' => 'form-control' . ($errors->has('program_phone') ? ' is-invalid' : ''), 'placeholder' => 'Teléfono']) }}
            {!! $errors->first('program_phone', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Estado') }}
            {{ Form::select('status', [1=>'Activo', 0=>'Inactivo'], ($program->status) ?? 1, ['class' => 'form-control' . ($errors->has('status') ? ' is-invalid' : ''), 'placeholder' => 'Estado']) }}
            {!! $errors->first('status', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <br>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </div>
</div>

<script>
    $(document).ready(function() {
        // Is a new record
        $('[name="faculty_id"]').on('change', function() {
            let faculty_id = $(this).val();            
            $.ajax({
                type: "GET",
                url: "/getCoordinations/" + faculty_id,
                cache: false,
                success: function(data) {
                    $('[name="coordination_id"]').empty();
                    $('[name="coordination_id"]').append($('<option>').text("Nombre coordinación").attr('value', ""));
                    $.each(data, function(key, value){
                        $('[name="coordination_id"]').append($('<option>').text(value).attr('value', key));
                    });
                }
            });
        });
    });
</script>