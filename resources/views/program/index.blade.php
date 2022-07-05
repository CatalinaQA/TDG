@extends('layouts.app')

@section('template_title')
    Programas
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Programas') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('programs.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Agregar') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <span class="card-title"><b>Buscar programas</b></span>
                        <form method="GET" action="{{ route('programs.index') }}"  role="form">
                            @include('program.search_form')
                        </form>
                    </div>
                    @if ($message = Session::get('success'))
                        <div class="alert alert-success">
                            <p>{{ $message }}</p>
                        </div>
                    @endif

                    <div class="card-body">
                        <div class="table-responsive">
                            <table class="table table-striped table-hover">
                                <thead class="thead">
                                    <tr>
                                        <th>Nombre facultad</th>
										<th>Nombre coordinación</th>
										<th>Nombre programa</th>
										<th>Categoría</th>
										<th>Registro SNIES</th>
										<th>Teléfono</th>
										<th>Estado</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($programs as $program)
                                        <tr>
                                            <td>{{ $program->faculty->faculty_name }}</td>
											<td>{{ $program->coordination->coordination_name }}</td>
											<td>{{ $program->program_name }}</td>
											<td>{{ $program->program_category }}</td>
											<td>{{ $program->snies_register }}</td>
											<td>{{ $program->program_phone }}</td>
											<td>{{ ($program->status == 1) ? 'Activo' : 'Inactivo' }}</td>

                                            <td>
                                                <form action="{{ route('programs.destroy',$program->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('programs.show',$program->id) }}"><i class="fa fa-fw fa-eye"></i> Mostrar</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('programs.edit',$program->id) }}"><i class="fa fa-fw fa-edit"></i> Editar</a>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $programs->links() !!}
            </div>
        </div>
    </div>
@endsection
