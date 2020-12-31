@extends('layout.plantilla')
@section('contenido')
<div class="container">
    <style>
        body{color:#000;font-family:'Open Sans',sans-serif;padding:0px!important;margin:0px!important;font-size:13px;direction:ltr}.text-center{text-align:center}@import url(https://fonts.googleapis.com/css2?family=Roboto:wght@400;700&display=swap);:root{--blue:#2a9fd6;--indigo:#6610f2;--purple:#6f42c1;--pink:#e83e8c;--red:#c00;--orange:#fd7e14;--yellow:#f80;--green:#77b300;--teal:#20c997;--cyan:#93c;--white:#fff;--gray:#555;--gray-dark:#222;--primary:#2a9fd6;--secondary:#555;--success:#77b300;--info:#93c;--warning:#f80;--danger:#c00;--light:#222;--dark:#adafae;--breakpoint-xs:0;--breakpoint-sm:576px;--breakpoint-md:768px;--breakpoint-lg:992px;--breakpoint-xl:1200px;--font-family-sans-serif:Roboto,-apple-system,BlinkMacSystemFont,"Segoe UI","Helvetica Neue",Arial,sans-serif;--font-family-monospace:SFMono-Regular,Menlo,Monaco,Consolas,"Liberation Mono","Courier New",monospace}*,::after,::before{box-sizing:border-box}html{font-family:sans-serif;line-height:1.15;-webkit-text-size-adjust:100%}body{margin:0;font-family:Roboto,-apple-system,BlinkMacSystemFont,"Segoe UI","Helvetica Neue",Arial,sans-serif;font-size:.875rem;font-weight:400;line-height:1.5;color:#adafae;text-align:left;background-color:#060606}h5{margin-top:0;margin-bottom:.5rem}img{vertical-align:middle;border-style:none}label{display:inline-block;margin-bottom:.5rem}button{border-radius:0}button,input{margin:0;font-family:inherit;font-size:inherit;line-height:inherit}button,input{overflow:visible}button{text-transform:none}button{-webkit-appearance:button}button::-moz-focus-inner{padding:0;border-style:none}::-webkit-file-upload-button{font:inherit;-webkit-appearance:button}h5{margin-bottom:.5rem;font-weight:500;line-height:1.2;color:#fff}h5{font-size:1.5rem}.container{width:100%;padding-right:15px;padding-left:15px;margin-right:auto;margin-left:auto}@media (min-width:576px){.container{max-width:540px}}@media (min-width:768px){.container{max-width:720px}}@media (min-width:992px){.container{max-width:960px}}@media (min-width:1200px){.container{max-width:1140px}}.form-control{display:block;width:100%;height:calc(1.5em + .75rem + 2px);padding:.375rem 1rem;font-size:.875rem;font-weight:400;line-height:1.5;color:#282828;background-color:#fff;background-clip:padding-box;border:1px solid #fff;border-radius:.25rem}.form-control::-ms-expand{background-color:transparent;border:0}.form-control:-moz-focusring{color:transparent;text-shadow:0 0 0 #282828}.form-control::-webkit-input-placeholder{color:#555;opacity:1}.form-control::-moz-placeholder{color:#555;opacity:1}.form-control:-ms-input-placeholder{color:#555;opacity:1}.form-control::-ms-input-placeholder{color:#555;opacity:1}.form-group{margin-bottom:1rem}.btn{display:inline-block;font-weight:400;color:#adafae;text-align:center;vertical-align:middle;background-color:transparent;border:1px solid transparent;padding:.375rem 1rem;font-size:.875rem;line-height:1.5;border-radius:.25rem}.btn-success{color:#fff;background-color:#77b300;border-color:#77b300}.btn-lg{padding:.5rem 1rem;font-size:1.09375rem;line-height:1.5;border-radius:.3rem}.btn-block{display:block;width:100%}.input-group{position:relative;display:-ms-flexbox;display:flex;-ms-flex-wrap:wrap;flex-wrap:wrap;-ms-flex-align:stretch;align-items:stretch;width:100%}.input-group>.form-control{position:relative;-ms-flex:1 1 auto;flex:1 1 auto;width:1%;min-width:0;margin-bottom:0}.input-group>.form-control:not(:first-child){border-top-left-radius:0;border-bottom-left-radius:0}.input-group-prepend{display:-ms-flexbox;display:flex}.input-group-prepend{margin-right:-1px}.input-group-text{display:-ms-flexbox;display:flex;-ms-flex-align:center;align-items:center;padding:.375rem 1rem;margin-bottom:0;font-size:.875rem;font-weight:400;line-height:1.5;color:#fff;text-align:center;white-space:nowrap;background-color:#282828;border:1px solid transparent;border-radius:.25rem}.input-group>.input-group-prepend>.input-group-text{border-top-right-radius:0;border-bottom-right-radius:0}.card{position:relative;display:-ms-flexbox;display:flex;-ms-flex-direction:column;flex-direction:column;min-width:0;word-wrap:break-word;background-color:#282828;background-clip:border-box;border:1px solid rgba(0,0,0,.125);border-radius:.25rem}.card-body{-ms-flex:1 1 auto;flex:1 1 auto;min-height:1px;padding:1.25rem}.card-header{padding:.75rem 1.25rem;margin-bottom:0;background-color:rgba(0,0,0,.03);border-bottom:1px solid rgba(0,0,0,.125)}.card-header:first-child{border-radius:calc(.25rem - 1px) calc(.25rem - 1px) 0 0}.card-footer{padding:.75rem 1.25rem;background-color:rgba(0,0,0,.03);border-top:1px solid rgba(0,0,0,.125)}.card-footer:last-child{border-radius:0 0 calc(.25rem - 1px) calc(.25rem - 1px)}.float-left{float:left!important}.mt-4{margin-top:1.5rem!important}.p-3{padding:1rem!important}.my-auto{margin-top:auto!important}.my-auto{margin-bottom:auto!important}.text-center{text-align:center!important}.text-white{color:#fff!important}.text-muted{color:#555!important}.btn-success{background-color:#77b300}.form-control{background-clip:border-box}.card h5{color:inherit}
    </style>
<br>
    <div class="card mt-4">
        <div class="card-body">
            <h4 class="py-2">LISTA GENERAL DE VENTAS 💸</h4>
        </div>
        <div class="card-body">

            <form class="form-inline my-2 my-lg-0 float-right">
                <input name="buscarpor" class="form-control btn-sm mr-sm-2" type="search" placeholder="Buscar"
                    aria-label="Search" value="">
                <button class="btn btn-success btn-sm my-2 my-sm-0" type="submit">Buscar</button>
            </form>
            <a href="{{route('ventas.create')}}" class="btn btn-primary btn-sm my-2 my-sm-0">Nuevo</a>
            @if (session('datos'))
            <div class="alert alert-warning alert-dissmissible fade show mt-3" role="alert">
                {{session('datos')}}
                <button type="button" class="close" data-dismiss="alert" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            @endif
            <br><br>
            <div class="table-responsive">
                <table class="table table-striped">
                    <thead class="thead-dark">
                        <tr>
                            <th scope="col">Codigo</th>
                            <th scope="col">Tipo</th>
                            <th scope="col">Codigo</th>
                            <th scope="col">Fecha</th>
                            <th scope="col">RUC/DNI</th>
                            <th scope="col">NOMBRES/RAZON</th>
                            <th scope="col">TOTAL</th>           
                        </tr>
                    </thead>
                    <tbody>
                        @foreach ($venta as $itemventa)
                        <tr>
                            <td>{{$itemventa->venta_id}}</td>
                            <td>{{$itemventa->Tipo->descripcion}}</td>
                            <td>{{$itemventa->nrodoc}}</td>
                            <td>{{$itemventa->fecha_venta}}</td>
                            <td>{{$itemventa->cliente->ruc_dni}}</td>
                            <td>{{$itemventa->cliente->nombres}}</td>
                            <td>S/. {{$itemventa->total}}</td>           
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>  
        </div>  
    </div>

    
    {{$venta->links()}}
</div>
@endsection