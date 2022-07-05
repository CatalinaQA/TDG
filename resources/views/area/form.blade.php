<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('Nombre facultad') }}
            {{ Form::select('faculty_id', $faculties, $area->faculty_id, ['class' => 'form-control' . ($errors->has('faculty_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre facultad']) }}
            {!! $errors->first('faculty_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre coordinación') }}
            {{ Form::select('coordination_id', $coordinations, $area->coordination_id, ['class' => 'form-control' . ($errors->has('coordination_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre coordinación']) }}
            {!! $errors->first('coordination_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre programa') }}
            {{ Form::select('program_id', $programs, $area->program_id, ['class' => 'form-control' . ($errors->has('program_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre programa']) }}
            {!! $errors->first('program_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre área') }}
            {{ Form::text('area_name', $area->area_name, ['class' => 'form-control' . ($errors->has('area_name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre área']) }}
            {!! $errors->first('area_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre coordinador') }}
            {{ Form::select('area_coordinator', $coordinators, $area->area_coordinator,['class' => 'form-control' . ($errors->has('area_coordinator') ? ' is-invalid' : ''), 'placeholder' => 'Nombre coordinador']) }}
            {!! $errors->first('area_coordinator', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Estado') }}
            {{ Form::select('status', [1=>'Activo', 0=>'Inactivo'], ($area->status) ?? 1, ['class' => 'form-control' . ($errors->has('status') ? ' is-invalid' : ''), 'placeholder' => 'Estado']) }}
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

                    $.each(data, function(key, value){
                        $('[name="program_id"]').append($('<option>').text(value).attr('value', key));
                    });
                }
            });
        });
    });
</script>