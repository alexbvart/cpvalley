<!DOCTYPE html>
<html>

<head>
  <meta charset="utf-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <title>Valley </title>
  <!-- Tell the browser to be responsive to screen width -->
  <meta name="viewport" content="width=device-width, initial-scale=1">

  

  <!-- Fonts -->
  <!-- Styles -->
  <link href="{{ asset('css/bootstrap.min.css') }}" rel="stylesheet">
  <link href="{{ asset('css/appapp.css') }}" rel="stylesheet">
  <!-- Scripts -->
  <script src="{{ asset('js/app.js') }}" defer></script>


  <!-- overlayScrollbars -->
  <link rel="stylesheet" href="/adminlte/dist/css/adminlte.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="/adminlte/plugins/fontawesome-free/css/all.min.css">
  <!-- Ionicons -->
  <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">

  <!-- Google Font: Source Sans Pro -->
  <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:300,400,400i,700" rel="stylesheet">
    <!-- jQuery -->
    <script src="/adminlte/plugins/jquery/jquery.min.js"></script>
    <!-- Bootstrap 4 -->
    <script src="/adminlte/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
  <!-- AdminLTE App -->
  <script src="/adminlte/dist/js/adminlte.min.js"></script>
  <!-- AdminLTE for demo purposes -->
  <script src="/adminlte/dist/js/demo.js"></script>
  @yield('estilos')

</head>

<body class="hold-transition sidebar-mini sidebar-collapse">


  <div class="wrapper">



    <nav class="main-header navbar navbar-expand navbar-white navbar-light ">
      <ul class="navbar-nav d-flex justify-content-between">
        <li class="nav-item">
          <a class="nav-link" 
              data-widget="pushmenu" 
              href="#" 
              role="button">
              <i class="fas fa-bars"></i>
          </a>
        </li>
        <li class="nav-item user-panel d-flex my-auto ">
          <div class="image ">
            <img src="https://thumbs.dreamstime.com/b/default-avatar-profile-icon-vector-social-media-user-image-182145777.jpg" 
                  class="img-circle " alt="User Image">
          </div>
          <div class="info">
            <a href="#" class="d-block">{{ Auth::user()->name }} </a>
          </div>

            <form action="{{ route('logout') }}" method="POST"
              class="nav-item has-treeview ml-4 my-auto"
              >
              @csrf
              <button class="btn btn-primary btn-block" type="submit">Cerrar Sesión</button>
            </form>
        </li>


        

      </ul>
    </nav>



    <!-- Main Sidebar Container -->
    <aside class="main-sidebar sidebar-light-primary ">
      <!-- Brand Logo -->
      <a href="#" class="brand-link d-flex  justify-content-center">
        <img src="{{asset('images/logo-verde.svg')}}" alt="logo de valley">
      </a>

      <!-- Sidebar -->
      <div class="sidebar">
        
        <nav class="mt-2">
          <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">

            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-list-alt"></i>
                <p>
                  Acciones
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">
                <li class="nav-item">
                  <a href="{{ URL::to('/ventas') }}" class="nav-link">
                    <i class="fas fa-shopping-cart nav-icon"></i>
                    <p>Registrar venta</p>
                  </a>
                </li>
              </ul>
            </li>




            
            <li class="nav-item has-treeview">
              <a href="#" class="nav-link">
                <i class="nav-icon fas fa-tools"></i>
                <p>
                  Administración
                  <i class="right fas fa-angle-left"></i>
                </p>
              </a>
              <ul class="nav nav-treeview">

                <li class="nav-item">
                  <a href="{{ URL::to('/productos') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Productos</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="{{ route('clientes.index') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Clientes</p>
                  </a>
                </li>

                <li class="nav-item">
                  <a href="{{ URL::to('/categoria') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Categorias</p>
                  </a>
                </li>
                <li class="nav-item">
                  <a href="{{ URL::to('/unidad') }}" class="nav-link">
                    <i class="far fa-circle nav-icon"></i>
                    <p>Unidades</p>
                  </a>
                </li>
              </ul>
            </li>



            

          </ul>
        </nav>
        <!-- /.sidebar-menu -->
      </div>
      <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper">
      <!-- Content Header (Page header) -->


      <!-- Main content -->
      <section class="content">
        @yield('contenido')
      </section>
      <!-- /.content -->
    </div>
    <!-- /.content-wrapper -->



    <!-- Control Sidebar -->
    <aside class="control-sidebar control-sidebar-dark">
      <!-- Control sidebar content goes here -->
    </aside>
    <!-- /.control-sidebar -->
  </div>
  <!-- ./wrapper -->


  @yield('script')

  

</body>

</html>