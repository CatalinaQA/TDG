<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('Nombre facultad') }}
            {{ Form::select('faculty_id', $faculties, $subject->faculty_id, ['class' => 'form-control' . ($errors->has('faculty_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre facultad']) }}
            {!! $errors->first('faculty_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre coordinación') }}
            {{ Form::select('coordination_id', $coordinations, $subject->coordination_id, ['class' => 'form-control' . ($errors->has('coordination_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre coordinación']) }}
            {!! $errors->first('coordination_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre programa') }}
            {{ Form::select('program_id', $programs, $subject->program_id, ['class' => 'form-control' . ($errors->has('program_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre programa']) }}
            {!! $errors->first('program_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre area') }}
            {{ Form::select('area_id', $areas, $subject->area_id, ['class' => 'form-control' . ($errors->has('area_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre area']) }}
            {!! $errors->first('area_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Código asignatura') }}
            {{ Form::text('subject_code', $subject->subject_code, ['class' => 'form-control' . ($errors->has('subject_code') ? ' is-invalid' : ''), 'placeholder' => 'Código asignatura']) }}
            {!! $errors->first('subject_code', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre asignatura') }}
            {{ Form::text('subject_name', $subject->subject_name, ['class' => 'form-control' . ($errors->has('subject_name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre asignatura']) }}
            {!! $errors->first('subject_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Créditos asignatura') }}
            {{ Form::text('subject_credits', $subject->subject_credits, ['class' => 'form-control' . ($errors->has('subject_credits') ? ' is-invalid' : ''), 'placeholder' => 'Créditos asignatura']) }}
            {!! $errors->first('subject_credits', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nivel asignatura') }}
            {{ Form::text('subject_level', $subject->subject_level, ['class' => 'form-control' . ($errors->has('subject_level') ? ' is-invalid' : ''), 'placeholder' => 'Nivel asignatura']) }}
            {!! $errors->first('subject_level', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Código pre-requisito 1') }}
            {{ Form::text('prerequisite_code_1', $subject->prerequisite_code_1, ['class' => 'form-control' . ($errors->has('prerequisite_code_1') ? ' is-invalid' : ''), 'placeholder' => 'Código pre-requisito 1']) }}
            {!! $errors->first('prerequisite_code_1', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre pre-requisito 1') }}
            {{ Form::text('prerequisite_name_1', $subject->prerequisite_name_1, ['class' => 'form-control' . ($errors->has('prerequisite_name_1') ? ' is-invalid' : ''), 'placeholder' => 'Nombre pre-requisito 1']) }}
            {!! $errors->first('prerequisite_name_1', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Código pre-requisito 2') }}
            {{ Form::text('prerequisite_code_2', $subject->prerequisite_code_2, ['class' => 'form-control' . ($errors->has('prerequisite_code_2') ? ' is-invalid' : ''), 'placeholder' => 'Código pre-requisito 2']) }}
            {!! $errors->first('prerequisite_code_2', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre pre-requisito 2') }}
            {{ Form::text('prerequisite_name_2', $subject->prerequisite_name_2, ['class' => 'form-control' . ($errors->has('prerequisite_name_2') ? ' is-invalid' : ''), 'placeholder' => 'Nombre pre-requisito 2']) }}
            {!! $errors->first('prerequisite_name_2', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Código co-requisito 1') }}
            {{ Form::text('corequisite_code_1', $subject->corequisite_code_1, ['class' => 'form-control' . ($errors->has('corequisite_code_1') ? ' is-invalid' : ''), 'placeholder' => 'Código co-requisito 1']) }}
            {!! $errors->first('corequisite_code_1', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre co-requisito 1') }}
            {{ Form::text('corequisite_name_1', $subject->corequisite_name_1, ['class' => 'form-control' . ($errors->has('corequisite_name_1') ? ' is-invalid' : ''), 'placeholder' => 'Nombre co-requisito 1']) }}
            {!! $errors->first('corequisite_name_1', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Código co-requisito 2') }}
            {{ Form::text('corequisite_code_2', $subject->corequisite_code_2, ['class' => 'form-control' . ($errors->has('corequisite_code_2') ? ' is-invalid' : ''), 'placeholder' => 'Código co-requisito 2']) }}
            {!! $errors->first('corequisite_code_2', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre co-requisito 2') }}
            {{ Form::text('corequisite_name_2', $subject->corequisite_name_2, ['class' => 'form-control' . ($errors->has('corequisite_name_2') ? ' is-invalid' : ''), 'placeholder' => 'Nombre co-requisito 2']) }}
            {!! $errors->first('corequisite_name_2', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Estado') }}
            {{ Form::select('status', [1=>'Activo', 0=>'Inactivo'], ($subject->status) ?? 1, ['class' => 'form-control' . ($errors->has('status') ? ' is-invalid' : ''), 'placeholder' => 'Estado']) }}
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
        $('[name="faculty_id"]').on('change', function() {
            let faculty_id = $(this).val();
            
            $.ajax({
                type: "GET",
                url: "/getCoordinations/" + faculty_id,
                cache: false,
                success: function(data) {
                    
                    $('[name="coordination_id"]').empty();
                    $('[name="coordination_id"]').append($('<option>').text("Nombre coordinación").attr('value', ""));

                    $('[name="program_id"]').empty();
                    $('[name="program_id"]').append($('<option>').text("Nombre programa").attr('value', ""));
                    
                    $('[name="area_id"]').empty();
                    $('[name="area_id"]').append($('<option>').text("Nombre área").attr('value', ""));

                    $.each(data, function(key, value){
                        $('[name="coordination_id"]').append($('<option>').text(value).attr('value', key));
                    });
                }
            });
        });

        $('[name="coordination_id"]').on('change', function() {
            let faculty_id      = $('[name="faculty_id"]').val();
            let coordination_id = $(this).val();

            $.ajax({
                type: "GET",
                url: "/getPrograms/" + coordination_id + "/faculty_id/" + faculty_id,
                cache: false,
                success: function(data) {

                    $('[name="program_id"]').empty();
                    $('[name="program_id"]').append($('<option>').text("Nombre programa").attr('value', ""));

                    $('[name="area_id"]').empty();
                    $('[name="area_id"]').append($('<option>').text("Nombre área").attr('value', ""));

                    $.each(data, function(key, value){
                        $('[name="program_id"]').append($('<option>').text(value).attr('value', key));
                    });
                }
            });
        });

        $('[name="program_id"]').on('change', function() {
            let faculty_id      = $('[name="faculty_id"]').val();
            let coordination_id = $('[name="coordination_id"]').val();
            let program_id      = $(this).val();

            $.ajax({
                type: "GET",
                url: "/getAreas/" + coordination_id + "/faculty_id/" + faculty_id + "/program_id/" + program_id,
                cache: false,
                success: function(data) {

                    $('[name="area_id"]').empty();
                    $('[name="area_id"]').append($('<option>').text("Nombre área").attr('value', ""));

                    $.each(data, function(key, value){
                        $('[name="area_id"]').append($('<option>').text(value).attr('value', key));
                    });
                }
            });
        });
    });
</script>