@extends('layouts.app')

@section('template_title')
    {{ $area->name ?? 'Información Área' }}
@endsection

@section('content')
    <section class="content container-fluid">
        <div class="row">
            <div class="col-md-12">
                <div class="card">
                    <div class="card-header">
                        <div class="float-left">
                            <span class="card-title">Información Área</span>
                        </div>
                        <div class="float-right">
                            <a class="btn btn-primary" href="{{ route('areas.index') }}"> Atrás</a>
                        </div>
                    </div>

                    <div class="card-body">
                        
                        <div class="form-group">
                            <strong>Nombre facultad:</strong>
                            {{ $area->faculty->faculty_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre coordinación:</strong>
                            {{ $area->coordination->coordination_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre programa:</strong>
                            {{ $area->program->program_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre área:</strong>
                            {{ $area->area_name }}
                        </div>
                        <div class="form-group">
                            <strong>Nombre coordinador:</strong>
                            {{ $area->user->name }}
                        </div>
                        <div class="form-group">
                            <strong>Email coordinador:</strong>
                            {{ $area->user->email }}
                        </div>
                        <div class="form-group">
                            <strong>Estado:</strong>
                            {{ ($area->status == 1) ? 'Activo' : 'Inactivo' }}
                        </div>

                    </div>
                </div>
            </div>
        </div>
    </section>
@endsection
