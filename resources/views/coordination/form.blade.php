<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('Nombre facultad') }}
            {{ Form::select('faculty_id', $faculties, $coordination->faculty_id, ['class' => 'form-control' . ($errors->has('faculty_id') ? ' is-invalid' : ''), 'placeholder' => 'Nombre facultad']) }}
            {!! $errors->first('faculty_id', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre coordinación') }}
            {{ Form::text('coordination_name', $coordination->coordination_name, ['class' => 'form-control' . ($errors->has('coordination_name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre coordinación']) }}
            {!! $errors->first('coordination_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre profesional') }}
            {{ Form::select('coordinator', $coordinators, $coordination->coordinator,['class' => 'form-control' . ($errors->has('coordinator') ? ' is-invalid' : ''), 'placeholder' => 'Nombre profesional']) }}
            {!! $errors->first('coordinator', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Teléfono') }}
            {{ Form::text('professional_phone', $coordination->professional_phone, ['class' => 'form-control' . ($errors->has('professional_phone') ? ' is-invalid' : ''), 'placeholder' => 'Teléfono']) }}
            {!! $errors->first('professional_phone', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre auxiliar') }}
            {{ Form::text('coordination_auxiliar_name', $coordination->coordination_auxiliar_name, ['class' => 'form-control' . ($errors->has('coordination_auxiliar_name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre auxiliar']) }}
            {!! $errors->first('coordination_auxiliar_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Email auxiliar') }}
            {{ Form::email('coordination_auxiliar_email', $coordination->coordination_auxiliar_email, ['class' => 'form-control' . ($errors->has('coordination_auxiliar_email') ? ' is-invalid' : ''), 'placeholder' => 'Email auxiliar']) }}
            {!! $errors->first('coordination_auxiliar_email', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Teléfono auxiliar') }}
            {{ Form::text('coordination_auxiliar_phone', $coordination->coordination_auxiliar_phone, ['class' => 'form-control' . ($errors->has('coordination_auxiliar_phone') ? ' is-invalid' : ''), 'placeholder' => 'Teléfono auxiliar']) }}
            {!! $errors->first('coordination_auxiliar_phone', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Estado') }}
            {{ Form::select('status', [1=>'Activo', 0=>'Inactivo'], ($coordination->status) ?? 1, ['class' => 'form-control' . ($errors->has('status') ? ' is-invalid' : ''), 'placeholder' => 'Estado']) }}
            {!! $errors->first('status', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <br>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </div>
</div>