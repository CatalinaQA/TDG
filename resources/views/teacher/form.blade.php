<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('Nombre') }}
            {{ Form::text('name', $teacher->name, ['class' => 'form-control' . ($errors->has('name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre']) }}
            {!! $errors->first('name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Documento') }}
            {{ Form::text('document', $teacher->document, ['class' => 'form-control' . ($errors->has('document') ? ' is-invalid' : ''), 'placeholder' => 'Documento']) }}
            {!! $errors->first('document', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Email') }}
            {{ Form::email('email', $teacher->email, ['class' => 'form-control' . ($errors->has('email') ? ' is-invalid' : ''), 'placeholder' => 'Email']) }}
            {!! $errors->first('email', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Número telefónico') }}
            {{ Form::text('phone_number', $teacher->phone_number, ['class' => 'form-control' . ($errors->has('phone_number') ? ' is-invalid' : ''), 'placeholder' => 'Número telefónico']) }}
            {!! $errors->first('phone_number', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Número móvil') }}
            {{ Form::text('cellphone_number', $teacher->cellphone_number, ['class' => 'form-control' . ($errors->has('cellphone_number') ? ' is-invalid' : ''), 'placeholder' => 'Número móvil']) }}
            {!! $errors->first('cellphone_number', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Tipo de contrato') }}
            {{ Form::select('contract_type', 
                ["Tiempo completo" => "Tiempo completo", "Catedra" => "Catedra", "Tiempo ocasional" => "Tiempo ocasional"], 
                $teacher->contract_type, ['class' => 'form-control' . ($errors->has('contract_type') ? ' is-invalid' : ''), 'placeholder' => 'Tipo de contrato']) }}
            {!! $errors->first('contract_type', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Estado') }}
            {{ Form::select('status', [1=>'Activo', 0=>'Inactivo'], ($teacher->status) ?? 1, ['class' => 'form-control' . ($errors->has('status') ? ' is-invalid' : ''), 'placeholder' => 'Estado']) }}
            {!! $errors->first('status', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <br>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </div>
</div>

