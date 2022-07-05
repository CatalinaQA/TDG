@extends('layouts.app')

@section('template_title')
    {{ $program->name ?? 'Información Programa' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Información Programa</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('programs.index') }}"> Atrás</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre facultad:</strong>
                            {{ $program->faculty->faculty_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre coordinación:</strong>
                            {{ $program->coordination->coordination_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre programa:</strong>
                            {{ $program->program_name }}
                        </div>
                        <div class="form-group">
                            <strong>Categoría:</strong>
                            {{ $program->program_category }}
                        </div>
                        <div class="form-group">
                            <strong>Registro SNIES:</strong>
                            {{ $program->snies_register }}
                        </div>
                        <div class="form-group">
                            <strong>Teléfono:</strong>
                            {{ $program->program_phone }}
                        </div>
                        <div class="form-group">
                            <strong>Estado:</strong>
                            {{ ($program->status == 1) ? 'Activo' : 'Inactivo' }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
