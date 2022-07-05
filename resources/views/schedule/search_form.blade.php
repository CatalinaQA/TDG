<div class="row g-3">
    <div class="col-sm-2">
        {{ Form::label('Sede') }}
        {{ Form::select('campus', $campus, $request['campus'], ['class' => 'form-control', 'placeholder' => 'Sede']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::label('Código ó nombre asignatura') }}
        {{ Form::text('subject_name', $request['subject_name'], ['class' => 'form-control', 'placeholder' => 'Código o nombre asignatura']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::label('Groupo') }}
        {{ Form::number('group',$request['group'], ['class' => 'form-control', 'placeholder' => 'Groupo']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::label('Día') }}
        {{ Form::select('day', $days, $request['day'], ['class' => 'form-control', 'placeholder' => 'Día']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::label('Hora inicio') }}
        {{ Form::time('start_hour',$request['start_hour'], ['class' => 'form-control', 'placeholder' => 'Hora inicio']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::label('Hora final') }}
        {{ Form::time('end_hour',$request['end_hour'], ['class' => 'form-control', 'placeholder' => 'Hora final']) }}
    </div>
</div>
<br>
<div class="row g-3">
    <div class="col-sm-2">
        {{ Form::label('Aula') }}
        {{ Form::text('classroom', $request['classroom'], ['class' => 'form-control', 'placeholder' => 'Aula']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::label('Actividad') }}
        {{ Form::text('activity', $request['activity'], ['class' => 'form-control', 'placeholder' => 'Actividad']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::label('Nivel estudio') }}
        {{ Form::number('subject_level',$request['subject_level'], ['class' => 'form-control', 'placeholder' => 'Nivel estudio']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::label('Nombre programa') }}
        {{ Form::select('program_id', $programs, $request['program_id'], ['class' => 'form-control', 'placeholder' => 'Nombre programa']) }}
    </div>
    <div class="col-sm-2">
        {{ Form::label('Documento ó nombre docente') }}
        {{ Form::text('teacher_name', $request['teacher_name'], ['class' => 'form-control', 'placeholder' => 'Documento ó nombre docente']) }}
    </div>    
</div>
<br>
<div class="row g-3">
    <div class="col-sm-4">
        {{ Form::select('area_id', $areas, $request['area_id'], ['class' => 'form-control', 'placeholder' => 'Nombre área']) }}
    </div>
    <div class="col-sm-4">
        {{ Form::text('coordinator_name', $request['coordinator_name'], ['class' => 'form-control', 'placeholder' => 'Nombre coordinador area']) }}
    </div>
    <div class="col-sm">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </div>
</div>