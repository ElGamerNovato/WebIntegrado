<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="apple-touch-icon" sizes="76x76" href="/AvanceProject-1/assets/img/apple-icon.png">
        <link rel="icon" type="image/png" href="/AvanceProject-1/assets/img/favicon.png">
        <title>
            Ingresar
        </title>
        <!--     Fonts and icons     -->
        <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,400,600,700" rel="stylesheet" />
        <!-- Nucleo Icons -->
        <link href="/AvanceProject-1/assets/css/nucleo-icons.css" rel="stylesheet" />
        <link href="/AvanceProject-1/assets/css/nucleo-svg.css" rel="stylesheet" />
        <!-- Font Awesome Icons -->
        <script src="https://kit.fontawesome.com/42d5adcbca.js" crossorigin="anonymous"></script>
        <link href="/AvanceProject-1/assets/css/nucleo-svg.css" rel="stylesheet" />
        <!-- CSS Files -->
        <link id="pagestyle" href="/AvanceProject-1/assets/css/soft-ui-dashboard.css?v=1.0.7" rel="stylesheet" />
        <link href="/AvanceProject-1/assets/css/newdesign.css" rel="stylesheet" type="text/css"/>
        <script defer data-site="YOUR_DOMAIN_HERE" src="https://api.nepcha.com/js/nepcha-analytics.js"></script>
    </head>
    <body class="">
        <main class="main-content  mt-0">
            <section>
                <div class="page-header min-vh-75">
                    <div class="container">
                        <div class="row">
                            <div class="col-md-6">
                                <div class="card card-plain mt-8" style="margin-right: 5rem; margin-left: 5rem">
                                    <div class="card-header pb-0 text-left bg-transparent">
                                        <h3 class="font-weight-bolder gradiente">Bienvenido de nuevo</h3>
                                        <p class="mb-0">Ingrese su usuario y contraseña</p>
                                    </div>
                                    <div class="card-body">
                                        <form action="/AvanceProject-1/SV_Usuario?accion=verificar" method="POST">
                                            <label style="font-size: 13px">Usuario</label>
                                            <div class="mb-3">
                                                <input type="text" class="form-control input-gradiente" placeholder="Usuario" 
                                                       aria-label="Nombre" aria-describedby="email-addon" name="txtusuario">
                                            </div>
                                            <label style="font-size: 13px">Contraseña</label>
                                            <div class="mb-3">
                                                <input type="password" class="form-control input-gradiente" placeholder="Contraseña" 
                                                       aria-label="Password" aria-describedby="password-addon" name="txtclave">
                                            </div>
                                            <label style="color:red; font-size: 13px">${mensaje}</label>
                                            <div class="text-center">
                                                <button type="submit" class="btn bg-gradient-info w-100 mt-4 mb-0">Ingresar</button>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="card card-plain mt-8">

                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </section>
        </main>
        <!--   Core JS Files   -->
        <script src="/AvanceProject-1/assets/js/core/popper.min.js"></script>
        <script src="/AvanceProject-1/assets/js/core/bootstrap.min.js"></script>
        <script src="/AvanceProject-1/assets/js/plugins/perfect-scrollbar.min.js"></script>
        <script src="/AvanceProject-1/assets/js/plugins/smooth-scrollbar.min.js"></script>
        
        <script>
            var win = navigator.platform.indexOf('Win') > -1;
            if (win && document.querySelector('#sidenav-scrollbar')) {
                var options = {
                    damping: '0.5'
                };
                Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
            }
        </script>
        <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
        <script src="/AvanceProject-1/assets/js/soft-ui-dashboard.min.js?v=1.0.7"></script>
    </body>
</html>