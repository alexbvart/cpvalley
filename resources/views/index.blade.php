<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="utf-8" />
    <title>Valley</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />

    <style>
        body{color:#000;font-family:'Open Sans',sans-serif;padding:0px!important;margin:0px!important;font-size:13px;direction:ltr}.text-center{text-align:center}
    </style>
</head>

<body class="login">

    <div class="logo">
    </div>

    <div class="container my-auto">

        <form method="POST" action="{{ route('login') }}">
            @csrf
            @method('POST')

            <div class="card text-center">
                <div class="card-header">
                    <img src="{{ asset('images/logo-verde.svg') }}" alt="logo de valley">
                </div>
                <div class="card-body">

                    <h5 class="card-text">
                        Hola 👋, por favor, rellena tu información para ingresar a valley.
                    </h5>

                    <div class="form-group mt-4">
                        <label class="control-label float-left">Nombre:</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Nombre de usuario</span>
                            </div>
                            <input class="form-control @error('name') is-invalid @enderror" type="text"
                                placeholder="Administrador" id="name" name="name" value="{{ old('name') }}" />
                            @error('name')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-group mt-4">
                        <label class="control-label float-left">Contraseña:</label>
                        <div class="input-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text">Contraseña</span>
                            </div>
                            <input class="form-control @error('password') is-invalid @enderror" type="password"
                                placeholder="********" id="password" name="password" value="{{ old('password') }}" />
                            @error('password')
                                <span class="invalid-feedback" role="alert">
                                    <strong>{{ $message }}</strong>
                                </span>
                            @enderror
                        </div>
                    </div>

                    <div class="form-actions mt-4">
                        <button class="btn btn-success btn-block btn-lg text-white uppercase bg-black">
                            Ingresar
                        </button>
                    </div>
                </div>
                <div class="card-footer text-muted">
                    2020 &copy; Sistema de ventas Valley.
                </div>
            </div>
        </form>
    </div>

    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/style.css">
    
    <link rel="stylesheet" href="/adminlte/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/adminlte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <link rel="stylesheet" href="/adminlte/dist/css/adminlte.min.css">

    <script src="/adminlte/plugins/jquery/jquery.min.js"></script>
    <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/adminlte/dist/js/adminlte.min.js"></script>
    
    

</body>

</html>
