@extends('layouts.app')

@section('template_title')
    {{ $teacher->name ?? 'Información Docente' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Información Docente</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('teachers.index') }}"> Atrás</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre:</strong>
                            {{ $teacher->name }}
                        </div>
                        <div class="form-group">
                            <strong>Documento:</strong>
                            {{ $teacher->document }}
                        </div>
                        <div class="form-group">
                            <strong>Email:</strong>
                            {{ $teacher->email }}
                        </div>
                        <div class="form-group">
                            <strong>Número móvil:</strong>
                            {{ $teacher->cellphone_number }}
                        </div>
                        <div class="form-group">
                            <strong>Tipo de contrato:</strong>
                            {{ $teacher->contract_type }}
                        </div>
                        <div class="form-group">
                            <strong>Estado:</strong>
                            {{ ($teacher->status == 1) ? 'Activo' : 'Inactivo' }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
