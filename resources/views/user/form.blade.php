<div class="box box-info padding-1">
    <div class="box-body">
        
        <div class="form-group">
            {{ Form::label('Nombre') }}
            {{ Form::text('name', $user->name, ['class' => 'form-control' . ($errors->has('name') ? ' is-invalid' : ''), 'placeholder' => 'Nombre']) }}
            {!! $errors->first('name', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('email') }}
            {{ Form::text('email', $user->email, ['class' => 'form-control' . ($errors->has('email') ? ' is-invalid' : ''), 'placeholder' => 'Email']) }}
            {!! $errors->first('email', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('role') }}
            {{ Form::select('role', 
                [
                    'admin'                     => 'Admin',
                    'profesional especializado' => 'Profesional especializado',
                    'coordinador área'          => 'Coordinador área',
                    'decano'                    => 'Decano',
                    'docente'                   => 'Docente',
                    'admisiones'                => 'Admisiones'
                ], 
                $user->role, ['class' => 'form-control' . ($errors->has('role') ? ' is-invalid' : ''), 'placeholder' => 'Role']) }}
            {!! $errors->first('role', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Documento') }}
            {{ Form::text('document', $user->document, ['class' => 'form-control' . ($errors->has('document') ? ' is-invalid' : ''), 'placeholder' => 'Documento']) }}
            {!! $errors->first('document', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Celular') }}
            {{ Form::text('cellphone_number', $user->cellphone_number, ['class' => 'form-control' . ($errors->has('cellphone_number') ? ' is-invalid' : ''), 'placeholder' => 'Celular']) }}
            {!! $errors->first('cellphone_number', '<div class="invalid-feedback">:message</p>') !!}
        </div>
        <div class="form-group">
            {{ Form::label('Tipo de contrato') }}
            {{ Form::select('contract_type', 
                ["Tiempo completo" => "Tiempo completo", "Catedra" => "Catedra", "Tiempo ocasional" => "Tiempo ocasional"], 
                $user->contract_type, ['class' => 'form-control' . ($errors->has('contract_type') ? ' is-invalid' : ''), 'placeholder' => 'Tipo de contrato']) }}
            {!! $errors->first('contract_type', '<div class="invalid-feedback">:message</p>') !!}
        </div>

    </div>
    <div class="box-footer mt20">
        <br>
        <button type="submit" class="btn btn-primary">Guardar</button>
    </div>
</div>