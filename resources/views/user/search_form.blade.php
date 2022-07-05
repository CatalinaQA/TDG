<div class="row g-3">
    <div class="col-sm-4">
      {{ Form::text('name', $request['name'], ['class' => 'form-control', 'placeholder' => 'Nombre']) }}
    </div>
    <div class="col-sm">
        {{ Form::select('role',
            [
                    'admin'                     => 'Admin',
                    'profesional especializado' => 'Profesional especializado',
                    'coordinador área'          => 'Coordinador área',
                    'decano'                    => 'Decano',
                    'docente'                   => 'Docente',
                    'admisiones'                => 'Admisiones'
            ], 
            $request['role'], ['class' => 'form-control', 'placeholder' => 'Rol']) }}
    </div>
    <div class="col-sm">
        <button type="submit" class="btn btn-primary">Buscar</button>
    </div>
</div>