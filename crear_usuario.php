<?php require_once "parte_superior.php" ?>
<?php require "connwPDO.php" ?>



<div class="container-fluid">
    <div class="d-sm-flex align-items-center justify-content-between mb-4">
        <h1 class="h3 mb-0 text-gray-800">Crear nuevo usuario</h1>
    </div>
</div>

<!-- Contenedor de las tarjetas -->
<div class="container-fluid">


    <!-- Tarjeta de datos más importantes -->
    <div class="card shadow mb-6">
        <div class="card-header py-3">
            <h6 class="m-0 font-weight-bold text-primary">Datos más importantes: </h6>
        </div>
        <!-- Cuerpo de la tarjeta de datos más importantes -->
        <div class="card-body">
            <form action="nuevo_usuario.php" class="formulario-registro-tutor" id="formulario-registro-tutor" method="POST">


                <!--Grupo: Nombres-->
                <div class="formulario__grupo" id="grupo__nombres">
                    <label for="nombres" class="formulario__label">Nombre de usuario</label>
                    <div class="formulario__grupo-input">
                        <input type="text" class="formulario__input" id="nombres" name="nombres" placeholder="Tirone José">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">El nombre debe ser tener un mínimo 5 caracteres y un máximo de 18.</p>
                </div>

                <!--Grupo: Departamento-->
                <div class="container">
                    <label for="unidad">Unidad a la que pertenece</label>
                    <div class="">
                    <select id="BuscarUnidad" class="custom-select" name="unidad" lang="es">
                        <option value="0">- Buscar unidad -</option>
                    </select>
                    </div>
                </div>

                <!--Grupo: Contraseña-->
                <div class="formulario__grupo" id="grupo__clave">
                    <label for="clave" class="formulario__label">Crea una contraseña:</label>
                    <div class="formulario__grupo-input">
                        <input type="password" class="formulario__input" id="clave" name="clave">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">La contraseña tiene que ser de 4 a 12 dígitos</p>
                </div>

                <!--Grupo: Contraseña 2-->
                <div class="formulario__grupo" id="grupo__clave2">
                    <label for="clave2" class="formulario__label">Repite la contraseña:</label>
                    <div class="formulario__grupo-input">
                        <input type="password" class="formulario__input" id="clave2" name="clave2">
                        <i class="formulario__validacion-estado fas fa-times-circle"></i>
                    </div>
                    <p class="formulario__input-error">Las contraseñas deben ser iguales</p>
                </div>
                <!-- Submit -->
                <div class="">
                    <input type="submit" class="btn btn-success" value="Crear">
                </div>
            </form>
        </div>

    </div>
</div>


<!-- SCRIPTS -->

<?php require_once "parte_inferior.php" ?>