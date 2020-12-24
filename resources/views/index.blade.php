<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8" />
    <title>Valley</title>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <link rel="stylesheet" href="/adminlte/plugins/fontawesome-free/css/all.min.css">
    <link rel="stylesheet" href="/adminlte/plugins/tempusdominus-bootstrap-4/css/tempusdominus-bootstrap-4.min.css">
    <link rel="stylesheet" href="/adminlte/dist/css/adminlte.min.css">
    <link rel="stylesheet" href="css/login.css">
    <link rel="stylesheet" href="css/style.css">
    <link href="https://unpkg.com/tailwindcss@^2/dist/tailwind.min.css" rel="stylesheet">
</head>

<body class="login">

    


    <div class="logo">

    </div>
    <div class="container my-auto">

        <form method="POST" action="{{ route('login') }}">
            @csrf
            @method('POST')
            <h4 class="text-xl font-semibold">Hola 👋, <span class="font-normal">por favor, rellene con tu información para
                ingresar a
                <span class="text-xl font-semibold color-green-dark"> valley</span>.
                </span>
            </h4>

            <div class="form-group mt-4">
                <label class="control-label">Nombre:</label>
                <div class="input-icon">
                    <input class="form-control @error('name') is-invalid @enderror
                                block w-full p-3 mt-2 text-gray-600 bg-gray-200 appearance-none focus:outline-none focus:bg-gray-300 focus:shadow-inner
                    
                    " type="text"
                        placeholder="Ingrese su nombre de usuario" id="name" name="name" value="{{ old('name') }}" />
                    @error('name')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>
            <br>
            <div class="form-group">
                <label class="control-label">Contraseña:</label>
                <div class="input-icon">
                    <input class="form-control @error('password') is-invalid @enderror" type="password"
                        placeholder="Ingrese contraseña" id="password" name="password" value="{{ old('password') }}" />
                    @error('password')
                        <span class="invalid-feedback" role="alert">
                            <strong>{{ $message }}</strong>
                        </span>
                    @enderror
                </div>
            </div>

            <hr />
            <div class="form-actions">
                <button class="btn btn-success btn-block btn-lg text-white uppercase bg-black">
                    Ingresar
                </button>
            </div>
            <hr />
        </form>
    </div>
    <div class="copyright mt-2">
        2020 &copy; Sistema de ventas Valley.
    </div>





    <script src="/adminlte/plugins/jquery/jquery.min.js"></script>
    <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="/adminlte/dist/js/adminlte.min.js"></script>

</body>

</html>
