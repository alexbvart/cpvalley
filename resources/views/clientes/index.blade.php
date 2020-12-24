@extends('layout.plantilla')
@section('contenido')
<br>
<div class="card">
  <div class="card-header">
    <h4><strong>Clientes  👨🏻‍🌾</strong></h4>
  </div>
  <div class="card-body">
  <div class="py-4">
    <form class="form-inline my-2 my-lg-0 float-right">
      <input name="buscarpor" class="form-control btn-sm mr-sm-2" type="search" placeholder="Buscar por ruc/dni"
        aria-label="Search" value="{{$buscarpor}}">
      <button class="btn btn-success btn-sm my-2 my-sm-0" type="submit">Buscar</button>
    </form>

    <a href="{{route('clientes.create')}}" class="btn btn-sm btn-primary my-2 my-sm-0">
      + Nuevo Cliente
    </a>
  </div>

      @if (session('datos'))
      <div class="alert alert-warning alert-dissmissible fade show mt-3" role="alert">
        {{session('datos')}}
        <button type="button" class="close" data-dismiss="alert" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      @endif
      <div class="table-responsive">
      <table class="table table table-striped">
        <thead class="thead-dark">
          <tr>
            <th scope="col">Código</th>
            <th scope="col">RUC/DNI</th>
            <th scope="col">Nombres/Razón</th>
            <th scope="col">Email</th>        
            <th scope="col">Dirección</th>
            <th scope="col">Opciones</th>
          </tr>
        </thead>
        <tbody>
          @foreach ($clientes as $item)
          <tr>
            <td scope="row" >{{$item->cliente_id}}</td>
            <td>{{$item->ruc_dni}}</td>
            <td>{{$item->nombres}}</td>
            <td>{{$item->email}}</td>
            <td>{{$item->direccion}}</td>
            <td>
              <a href="{{route('clientes.edit',$item->cliente_id)}}" class="btn btn-sm btn-warning mr-2">
                <i class="fas fa-edit pr-1"></i>Editar</a>
              <a href="{{route('clientes.show',$item->cliente_id)}}" class="btn btn-sm btn-danger ">
                <i class="fas fa-trash pr-1"></i>Quitar</a>
            </td>
          </tr>
          @endforeach
        </tbody>
      </table>
      </div>
      {{$clientes->links()}}

  </div>
</div>
@endsection