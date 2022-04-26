<head>

    <title>Panel de usuarios</title>

    <!-- Custom fonts for this template-->
    <link href="../Resources/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">

    <!-- Custom styles for this template-->
    <link href="../Resources/css/sb-admin-2.min.css" rel="stylesheet">
    <link href="../Resources/css/sb-admin-2.css" rel="stylesheet">


</head>

<?php include_once("parte_superior.php"); ?>
<!-- Begin Page Content -->

<div class="container-fluid">

    <!-- Page Heading -->
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Panel para administrar usuarios</h1>
        <a href="crear_usuario.php" class="d-none d-sm-inline-block btn btn-sm btn-primary shadow-sm"> Agregar nuevo usuario</a>
    </div>

    <div class="row">
        <!--Tabla donde se mostrarán los administradores del sistema-->

        <div class="col-lg-12">

            <!-- Lista de usuarios -->
            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Administradores</h6>
                </div>
                <div class="card">
                    <div class="card-body">
                        <table class="table table-bordered table table-bordered border-primary">
                            <thead>
                                <tr>
                                    <th scope="col">Id</th>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Apellidos</th>
                                    <th scope="col">Área</th>
                                    
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="row">1</th>
                                    <td>Mark</td>
                                    <td>Otto</td>
                                    <td>@mdo</td>
                                </tr>
                                <tr>
                                    <th scope="row">2</th>
                                    <td>Jacob</td>
                                    <td>Thornton</td>
                                    <td>@fat</td>
                                </tr>
                                <tr>
                                    <th scope="row">3</th>
                                    <td>Larry</td>
                                    <td>the Bird</td>
                                    <td>@twitter</td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!--Técnicos que atenderán principalmente las áreas de la presidencia-->

        <div class="col-lg-12">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Usuarios que brindan soporte tipo: Soporte A</h6>
                </div>
                <div class="card-body">

                </div>
            </div>

        </div>

        <!--Técnicos que atenderán principalmente las áreas de las dependencias-->
        <div class="col-lg-12">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Usuarios que brindan soporte tipo: Soporte B</h6>
                </div>
                <div class="card-body">

                </div>
            </div>

        </div>
        <!--Técnicos que atenderán principalmente las áreas de la A.P.D-->
        <div class="col-lg-12">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Usuarios que brindan soporte tipo: Soporte C</h6>
                </div>
                <div class="card-body">

                </div>
            </div>

        </div>

        <!--Presidencia-->
        <div class="col-lg-12">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Usuarios de la honorable presidencia: </h6>
                </div>
                <div class="card-body">

                </div>
            </div>

        </div>

        <!-- Dependencias-->
        <div class="col-lg-12">

            <div class="card shadow mb-4">
                <div class="card-header py-3">
                    <h6 class="m-0 font-weight-bold text-primary">Usuarios de las dependencias públicas: </h6>
                </div>
                <div class="card-body">

                </div>
            </div>

        </div>

    </div>
    <!-- /.container-fluid -->

</div>
<!-- End of Main Content -->

<?php require_once "parte_inferior.php"; ?>