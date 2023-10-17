<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List" %>
<%@ page import="Dao.DAO_Chofer" %>
<%@ page import="Modelo.Ruta" %>
<%@ page import="Modelo.Horario" %>
<%@ page import="Dao.DAO_Ruta" %>
<%@ page import="Modelo.Chauffeur" %>
<%@ page import="Dao.DAO_Buses" %>
<%@ page import="Modelo.Bus" %>

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
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/css/bootstrap-datepicker.min.css">
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
        <link href="/AvanceProject-1/assets/css/design-roads.css" rel="stylesheet" type="text/css"/>
        <!-- Nepcha Analytics (nepcha.com) -->
        <!-- Nepcha is a easy-to-use web analytics. No cookies and fully compliant with GDPR, CCPA and PECR. -->
        <script defer data-site="YOUR_DOMAIN_HERE" src="https://api.nepcha.com/js/nepcha-analytics.js"></script>
    </head>

    <body class="g-sidenav-show  bg-gray-100">
        <aside class="sidenav navbar navbar-vertical navbar-expand-xs border-0 border-radius-xl my-3 fixed-start ms-3 " id="sidenav-main">
            <div class="sidenav-header">
                <i class="fas fa-times p-3 cursor-pointer text-secondary opacity-5 position-absolute end-0 top-0 d-none d-xl-none" aria-hidden="true" id="iconSidenav"></i>
                <a class="navbar-brand m-0" href="">
                    <img src="/AvanceProject-1/assets/img/bruce-mars.jpg" class="navbar-brand-img h-100" alt="main_logo">
                    <% String nameAdmin = (String) session.getAttribute("admin-name"); %>
                    <span class="ms-1 font-weight-bold"><%= nameAdmin %></span>
                </a>
            </div>
            <hr class="horizontal dark mt-0">
            <div >
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link  " href="/AvanceProject-1/pages/dashboard.jsp">
                            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                                <svg width="12px" height="12px" viewBox="0 0 45 40" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <title>shop </title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-1716.000000, -439.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                <g transform="translate(1716.000000, 291.000000)">
                                <g transform="translate(0.000000, 148.000000)">
                                <path class="color-background opacity-6" d="M46.7199583,10.7414583 L40.8449583,0.949791667 C40.4909749,0.360605034 39.8540131,0 39.1666667,0 L7.83333333,0 C7.1459869,0 6.50902508,0.360605034 6.15504167,0.949791667 L0.280041667,10.7414583 C0.0969176761,11.0460037 -1.23209662e-05,11.3946378 -1.23209662e-05,11.75 C-0.00758042603,16.0663731 3.48367543,19.5725301 7.80004167,19.5833333 L7.81570833,19.5833333 C9.75003686,19.5882688 11.6168794,18.8726691 13.0522917,17.5760417 C16.0171492,20.2556967 20.5292675,20.2556967 23.494125,17.5760417 C26.4604562,20.2616016 30.9794188,20.2616016 33.94575,17.5760417 C36.2421905,19.6477597 39.5441143,20.1708521 42.3684437,18.9103691 C45.1927731,17.649886 47.0084685,14.8428276 47.0000295,11.75 C47.0000295,11.3946378 46.9030823,11.0460037 46.7199583,10.7414583 Z"></path>
                                <path class="color-background" d="M39.198,22.4912623 C37.3776246,22.4928106 35.5817531,22.0149171 33.951625,21.0951667 L33.92225,21.1107282 C31.1430221,22.6838032 27.9255001,22.9318916 24.9844167,21.7998837 C24.4750389,21.605469 23.9777983,21.3722567 23.4960833,21.1018359 L23.4745417,21.1129513 C20.6961809,22.6871153 17.4786145,22.9344611 14.5386667,21.7998837 C14.029926,21.6054643 13.533337,21.3722507 13.0522917,21.1018359 C11.4250962,22.0190609 9.63246555,22.4947009 7.81570833,22.4912623 C7.16510551,22.4842162 6.51607673,22.4173045 5.875,22.2911849 L5.875,44.7220845 C5.875,45.9498589 6.7517757,46.9451667 7.83333333,46.9451667 L19.5833333,46.9451667 L19.5833333,33.6066734 L27.4166667,33.6066734 L27.4166667,46.9451667 L39.1666667,46.9451667 C40.2482243,46.9451667 41.125,45.9498589 41.125,44.7220845 L41.125,22.2822926 C40.4887822,22.4116582 39.8442868,22.4815492 39.198,22.4912623 Z"></path>
                                </g>
                                </g>
                                </g>
                                </g>
                                </svg>
                            </div>
                            <span class="nav-link-text ms-1">Dashboard</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  active" href="/AvanceProject-1/pages/tables.jsp">
                            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                                <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <title>office</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-1869.000000, -293.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                <g transform="translate(1716.000000, 291.000000)">
                                <g id="office" transform="translate(153.000000, 2.000000)">
                                <path class="color-background opacity-6" d="M12.25,17.5 L8.75,17.5 L8.75,1.75 C8.75,0.78225 9.53225,0 10.5,0 L31.5,0 C32.46775,0 33.25,0.78225 33.25,1.75 L33.25,12.25 L29.75,12.25 L29.75,3.5 L12.25,3.5 L12.25,17.5 Z"></path>
                                <path class="color-background" d="M40.25,14 L24.5,14 C23.53225,14 22.75,14.78225 22.75,15.75 L22.75,38.5 L19.25,38.5 L19.25,22.75 C19.25,21.78225 18.46775,21 17.5,21 L1.75,21 C0.78225,21 0,21.78225 0,22.75 L0,40.25 C0,41.21775 0.78225,42 1.75,42 L40.25,42 C41.21775,42 42,41.21775 42,40.25 L42,15.75 C42,14.78225 41.21775,14 40.25,14 Z M12.25,36.75 L7,36.75 L7,33.25 L12.25,33.25 L12.25,36.75 Z M12.25,29.75 L7,29.75 L7,26.25 L12.25,26.25 L12.25,29.75 Z M35,36.75 L29.75,36.75 L29.75,33.25 L35,33.25 L35,36.75 Z M35,29.75 L29.75,29.75 L29.75,26.25 L35,26.25 L35,29.75 Z M35,22.75 L29.75,22.75 L29.75,19.25 L35,19.25 L35,22.75 Z"></path>
                                </g>
                                </g>
                                </g>
                                </g>
                                </svg>
                            </div>
                            <span class="nav-link-text ms-1">Tablas</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="/AvanceProject-1/pages/billing.jsp">
                            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                                <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <title>credit-card</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                <g transform="translate(1716.000000, 291.000000)">
                                <g transform="translate(453.000000, 454.000000)">
                                <path class="color-background opacity-6" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z"></path>
                                <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                </g>
                                </g>
                                </g>
                                </g>
                                </svg>
                            </div>
                            <span class="nav-link-text ms-1">Ingresos</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  " href="/AvanceProject-1/pages/virtual-reality.jsp">
                            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                                <svg width="12px" height="12px" viewBox="0 0 42 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <title>box-3d-50</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-2319.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                <g transform="translate(1716.000000, 291.000000)">
                                <g transform="translate(603.000000, 0.000000)">
                                <path class="color-background" d="M22.7597136,19.3090182 L38.8987031,11.2395234 C39.3926816,10.9925342 39.592906,10.3918611 39.3459167,9.89788265 C39.249157,9.70436312 39.0922432,9.5474453 38.8987261,9.45068056 L20.2741875,0.1378125 L20.2741875,0.1378125 C19.905375,-0.04725 19.469625,-0.04725 19.0995,0.1378125 L3.1011696,8.13815822 C2.60720568,8.38517662 2.40701679,8.98586148 2.6540352,9.4798254 C2.75080129,9.67332903 2.90771305,9.83023153 3.10122239,9.9269862 L21.8652864,19.3090182 C22.1468139,19.4497819 22.4781861,19.4497819 22.7597136,19.3090182 Z"></path>
                                <path class="color-background opacity-6" d="M23.625,22.429159 L23.625,39.8805372 C23.625,40.4328219 24.0727153,40.8805372 24.625,40.8805372 C24.7802551,40.8805372 24.9333778,40.8443874 25.0722402,40.7749511 L41.2741875,32.673375 L41.2741875,32.673375 C41.719125,32.4515625 42,31.9974375 42,31.5 L42,14.241659 C42,13.6893742 41.5522847,13.241659 41,13.241659 C40.8447549,13.241659 40.6916418,13.2778041 40.5527864,13.3472318 L24.1777864,21.5347318 C23.8390024,21.7041238 23.625,22.0503869 23.625,22.429159 Z"></path>
                                <path class="color-background opacity-6" d="M20.4472136,21.5347318 L1.4472136,12.0347318 C0.953235098,11.7877425 0.352562058,11.9879669 0.105572809,12.4819454 C0.0361450918,12.6208008 6.47121774e-16,12.7739139 0,12.929159 L0,30.1875 L0,30.1875 C0,30.6849375 0.280875,31.1390625 0.7258125,31.3621875 L19.5528096,40.7750766 C20.0467945,41.0220531 20.6474623,40.8218132 20.8944388,40.3278283 C20.963859,40.1889789 21,40.0358742 21,39.8806379 L21,22.429159 C21,22.0503869 20.7859976,21.7041238 20.4472136,21.5347318 Z"></path>
                                </g>
                                </g>
                                </g>
                                </g>
                                </svg>
                            </div>
                            <span class="nav-link-text ms-1">Productividad <br> (WorkSpace)</span>
                        </a>
                    </li>
                    <li class="nav-item mt-3">
                        <h6 class="ps-4 ms-2 text-uppercase text-xs font-weight-bolder opacity-6">Account pages</h6>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link  " href="/AvanceProject-1/pages/profile.jsp">
                            <div class="icon icon-shape icon-sm shadow border-radius-md bg-white text-center me-2 d-flex align-items-center justify-content-center">
                                <svg width="12px" height="12px" viewBox="0 0 46 42" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                <title>customer-support</title>
                                <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                <g transform="translate(-1717.000000, -291.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                <g transform="translate(1716.000000, 291.000000)">
                                <g transform="translate(1.000000, 0.000000)">
                                <path class="color-background opacity-6" d="M45,0 L26,0 C25.447,0 25,0.447 25,1 L25,20 C25,20.379 25.214,20.725 25.553,20.895 C25.694,20.965 25.848,21 26,21 C26.212,21 26.424,20.933 26.6,20.8 L34.333,15 L45,15 C45.553,15 46,14.553 46,14 L46,1 C46,0.447 45.553,0 45,0 Z"></path>
                                <path class="color-background" d="M22.883,32.86 C20.761,32.012 17.324,31 13,31 C8.676,31 5.239,32.012 3.116,32.86 C1.224,33.619 0,35.438 0,37.494 L0,41 C0,41.553 0.447,42 1,42 L25,42 C25.553,42 26,41.553 26,41 L26,37.494 C26,35.438 24.776,33.619 22.883,32.86 Z"></path>
                                <path class="color-background" d="M13,28 C17.432,28 21,22.529 21,18 C21,13.589 17.411,10 13,10 C8.589,10 5,13.589 5,18 C5,22.529 8.568,28 13,28 Z"></path>
                                </g>
                                </g>
                                </g>
                                </g>
                                </svg>
                            </div>
                            <span class="nav-link-text ms-1">Perfil</span>
                        </a>
                    </li>
                </ul>
            </div>
        </aside>
        <main class="main-content position-relative max-height-vh-100 h-100 border-radius-lg ">
            <!-- Navbar -->
            <nav class="navbar navbar-main navbar-expand-lg px-0 mx-4 shadow-none border-radius-xl" id="navbarBlur" navbar-scroll="true">
                <div class="container-fluid py-1 px-3">
                    <nav aria-label="breadcrumb">
                        <ol class="breadcrumb bg-transparent mb-0 pb-0 pt-1 px-0 me-sm-6 me-5">
                            <li class="breadcrumb-item text-sm"><a class="opacity-5 text-dark" href="javascript:;">Paginas</a></li>
                            <li class="breadcrumb-item text-sm text-dark active" aria-current="page">Tablas</li>
                        </ol>
                        <h6 class="font-weight-bolder mb-0">Tablas</h6>
                    </nav>
                    <div class="collapse navbar-collapse mt-sm-0 mt-2 me-md-0 me-sm-4" id="navbar">
                        <div class="ms-md-auto pe-md-3 d-flex align-items-center">
                            <a class="btn btn-outline-primary btn-sm mb-0 me-3" href="#" id="CerrarSesion">Cerrar Sesion</a>
                        </div>
                        <ul class="navbar-nav  justify-content-end">
                            <li class="nav-item d-xl-none ps-3 d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-body p-0" id="iconNavbarSidenav">
                                    <div class="sidenav-toggler-inner">
                                        <i class="sidenav-toggler-line"></i>
                                        <i class="sidenav-toggler-line"></i>
                                        <i class="sidenav-toggler-line"></i>
                                    </div>
                                </a>
                            </li>
                            <li class="nav-item px-3 d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-body p-0">
                                    <i class="fa fa-cog fixed-plugin-button-nav cursor-pointer"></i>
                                </a>
                            </li>
                            <li class="nav-item dropdown pe-2 d-flex align-items-center">
                                <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                    <i class="fa fa-bell cursor-pointer"></i>
                                </a>
                                <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                                    <li class="mb-2">
                                        <a class="dropdown-item border-radius-md" href="javascript:;">
                                            <div class="d-flex py-1">
                                                <div class="my-auto">
                                                    <img src="/AvanceProject-1/assets/img/team-2.jpg" class="avatar avatar-sm  me-3 ">
                                                </div>
                                                <div class="d-flex flex-column justify-content-center">
                                                    <h6 class="text-sm font-weight-normal mb-1">
                                                        <span class="font-weight-bold">New message</span> from Laur
                                                    </h6>
                                                    <p class="text-xs text-secondary mb-0 ">
                                                        <i class="fa fa-clock me-1"></i>
                                                        13 minutes ago
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="mb-2">
                                        <a class="dropdown-item border-radius-md" href="javascript:;">
                                            <div class="d-flex py-1">
                                                <div class="my-auto">
                                                    <img src="/AvanceProject-1/assets/img/small-logos/logo-spotify.svg" class="avatar avatar-sm bg-gradient-dark  me-3 ">
                                                </div>
                                                <div class="d-flex flex-column justify-content-center">
                                                    <h6 class="text-sm font-weight-normal mb-1">
                                                        <span class="font-weight-bold">New album</span> by Travis Scott
                                                    </h6>
                                                    <p class="text-xs text-secondary mb-0 ">
                                                        <i class="fa fa-clock me-1"></i>
                                                        1 day
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                    <li>
                                        <a class="dropdown-item border-radius-md" href="javascript:;">
                                            <div class="d-flex py-1">
                                                <div class="avatar avatar-sm bg-gradient-secondary  me-3  my-auto">
                                                    <svg width="12px" height="12px" viewBox="0 0 43 36" version="1.1" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink">
                                                    <title>credit-card</title>
                                                    <g stroke="none" stroke-width="1" fill="none" fill-rule="evenodd">
                                                    <g transform="translate(-2169.000000, -745.000000)" fill="#FFFFFF" fill-rule="nonzero">
                                                    <g transform="translate(1716.000000, 291.000000)">
                                                    <g transform="translate(453.000000, 454.000000)">
                                                    <path class="color-background" d="M43,10.7482083 L43,3.58333333 C43,1.60354167 41.3964583,0 39.4166667,0 L3.58333333,0 C1.60354167,0 0,1.60354167 0,3.58333333 L0,10.7482083 L43,10.7482083 Z" opacity="0.593633743"></path>
                                                    <path class="color-background" d="M0,16.125 L0,32.25 C0,34.2297917 1.60354167,35.8333333 3.58333333,35.8333333 L39.4166667,35.8333333 C41.3964583,35.8333333 43,34.2297917 43,32.25 L43,16.125 L0,16.125 Z M19.7083333,26.875 L7.16666667,26.875 L7.16666667,23.2916667 L19.7083333,23.2916667 L19.7083333,26.875 Z M35.8333333,26.875 L28.6666667,26.875 L28.6666667,23.2916667 L35.8333333,23.2916667 L35.8333333,26.875 Z"></path>
                                                    </g>
                                                    </g>
                                                    </g>
                                                    </g>
                                                    </svg>
                                                </div>
                                                <div class="d-flex flex-column justify-content-center">
                                                    <h6 class="text-sm font-weight-normal mb-1">
                                                        Payment successfully completed
                                                    </h6>
                                                    <p class="text-xs text-secondary mb-0 ">
                                                        <i class="fa fa-clock me-1"></i>
                                                        2 days
                                                    </p>
                                                </div>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                            </li>

                        </ul>
                    </div>
                </div>
            </nav>
            <!-- End Navbar -->
            <div class="container-fluid py-4">
                <div class="row">
                    <div class="col-12">
                        <div class="card mb-4">
                            <div class="card-header pb-0">
                                <h6>Choferes</h6>
                                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#insertUserModal" style="position: absolute; top: 18px; right: 18px;" >
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
                                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"></path>
                                    </svg>
                                </button>
                            </div>
                            <div class="card-body px-0 pt-0 pb-2">
                                <div class="table-responsive p-0">
                                    <% DAO_Chofer daoch = new DAO_Chofer();
                                    List<Chauffeur> chauffeurs = daoch.ShowData();
                                    %>
                                    <table class="table align-items-center mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Chofer</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Phone</th>
                                                <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Status</th>
                                                <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date Employed</th>
                                                <th class="text-secondary opacity-7"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% for (Chauffeur chauffeur : chauffeurs) { %>
                                            <tr>
                                                <td>
                                                    <div class="d-flex px-2 py-1">
                                                        <div>
                                                            <img src="/AvanceProject-1/assets/img/team-2.jpg" class="avatar avatar-sm me-3" alt="user">
                                                        </div>
                                                        <div class="d-flex flex-column justify-content-center">
                                                            <h6 class="mb-0 text-sm"><%= chauffeur.getName() + " " + chauffeur.getLastname() %></h6>
                                                            <p class="text-xs text-secondary mb-0"><%= chauffeur.getNmbrLicense() %></p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <p class="text-xs font-weight-bold mb-0"><%= chauffeur.getPhone() %></p>

                                                </td>
                                                <td class="align-middle text-center text-sm">
                                                    <span class="text-secondary text-xs font-weight-bold <%= chauffeur.getDni() %>"><%= chauffeur.isCondition() ? "Activo" : "Inactivo" %></span>
                                                    <p class="text-xs text-secondary mb-0"><%= chauffeur.getReview() %></p>
                                                </td>
                                                <td class="align-middle text-center">
                                                    <span class="text-secondary text-xs font-weight-bold"><%= chauffeur.getDate() %></span>
                                                </td>
                                                <td class="align-middle">
                                                    <a href="#" class="text-secondary font-weight-bold text-xs edit-chofer"
                                                       data-chofer-id="<%= chauffeur.getIdChauf() %>"
                                                       data-toggle="modal" data-target="#editUserModal" style="margin-right: 10px">
                                                        Edit
                                                    </a>
                                                    <a href="/AvanceProject-1/SV_Chofer?accion=updateStatuChau&chauId=<%= chauffeur.getIdChauf() %>"
                                                       class="text-secondary font-weight-bold text-xs">
                                                        Unavailable
                                                    </a>
                                                </td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card mb-4">
                            <div class="card-header pb-0">
                                <h6>Choferes No Habilitados</h6>
                                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#insertUserModal" style="position: absolute; top: 18px; right: 18px;" >
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
                                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"></path>
                                    </svg>
                                </button>
                            </div>
                            <div class="card-body px-0 pt-0 pb-2">
                                <div class="table-responsive p-0">
                                    <% DAO_Chofer daoc = new DAO_Chofer();
                                    List<Chauffeur> chauffa = daoc.ShowDataUnava();
                                    %>
                                    <table class="table align-items-center mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Chofer</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Phone</th>
                                                <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Status</th>
                                                <th class="text-center text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Date Employed</th>
                                                <th class="text-secondary opacity-7"></th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <% for (Chauffeur chauffe : chauffa) { %>
                                            <tr>
                                                <td>
                                                    <div class="d-flex px-2 py-1">
                                                        <div>
                                                            <img src="/AvanceProject-1/assets/img/team-2.jpg" class="avatar avatar-sm me-3" alt="user">
                                                        </div>
                                                        <div class="d-flex flex-column justify-content-center">
                                                            <h6 class="mb-0 text-sm"><%= chauffe.getName() + " " + chauffe.getLastname() %></h6>
                                                            <p class="text-xs text-secondary mb-0"><%= chauffe.getNmbrLicense() %></p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <p class="text-xs font-weight-bold mb-0"><%= chauffe.getPhone() %></p>

                                                </td>
                                                <td class="align-middle text-center text-sm">
                                                    <span class="text-secondary text-xs font-weight-bold <%= chauffe.getDni() %>"><%= chauffe.isCondition() ? "Activo" : "Inactivo" %></span>
                                                    <p class="text-xs text-secondary mb-0"><%= chauffe.getReview() %></p>
                                                </td>
                                                <td class="align-middle text-center">
                                                    <span class="text-secondary text-xs font-weight-bold"><%= chauffe.getDate() %></span>
                                                </td>
                                                <td class="align-middle">
                                                    <a href="#" class="text-secondary font-weight-bold text-xs edit-chofer"
                                                       data-chofer-id="<%= chauffe.getIdChauf() %>"
                                                       data-toggle="modal" data-target="#editUserModal" style="margin-right: 10px">
                                                        Edit
                                                    </a>
                                                    <a href="/AvanceProject-1/SV_Chofer?accion=updateStatuChau&chauId=<%= chauffe.getIdChauf() %>"
                                                       class="text-secondary font-weight-bold text-xs">
                                                        Unavailable
                                                    </a>
                                                </td>
                                            </tr>
                                            <% } %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card mb-4">
                            <div class="card-header pb-0">
                                <h6>Buses</h6>
                                <button type="button" class="btn btn-secondary" data-toggle="modal" data-target="#insertUserModalBus" style="position: absolute; top: 18px; right: 18px;" >
                                    <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-plus" viewBox="0 0 16 16">
                                    <path d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"></path>
                                    </svg>
                                </button>
                            </div>
                            <div class="card-body px-0 pt-0 pb-2">
                                <div class="table-responsive p-0">
                                    <table class="table align-items-center justify-content-center mb-0">
                                        <thead>
                                            <tr>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Marca</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Modelo</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7 ps-2">Color</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Condición</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Minimo - Máximo</th>
                                                <th class="text-uppercase text-secondary text-xxs font-weight-bolder opacity-7">Estatus</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            <%
                                                DAO_Buses daobss = new DAO_Buses();
                                                List<Bus> buses = daobss.ShowBus();
                                                for (Bus bus : buses) {
                                            %>
                                            <tr>
                                                <td>
                                                    <div class="d-flex px-2">
                                                        <div>
                                                            <img src="/AvanceProject-1/assets/img/bus.png" class="avatar avatar-sm rounded-circle me-2" alt="<%= bus.getNmbrPlate() %>">
                                                        </div>
                                                        <div class="my-auto">
                                                            <h6 class="mb-0 text-sm"><%= bus.getBusMar() %></h6>
                                                            <p class="text-xs text-secondary mb-0"><%= bus.getNmbrPlate() %></p>
                                                        </div>
                                                    </div>
                                                </td>
                                                <td>
                                                    <p class="text-sm font-weight-bold mb-0"><%= bus.getBusModel() %></p>
                                                </td>
                                                <td>
                                                    <span class="text-xs font-weight-bold"><%= bus.getBusColor() %></span>
                                                </td>
                                                <%
                                                    int porcentaje = 0; // Porcentaje predeterminado para "Pesimo"

                                                    if (bus.getCondition().equalsIgnoreCase("Intermedia")) {
                                                        porcentaje = 50;
                                                    } else if (bus.getCondition().equalsIgnoreCase("Excelente")) {
                                                        porcentaje = 100;
                                                    }
                                                %>
                                                <td>
                                                    <div class="progress">
                                                        <div class="progress-bar progress-bar-striped progress-bar-animated" role="progressbar" aria-valuenow="<%= porcentaje %>" aria-valuemin="0" aria-valuemax="100" style="width: <%= porcentaje %>%"></div>
                                                    </div>
                                                </td>
                                                <td> <span class="text-secondary text-xs font-weight-bold"><%= bus.getAfMin() + " - " + bus.getAfMaxim() %></span></td>
                                                <td> <span class="text-secondary text-xs font-weight-bold"><%= bus.isStatus() ? "Activo" : "Inactivo" %></span></td>
                                                <td class="align-middle">
                                                    <a href="#" class="text-secondary font-weight-bold text-xs edit-bus"
                                                       data-bus-id="<%= bus.getIdBus() %>"
                                                       data-toggle="modal" data-target="#editUserModalBus" style="margin-right: 10px">
                                                        Edit
                                                    </a>
                                                    <a href="/AvanceProject-1/SV_Bus?accion=updateStatusBus&busId=<%= bus.getIdBus() %>"
                                                       class="text-secondary font-weight-bold text-xs">
                                                        Unavailable
                                                    </a>
                                                </td>
                                            </tr>
                                            <%
                                                }
                                            %>
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-12">
                        <div class="card mb-4">
                            <div class="container overflow-hidden rounded-2xl">
                                <div class="row align-items-center">
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <h5 class="fw-bold text-black" style="margin-top: 20px">Programar Rutas</h5>
                                        <div class="d-flex align-items-center">
                                            <div class="avatar avatar-md me-2 bg-yellow-400 border border-4 border-blue-600 rounded-full">
                                                <img src="/AvanceProject-1/assets/img/tiempo.png" alt="image" class="w-60 h-60 rounded-full">
                                            </div>
                                            <div class="d-flex flex-column">
                                                <span class="fw-bold text-sm text-black">Horarios</span>
                                                <span class="fw-bold text-xs text-muted"></span>
                                            </div>
                                            <li class="nav-item dropdown pe-2 d-flex align-items-center">
                                                <a href="javascript:;" class="nav-link text-body p-0" id="dropdownMenuButton" data-bs-toggle="dropdown" aria-expanded="false">
                                                    <i class="fas fa-caret-down text-blue-3 ms-2"></i>
                                                </a>
                                                <ul class="dropdown-menu  dropdown-menu-end  px-2 py-3 me-sm-n4" aria-labelledby="dropdownMenuButton">
                                                    <%
                                                    DAO_Ruta daortz = new DAO_Ruta();
                                                    List<Horario> hrs = daortz.obtenerHorarios(); 

                                                    for (Horario horario : hrs) {
                                                        String imagen = ""; // Variable para almacenar la ruta de la imagen
                                                        String turno = horario.getTurno(); // Supongamos que tienes un método getTurno en tu clase Horario
        
                                                        if ("Mañana".equalsIgnoreCase(turno)) {
                                                            imagen = "/AvanceProject-1/assets/img/sol.png"; // Ruta de la imagen de la mañana
                                                        } else if ("Tarde".equalsIgnoreCase(turno)) {
                                                            imagen = "/AvanceProject-1/assets/img/tarde.png"; // Ruta de la imagen de la tarde
                                                        } else if ("Noche".equalsIgnoreCase(turno)) {
                                                            imagen = "/AvanceProject-1/assets/img/luna.png"; // Ruta de la imagen de la noche
                                                        }
                                                    %>
                                                    <li class="mb-2">
                                                        <a class="dropdown-item border-radius-md" href="#">
                                                            <div class="d-flex py-1">
                                                                <div class="my-auto">
                                                                    <img src="<%= imagen %>" class="avatar avatar-sm me-3">
                                                                </div>
                                                                <div class="d-flex flex-column justify-content-center">
                                                                    <h6 class="text-sm font-weight-normal mb-1">
                                                                        <span class="font-weight-bold"><%= turno %></span>
                                                                    </h6>
                                                                    <p class="text-xs text-secondary mb-0 ">
                                                                        <i class="fa fa-clock me-1"></i>
                                                                    </p>
                                                                </div>
                                                            </div>
                                                        </a>
                                                    </li>
                                                    <%
                                                    }
                                                    %>
                                                </ul>
                                            </li>
                                        </div>
                                    </div>
                                    <div class="col-12 col-md-6 col-lg-4">
                                        <!-- Empty -->
                                    </div>
                                    <div class="col-12 col-lg-4 mt-4">
                                        <button class="btn btn-primary d-block w-100 fw-bold text-md rounded-3xl" data-toggle="modal" data-target="#insertRoadModal">Ingresar Ruta</button>
                                    </div>
                                </div>
                                <div class="card-body px-0 pt-0 pb-2">
                                    <div class="table-responsive p-0">
                                        <table class="table align-items-center justify-content-center mb-0">
                                            <thead>
                                                <tr>
                                                    <th></th>
                                                    <th></th>
                                                    <th class="text-left text-xs app-color-black pb-3 pb-md-5">RUTA</th>
                                                    <th class="text-left text-xs app-color-black pb-3 pb-md-5">OBSERVACION</th>
                                                    <th class="text-left text-xs app-color-black pb-3 pb-md-5">DISTANCIA RECORRIDA</th>
                                                    <th class="text-left text-xs app-color-black pb-3 pb-md-5">TIEMPO RECORRIDO</th>
                                                    <th class="text-left text-xs app-color-black pb-3 pb-md-5">ESTADO</th>
                                                    <th></th>
                                                    <th></th>
                                                </tr>
                                            </thead>
                                            <tbody>
                                                <%
                                                DAO_Ruta daoruta = new DAO_Ruta();
                                                List<Ruta> rutas = daoruta.ListarRutas();
                
                                                for (Ruta ruta : rutas) {
                                                %>
                                                <tr class="app-border-1">
                                                    <td>
                                                        <div class="d-flex justify-content-center align-items-center rounded-md w-8 h-8 app-bg-yellow-2 app-color-yellow-1 text-lg font-semibold">
                                                            <%= ruta.getIdRuta() %>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex flex-row py-3">
                                                            <div class="avatar avatar-md me-2 bg-yellow-400 border border-4 border-blue-600 rounded-full">
                                                                <img src="/AvanceProject-1/assets/img/ruta.png" alt="image" class="w-60 h-60 rounded-full">
                                                            </div>
                                                            <div class="d-flex flex-column">
                                                                <span class="font-semibold text-sm app-color-black"><%= ruta.getNombreRuta() %></span>
                                                                <p class="text-xs text-secondary mb-0">Turno <%= ruta.getTurno() %></p>
                                                            </div>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <span class="font-semibold text-sm app-color-gray-1"><%= ruta.getTiempoRecorrido() %> min</span>
                                                    </td>
                                                    <td>
                                                        <span class="font-semibold text-sm app-color-gray-1"><%= ruta.getDescripcionRuta() %></span>
                                                        <p class="font-semibold text-xs text-secondary mb-0"><%= ruta.getObservacionRuta()  %></p>
                                                    </td>
                                                    <td>
                                                        <div class="app-bg-red-2 h-8 w-28 font-semibold text-sm d-flex justify-content-center align-items-center app-color-red-1 rounded-md">
                                                            <%= ruta.getDistanciaRecorrido() %> km
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <div class="d-flex justify-content-center">
                                                            <button class="font-semibold text-sm design-new edit-road" 
                                                                    data-ruta-id="<%= ruta.getIdRuta() %>" data-toggle="modal" data-target="#modifyRoadModal" >Modificar Ruta</button>
                                                            <a href="/AvanceProject-1/SV_Ruta?accion=updateStatuRoad&rutaId=<%= ruta.getIdRuta() %>" 
                                                               class="font-semibold text-sm design-new" style="color: red;">Eliminar Ruta</a>
                                                        </div>
                                                    </td>
                                                    <td>
                                                        <i class="fas fa-check-circle text-blue-300"></i>
                                                    </td>
                                                </tr>
                                                <%
                                                }
                                                %>
                                            </tbody>
                                        </table>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </main>
    <div class="fixed-plugin">
        <a class="fixed-plugin-button text-dark position-fixed px-3 py-2">
            <i class="fa fa-cog py-2"> </i>
        </a>
        <div class="card shadow-lg ">
            <div class="card-header pb-0 pt-3 ">
                <div class="float-start">
                    <h5 class="mt-3 mb-0">Configuracion</h5>
                    <p>Observas diferentes disenos</p>
                </div>
                <div class="float-end mt-4">
                    <button class="btn btn-link text-dark p-0 fixed-plugin-close-button">
                        <i class="fa fa-close"></i>
                    </button>
                </div>
                <!-- End Toggle Button -->
            </div>
            <hr class="horizontal dark my-1">
            <div class="card-body pt-sm-3 pt-0">
                <!-- Sidebar Backgrounds -->
                <div>
                    <h6 class="mb-0">Colores de Sidebar</h6>
                </div>
                <a href="javascript:void(0)" class="switch-trigger background-color">
                    <div class="badge-colors my-2 text-start">
                        <span class="badge filter bg-gradient-primary active" data-color="primary" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-dark" data-color="dark" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-info" data-color="info" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-success" data-color="success" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-warning" data-color="warning" onclick="sidebarColor(this)"></span>
                        <span class="badge filter bg-gradient-danger" data-color="danger" onclick="sidebarColor(this)"></span>
                    </div>
                </a>
                <!-- Sidenav Type -->
                <div class="mt-3">
                    <h6 class="mb-0">Tipo de Sidenav</h6>
                    <p class="text-sm">Escoge estos aspectos</p>
                </div>
                <div class="d-flex">
                    <button class="btn bg-gradient-primary w-100 px-3 mb-2 active" data-class="bg-transparent" onclick="sidebarType(this)">Transparent</button>
                    <button class="btn bg-gradient-primary w-100 px-3 mb-2 ms-2" data-class="bg-white" onclick="sidebarType(this)">White</button>
                </div>
                <p class="text-sm d-xl-none d-block mt-2">You can change the sidenav type just on desktop view.</p>
                <!-- Navbar Fixed -->
                <div class="mt-3">
                    <h6 class="mb-0">Navbar Modificado</h6>
                </div>
                <div class="form-check form-switch ps-0">
                    <input class="form-check-input mt-1 ms-auto" type="checkbox" id="navbarFixed" onclick="navbarFixed(this)">
                </div>
                <hr class="horizontal dark my-sm-4">
                <div class="w-100 text-center">
                    <h6 class="mt-3">Personalizalo a tu manera</h6>
                </div>
            </div>
        </div>
    </div>
    <!-- ModalEditChofer -->
    <div class="modal fade" id="editUserModal" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modificar datos</h5>
                </div>
                <div class="modal-body">
                    <form action="/AvanceProject-1/SV_Chofer?accion=modificarChau" method="POST">
                        <div class="form-outline mb-4">
                            <input type="text" name="choferId" id="choferId" class="form-control" readonly>
                            <p>Nombre:</p>
                            <input type="text" name="name" id="name" class="form-control" />
                            <p>Apellido:</p>
                            <input type="text" name="lastname" id="lastname" class="form-control" />
                            <p>DNI:</p>
                            <input type="text" name="dni" id="dni" class="form-control" />
                            <p>Licencia:</p>
                            <input type="text" name="license" id="license" class="form-control" />
                            <p>Numero:</p>
                            <input type="text" name="phonenumber" id="phonenumber" class="form-control" />
                            <p>Estado:</p>
                            <select name="status" id="status" class="form-control">
                                <option value="activo">Activo</option>
                                <option value="inactivo">Inactivo</option>
                            </select>
                            <p>Review:</p>
                            <input type="text" name="review" id="review" class="form-control" />
                            <p>Fecha Empleado: </p>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" id="fechaEmpleado" name="fechaEmpleado" class="form-control">
                                </div>
                                <br>
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" type="button" id="limpiarFecha">Limpiar</button>
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar cambios</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ModalEditBusss -->
    <div class="modal fade" id="editUserModalBus" tabindex="-1" role="dialog" aria-labelledby="editUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modificar BUS</h5>
                </div>
                <div class="modal-body">
                    <form action="/AvanceProject-1/SV_Bus?accion=modificarBus" method="POST">
                        <div class="form-outline mb-4">
                            <input type="text" id="BusId" name="BusId" class="form-control" readonly>
                            <p>Marca:</p>
                            <input type="text" id="marca" name="marca" class="form-control" />
                            <p>Modelo:</p>
                            <input type="text" id="modelo"  name="modelo" class="form-control" />
                            <p>Color:</p>
                            <input type="text" id="Color" name="Color" class="form-control" />
                            <p>Condicion:</p>
                            <input type="text" id="condition" name="condition" class="form-control" />
                            <p>Nm - Placa:</p>
                            <input type="text" id="plate" name="plate" class="form-control" />
                            <p>Foro Minimo:</p>
                            <input type="text" id="minForo" name="minForo" class="form-control" />
                            <p>Foro Maximo:</p>
                            <input type="text" id="maxForo" name="maxForo" class="form-control" />
                            <p>Estado:</p>
                            <select id="status" name="status" class="form-control">
                                <option value="activo">Activo</option>
                                <option value="inactivo">Inactivo</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" id="submitBtn" class="btn btn-primary">Guardar cambios</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ModalEditRuta -->
    <div class="modal fade" id="modifyRoadModal" tabindex="-1" role="dialog" aria-labelledby="insertUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Modificar Ruta</h5>
                </div>
                <div class="modal-body">
                    <form action="/AvanceProject-1/SV_Ruta?accion=modificarRoad" method="POST">
                        <div class="form-outline mb-4">
                            <input type="text" name="rutaId" id="rutaId" class="form-control" readonly>
                            <p>Ruta:</p>
                            <input type="text" name="nameruta" id="nameruta" class="form-control" />
                            <p>Descripcion:</p>
                            <input type="text" name="description" id="description" class="form-control" />
                            <p>Distancia recorrido:</p>
                            <input type="text" name="distancia" id="distancia" class="form-control" />
                            <p>Tiempo recorrido:</p>
                            <input type="text" name="time" id="time" class="form-control" />
                            <p>Observacion:</p>
                            <input type="text" name="review" id="review" class="form-control" />
                            <p>Turno:</p>
                            <select name="idTurn" id="idTurn" class="form-control">
                                <%
                                DAO_Ruta daorth = new DAO_Ruta();
                                List<Horario> hora = daorth.obtenerHorarios(); 

                                for (Horario horario : hora) {
                                %>
                                <option value="<%= horario.getIdHorario() %>"><%= horario.getTurno() %></option>
                                <%
                                }
                                %>
                            </select> <br>
                            <p>Estado:</p>
                            <select name="status" id="status" class="form-control">
                                <option value="activo">Activo</option>
                                <option value="inactivo">Inactivo</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar cambios</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

    <!-- ModalInsertChofer -->
    <div class="modal fade" id="insertUserModal" tabindex="-1" role="dialog" aria-labelledby="insertUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ingresar Chofer</h5>
                </div>
                <div class="modal-body">
                    <form action="/AvanceProject-1/SV_Chofer?accion=insertChau" method="POST">
                        <div class="form-outline mb-4">
                            <p>Nombre:</p>
                            <input type="text" name="name" id="name" class="form-control" />
                            <p>Apellido:</p>
                            <input type="text" name="lastname" id="lastname" class="form-control" />
                            <p>DNI:</p>
                            <input type="text" name="dni" id="dni" class="form-control" />
                            <p>Licencia:</p>
                            <input type="text" name="license" id="license" class="form-control" />
                            <p>Numero:</p>
                            <input type="text" name="phonenumber" id="phonenumber" class="form-control" />
                            <p>Estado:</p>
                            <select name="status" id="status" class="form-control">
                                <option value="activo">Activo</option>
                                <option value="inactivo">Inactivo</option>
                            </select>
                            <p>Review:</p>
                            <input type="text" name="review" id="review" class="form-control" />
                            <p>Fecha Empleado: </p>
                            <div class="form-group">
                                <div class="input-group">
                                    <input type="text" id="fechaEmpleadoInsert" name="fechaEmpleado" class="form-control">
                                </div>
                                <br>
                                <div class="input-group-append">
                                    <button class="btn btn-outline-secondary" type="button" id="limpiarFechaInsert">Limpiar</button>
                                </div>
                            </div>
                        </div>
                        <div class="text-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar cambios</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ModalInsertBus -->
    <div class="modal fade" id="insertUserModalBus" tabindex="-1" role="dialog" aria-labelledby="insertUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ingresar - BUS</h5>
                </div>
                <div class="modal-body">
                    <form action="/AvanceProject-1/SV_Bus?accion=insertBus" method="POST">
                        <div class="form-outline mb-4">
                            <p>Marca:</p>
                            <input type="text" id="marca" name="marca" class="form-control" />
                            <p>Modelo:</p>
                            <input type="text" id="modelo"  name="modelo" class="form-control" />
                            <p>Color:</p>
                            <input type="text" id="Color" name="Color" class="form-control" />
                            <p>Condicion:</p>
                            <input type="text" id="condition" name="condition" class="form-control" />
                            <p>Nmro - Placa:</p>
                            <input type="text" id="plate" name="plate" class="form-control" />
                            <p>Foro Minimo:</p>
                            <input type="text" id="minForoI" name="minForoI" class="form-control" />
                            <p>Foro Maximo:</p>
                            <input type="text" id="maxForoI" name="maxForoI" class="form-control" />
                            <p>Estado:</p>
                            <select id="status" name="status" class="form-control">
                                <option value="activo">Activo</option>
                                <option value="inactivo">Inactivo</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="submit" id="submitBtnI" class="btn btn-primary">Guardar cambios</button>
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!-- ModalInsertRuta -->
    <div class="modal fade" id="insertRoadModal" tabindex="-1" role="dialog" aria-labelledby="insertUserModalLabel" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title">Ingresar Ruta</h5>
                </div>
                <div class="modal-body">
                    <form action="/AvanceProject-1/SV_Ruta?accion=insertRoad" method="POST">
                        <div class="form-outline mb-4">
                            <p>Ruta:</p>
                            <input type="text" name="nameruta" id="nameruta" class="form-control" />
                            <p>Descripcion:</p>
                            <input type="text" name="description" id="description" class="form-control" />
                            <p>Distancia recorrido:</p>
                            <input type="text" name="distancia" id="distancia" class="form-control" />
                            <p>Tiempo recorrido:</p>
                            <input type="text" name="time" id="time" class="form-control" />
                            <p>Observacion:</p>
                            <input type="text" name="review" id="review" class="form-control" />
                            <p>Turno:</p>
                            <select name="idTurno" id="idTurno" class="form-control">
                                <%
                                DAO_Ruta daort = new DAO_Ruta();
                                List<Horario> horarios = daort.obtenerHorarios(); 

                                for (Horario horario : horarios) {
                                %>
                                <option value="<%= horario.getIdHorario() %>"><%= horario.getTurno() %></option>
                                <%
                                }
                                %>
                            </select> <br>
                            <p>Estado:</p>
                            <select name="status" id="status" class="form-control">
                                <option value="activo">Activo</option>
                                <option value="inactivo">Inactivo</option>
                            </select>
                        </div>
                        <div class="text-center">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                            <button type="submit" class="btn btn-primary">Guardar cambios</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <!--   Core JS Files   -->
    <script src="https://code.jquery.com/jquery-3.5.1.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.11.6/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap-datepicker@1.9.0/dist/js/bootstrap-datepicker.min.js"></script>
    <script src="/AvanceProject-1/assets/js/core/popper.min.js"></script>
    <script src="/AvanceProject-1/assets/js/core/bootstrap.min.js"></script>
    <script src="/AvanceProject-1/assets/js/plugins/perfect-scrollbar.min.js"></script>
    <script src="/AvanceProject-1/assets/js/plugins/smooth-scrollbar.min.js"></script>

    <script>
                        // Agregar un controlador de eventos para el botón "Guardar"
                        document.getElementById('submitBtn').addEventListener('click', function () {
                            // Obtener los valores de los campos de entrada
                            var minForo = parseFloat(document.getElementById('minForo').value);
                            var maxForo = parseFloat(document.getElementById('maxForo').value);
                            // Validar que el valor del "Foro Mínimo" sea menor o igual al valor del "Foro Máximo"
                            if (minForo > maxForo) {
                                alert('El "Foro Mínimo" debe ser menor o igual al "Foro Máximo".');
                                event.preventDefault();
                            }
                        });
    </script>

    <script>
// Agregar un controlador de eventos cuando se muestra el modal
        $('#insertUserModalBus').on('shown.bs.modal', function () {
            // Aquí tu script para validar el "Foro Mínimo" y "Foro Máximo"
            document.getElementById('submitBtnI').addEventListener('click', function () {
                var minForoI = parseFloat(document.getElementById('minForoI').value);
                var maxForoI = parseFloat(document.getElementById('maxForoI').value);
                if (minForoI > maxForoI) {
                    alert('El "Foro Mínimo" debe ser menor o igual al "Foro Máximo".');
                    event.preventDefault();
                }
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            // Capturar el clic en el botón "Edit"
            $(".edit-chofer").click(function () {
                // Obtener el ID del chofer desde el atributo de datos personalizado
                var choferId = $(this).data("chofer-id");
                // Llenar el campo de entrada deshabilitado con el ID del chofer
                $("#choferId").val(choferId);
            });
        });

        $(document).ready(function () {
            // Capturar el clic en el botón "Edit"
            $(".edit-bus").click(function () {
                // Obtener el ID del chofer desde el atributo de datos personalizado
                var choferId = $(this).data("bus-id");
                // Llenar el campo de entrada deshabilitado con el ID del chofer
                $("#BusId").val(choferId);
            });
        });

        $(document).ready(function () {
            // Capturar el clic en el botón "Edit"
            $(".edit-road").click(function () {
                // Obtener el ID del chofer desde el atributo de datos personalizado
                var choferId = $(this).data("ruta-id");
                // Llenar el campo de entrada deshabilitado con el ID del chofer
                $("#rutaId").val(choferId);
            });
        });
    </script>
    <script>
        document.getElementById("CerrarSesion").addEventListener("click", function () {
            // Realiza una solicitud al servidor para cerrar la sesión
            var xhr = new XMLHttpRequest();
            xhr.open("GET", "/AvanceProject-1/SV_Usuario?accion=cerrar", true);
            xhr.send();
            xhr.onload = function () {
                if (xhr.status == 200) {
                    // Redirige a la página de inicio de sesión después de cerrar sesión
                    window.location.href = "/AvanceProject-1/pages/sign-in.jsp";
                }
            };
        });
    </script>
    <script>
        $(document).ready(function () {
            $('#fechaEmpleado').datepicker({
                format: 'dd/mm/yyyy', // Formato de fecha personalizado
                autoclose: true
            });
            $('#limpiarFecha').click(function () {
                // Limpiar la fecha
                $('#fechaEmpleado').val('');
            });
        });
//Restablecer Modal
        $('#editUserModal').on('hidden.bs.modal', function (e) {
            $(this).find('input, select').each(function () {
                $(this).val(null); // Establece el valor a nulo (vacío)
            });
        });
    </script>

    <script>
        $(document).ready(function () {
            $('#fechaEmpleadoInsert').datepicker({
                format: 'dd/mm/yyyy', // Formato de fecha personalizado
                autoclose: true
            });
            $('#limpiarFechaInsert').click(function () {
                // Limpiar la fecha
                $('#fechaEmpleadoInsert').val('');
            });
        });

// Restablecer Modal
        $('#insertUserModal').on('hidden.bs.modal', function (e) {
            $(this).find('input, select').each(function () {
                $(this).val(null); // Establece el valor a nulo (vacío)
            });
        });
// Restablecer ModalBUS
        $('#insertUserModalBus').on('hidden.bs.modal', function (e) {
            $(this).find('input, select').each(function () {
                $(this).val(null); // Establece el valor a nulo (vacío)
            });
        });
    </script>

    <script>
        var win = navigator.platform.indexOf('Win') > -1;
        if (win && document.querySelector('#sidenav-scrollbar')) {
            var options = {
                damping: '0.5'
            }
            Scrollbar.init(document.querySelector('#sidenav-scrollbar'), options);
        }
    </script>
    <!-- Github buttons -->
    <script async defer src="https://buttons.github.io/buttons.js"></script>
    <!-- Control Center for Soft Dashboard: parallax effects, scripts for the example pages etc -->
    <script src="../assets/js/soft-ui-dashboard.min.js?v=1.0.7"></script>
</body>

</html>