@extends('layouts.app')

@section('template_title')
    Áreas
@endsection

@section('content')
    <div class="container-fluid">
        <div class="row">
            <div class="col-sm-12">
                <div class="card">
                    <div class="card-header">
                        <div style="display: flex; justify-content: space-between; align-items: center;">

                            <span id="card_title">
                                {{ __('Áreas') }}
                            </span>

                             <div class="float-right">
                                <a href="{{ route('areas.create') }}" class="btn btn-primary btn-sm float-right"  data-placement="left">
                                  {{ __('Agregar') }}
                                </a>
                              </div>
                        </div>
                    </div>
                    <div class="card-body">
                        <span class="card-title"><b>Buscar áreas</b></span>
                        <form method="GET" action="{{ route('areas.index') }}"  role="form">
                            @include('area.search_form')
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
										<th>Nombre área</th>
										<th>Nombre coordinador</th>
										<th>Email coordinador</th>
										<th>Estado</th>

                                        <th></th>
                                    </tr>
                                </thead>
                                <tbody>
                                    @foreach ($areas as $area)
                                        <tr>
                                            <td>{{ $area->faculty->faculty_name }}</td>
											<td>{{ $area->coordination->coordination_name }}</td>
											<td>{{ $area->program->program_name }}</td>
											<td>{{ $area->area_name }}</td>
											<td>{{ $area->user->name }}</td>
											<td>{{ $area->user->email }}</td>
											<td>{{ ($area->status == 1) ? 'Activo' : 'Inactivo' }}</td>

                                            <td>
                                                <form action="{{ route('areas.destroy',$area->id) }}" method="POST">
                                                    <a class="btn btn-sm btn-primary " href="{{ route('areas.show',$area->id) }}"><i class="fa fa-fw fa-eye"></i> Mostrar</a>
                                                    <a class="btn btn-sm btn-success" href="{{ route('areas.edit',$area->id) }}"><i class="fa fa-fw fa-edit"></i> Editar</a>
                                                </form>
                                            </td>
                                        </tr>
                                    @endforeach
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
                {!! $areas->links() !!}
            </div>
        </div>
    </div>
@endsection
