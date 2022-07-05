@extends('layouts.app')

@section('template_title')
    Coordinaciones
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Coordinaciones') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('coordinations.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Agregar') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <span class="card-title"><b>Buscar coordinaciones</b></span>
                        <form method="GET" action="{{ route('coordinations.index') }}"  role="form">
                            @include('coordination.search_form')
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
										<th>Nombre profesional</th>
										<th>Email profesional</th>
										<th>Teléfono</th>
										<th>Nombre auxiliar</th>
										<th>Email auxiliar</th>
										<th>Teléfono auxiliar</th>
										<th>Estado</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($coordinations as $coordination)
                                        <tr>
                                            <td>{{ $coordination->faculty->faculty_name }}</td>
											<td>{{ $coordination->coordination_name }}</td>
											<td>{{ $coordination->user->name }}</td>
											<td>{{ $coordination->user->email }}</td>
											<td>{{ $coordination->professional_phone }}</td>
											<td>{{ $coordination->coordination_auxiliar_name }}</td>
											<td>{{ $coordination->coordination_auxiliar_email }}</td>
											<td>{{ $coordination->coordination_auxiliar_phone }}</td>
											<td>{{ ($coordination->status == 1) ? 'Activo' : 'Inactivo' }}</td>

                                            <td>
                                                <form action="{{ route('coordinations.destroy',$coordination->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('coordinations.show',$coordination->id) }}"><i class="fa fa-fw fa-eye"></i> Mostrar</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('coordinations.edit',$coordination->id) }}"><i class="fa fa-fw fa-edit"></i> Editar</a>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $coordinations->links() !!}
            </div>
        </div>
    </div>
@endsection
