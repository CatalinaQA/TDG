<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('Sede') }}
            {{ Form::text('campus', $campus[$schedule->campus], ['class' => 'form-control' . ($errors->has('campus') ? ' is-invalid' : ''), 'placeholder' => 'Sede', 'disabled']) }}
            {!! $errors->first('campus', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Código') }}
            {{ Form::text('subject_code', $schedule->subject->subject_code, ['class' => 'form-control' . ($errors->has('subject_code') ? ' is-invalid' : ''), 'placeholder' => 'Código', 'disabled']) }}
            {!! $errors->first('subject_code', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Groupo') }}
            {{ Form::number('group', $schedule->group, ['class' => 'form-control' . ($errors->has('group') ? ' is-invalid' : ''), 'placeholder' => 'Groupo']) }}
            {!! $errors->first('group', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre') }}
            {{ Form::text('subject_name', $schedule->subject->subject_name, ['class' => 'form-control' . ($errors->has('subject_name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre', 'disabled']) }}
            {!! $errors->first('area_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Detalle') }}
            {{ Form::text('detail', $schedule->detail, ['class' => 'form-control' . ($errors->has('detail') ? ' is-invalid' : ''), 'placeholder' => 'Detalle', 'disabled']) }}
            {!! $errors->first('detail', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Día') }}
            {{ Form::select('day', $days, $schedule->day, ['class' => 'form-control' . ($errors->has('day') ? ' is-invalid' : ''), 'placeholder' => 'Día']) }}
            {!! $errors->first('day', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Hora inicio') }}
            {{ Form::time('start_hour', $start_hour, ['class' => 'form-control' . ($errors->has('start_hour') ? ' is-invalid' : ''), 'placeholder' => 'Hora inicio']) }}
            {!! $errors->first('start_hour', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Hora final') }}
            {{ Form::time('end_hour', $end_hour, ['class' => 'form-control' . ($errors->has('end_hour') ? ' is-invalid' : ''), 'placeholder' => 'Hora final']) }}
            {!! $errors->first('end_hour', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Aula') }}
            {{ Form::text('classroom', $schedule->classroom, ['class' => 'form-control' . ($errors->has('classroom') ? ' is-invalid' : ''), 'placeholder' => 'Aula']) }}
            {!! $errors->first('classroom', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Actividad') }}
            {{ Form::text('activity', $schedule->activity, ['class' => 'form-control' . ($errors->has('activity') ? ' is-invalid' : ''), 'placeholder' => 'Actividad', 'disabled']) }}
            {!! $errors->first('activity', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nivel estudio') }}
            {{ Form::text('subject_level', $schedule->subject->subject_level, ['class' => 'form-control' . ($errors->has('subject_level') ? ' is-invalid' : ''), 'placeholder' => 'Nivel estudio', 'disabled']) }}
            {!! $errors->first('subject_level', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Créditos') }}
            {{ Form::text('credits', $schedule->subject->credits, ['class' => 'form-control' . ($errors->has('credits') ? ' is-invalid' : ''), 'placeholder' => 'Créditos', 'disabled']) }}
            {!! $errors->first('credits', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Capacidad aula') }}
            {{ Form::number('classroom_capacity', $schedule->classroom_capacity, ['class' => 'form-control' . ($errors->has('classroom_capacity') ? ' is-invalid' : ''), 'placeholder' => 'Capacidad aula']) }}
            {!! $errors->first('classroom_capacity', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Capacidad programada') }}
            {{ Form::number('scheduled_capacity', $schedule->scheduled_capacity, ['class' => 'form-control' . ($errors->has('scheduled_capacity') ? ' is-invalid' : ''), 'placeholder' => 'Capacidad programada']) }}
            {!! $errors->first('scheduled_capacity', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Matriculados') }}
            {{ Form::text('enrolled', $schedule->enrolled, ['class' => 'form-control' . ($errors->has('enrolled') ? ' is-invalid' : ''), 'placeholder' => 'Matriculados', 'disabled']) }}
            {!! $errors->first('enrolled', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Programa') }}
            {{ Form::text('program_name', $schedule->program->program_name, ['class' => 'form-control' . ($errors->has('program_name') ? ' is-invalid' : ''), 'placeholder' => 'Programa', 'disabled']) }}
            {!! $errors->first('program_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Plan') }}
            {{ Form::text('plan', $schedule->plan, ['class' => 'form-control' . ($errors->has('plan') ? ' is-invalid' : ''), 'placeholder' => 'Plan', 'disabled']) }}
            {!! $errors->first('plan', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Total horas') }}
            {{ Form::text('total_hours', $schedule->total_hours, ['class' => 'form-control' . ($errors->has('total_hours') ? ' is-invalid' : ''), 'placeholder' => 'Total horas', 'disabled']) }}
            {!! $errors->first('total_hours', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Horas asesorías') }}
            {{ Form::number('consultancies', $schedule->consultancies, ['class' => 'form-control' . ($errors->has('consultancies') ? ' is-invalid' : ''), 'placeholder' => 'Horas asesorías']) }}
            {!! $errors->first('consultancies', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Horas evaluación') }}
            {{ Form::number('evaluation_hours', $schedule->evaluation_hours, ['class' => 'form-control' . ($errors->has('evaluation_hours') ? ' is-invalid' : ''), 'placeholder' => 'Horas evaluación']) }}
            {!! $errors->first('evaluation_hours', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Docente') }}
            {{ Form::select('teacher', $teachers, ($schedule->teacher != "") ? $schedule->teachers->id : "", ['class' => 'form-control' . ($errors->has('teacher') ? ' is-invalid' : ''), 'placeholder' => 'Docente']) }}
            {!! $errors->first('teacher', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Área') }}
            {{ Form::text('area_name', $schedule->area->area_name, ['class' => 'form-control' . ($errors->has('area_name') ? ' is-invalid' : ''), 'placeholder' => 'Área', 'disabled']) }}
            {!! $errors->first('area_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Coordinador') }}
            {{ Form::text('coordinator_name', $schedule->area->coordinator_name, ['class' => 'form-control' . ($errors->has('coordinator_name') ? ' is-invalid' : ''), 'placeholder' => 'Coordinador', 'disabled']) }}
            {!! $errors->first('coordinator_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Observaciones') }}
            {{ Form::text('observations', $schedule->observations, ['class' => 'form-control' . ($errors->has('observations') ? ' is-invalid' : ''), 'placeholder' => 'Observaciones']) }}
            {!! $errors->first('observations', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <br>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </div>
</div>