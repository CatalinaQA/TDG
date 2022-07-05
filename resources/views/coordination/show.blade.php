@extends('layouts.app')

@section('template_title')
    {{ $coordination->name ?? 'Información Coordinación' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Información Coordinación</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('coordinations.index') }}"> Atrás</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre facultad:</strong>
                            {{ $coordination->faculty->faculty_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre coordinación:</strong>
                            {{ $coordination->coordination_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre profesional:</strong>
                            {{ $coordination->user->name }}
                        </div>
                        <div class="form-group">
                            <strong>Email profesional:</strong>
                            {{ $coordination->user->email }}
                        </div>
                        <div class="form-group">
                            <strong>Teléfono:</strong>
                            {{ $coordination->professional_phone }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre auxiliar:</strong>
                            {{ $coordination->coordination_auxiliar_name }}
                        </div>
                        <div class="form-group">
                            <strong>Email auxiliar:</strong>
                            {{ $coordination->coordination_auxiliar_email }}
                        </div>
                        <div class="form-group">
                            <strong>Teléfono auxiliar:</strong>
                            {{ $coordination->coordination_auxiliar_phone }}
                        </div>
                        <div class="form-group">
                            <strong>Estado:</strong>
                            {{ ($coordination->status == 1) ? 'Activo' : 'Inactivo' }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
