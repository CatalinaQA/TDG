@extends('layouts.app')

@section('template_title')
    {{ $faculty->name ?? 'Información Facultad' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Información Facultad</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('faculties.index') }}"> Atrás</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre:</strong>
                            {{ $faculty->faculty_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre decano:</strong>
                            {{ $faculty->user->name }}
                        </div>
                        <div class="form-group">
                            <strong>Email decano:</strong>
                            {{ $faculty->user->email }}
                        </div>
                        <div class="form-group">
                            <strong>Teléfono:</strong>
                            {{ $faculty->dean_phone }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre auxiliar:</strong>
                            {{ $faculty->faculty_auxiliar_name }}
                        </div>
                        <div class="form-group">
                            <strong>Email auxiliar:</strong>
                            {{ $faculty->faculty_auxiliar_email }}
                        </div>
                        <div class="form-group">
                            <strong>Teléfono auxiliar:</strong>
                            {{ $faculty->faculty_auxiliar_phone }}
                        </div>
                        <div class="form-group">
                            <strong>Estado:</strong>
                            {{ ($faculty->status == 1) ? 'Activo' : 'Inactivo' }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
