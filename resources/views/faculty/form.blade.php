<div class="box box-info padding-1">
    <div class="box-body">

        <div class="form-group">
            {{ Form::label('Nombre') }}
            {{ Form::text('faculty_name', $faculty->faculty_name, ['class' => 'form-control' . ($errors->has('faculty_name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre']) }}
            {!! $errors->first('faculty_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre decano') }}
            {{ Form::select('dean', $deans, $faculty->dean,['class' => 'form-control' . ($errors->has('dean') ? ' is-invalid' : ''), 'placeholder' => 'Nombre decano']) }}
            {!! $errors->first('dean', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Teléfono') }}
            {{ Form::text('dean_phone', $faculty->dean_phone, ['class' => 'form-control' . ($errors->has('dean_phone') ? ' is-invalid' : ''), 'placeholder' => 'Teléfono']) }}
            {!! $errors->first('dean_phone', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Nombre auxiliar') }}
            {{ Form::text('faculty_auxiliar_name', $faculty->faculty_auxiliar_name, ['class' => 'form-control' . ($errors->has('faculty_auxiliar_name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre auxiliar']) }}
            {!! $errors->first('faculty_auxiliar_name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Email auxiliar') }}
            {{ Form::email('faculty_auxiliar_email', $faculty->faculty_auxiliar_email, ['class' => 'form-control' . ($errors->has('faculty_auxiliar_email') ? ' is-invalid' : ''), 'placeholder' => 'Email auxiliar']) }}
            {!! $errors->first('faculty_auxiliar_email', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Teléfono auxiliar') }}
            {{ Form::text('faculty_auxiliar_phone', $faculty->faculty_auxiliar_phone, ['class' => 'form-control' . ($errors->has('faculty_auxiliar_phone') ? ' is-invalid' : ''), 'placeholder' => 'Teléfono auxiliar']) }}
            {!! $errors->first('faculty_auxiliar_phone', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Estado') }}
            {{ Form::select('status', [1=>'Activo', 0=>'Inactivo'], ($faculty->status) ?? 1, ['class' => 'form-control' . ($errors->has('status') ? ' is-invalid' : ''), 'placeholder' => 'Estado']) }}
            {!! $errors->first('status', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <br>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </div>
</div>
