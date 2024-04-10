<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mi Página Web</title>
    <link href="Estilos.css" rel="stylesheet"/><!-- Vinculación a un archivo CSS externo -->
    <!-- Agrega la API de Google Maps -->
    <script src="" async defer></script>
</head>
<body>

<!-- Barra de navegación con logo y botón -->
<div class="topnav">
    <a class="logo" href="#"><img src="Imagenes/Tec.png" alt="Logo"></a>
    <?php
        session_start();
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in']) {
            if ($_SESSION['user_type'] == 'Estudiante') {
                // Si es un usuario 'Estudiante', muestra el botón para cerrar sesión con confirmación
                echo '<button class="button" onclick="return confirmLogout();"><a href="Logout.php" style="color: white; text-decoration: none;">Estudiante</a></button>';
            }
            } else {
            // Si no hay una sesión iniciada, muestra el botón para iniciar sesión
            echo '<button class="button"><a href="Login.php" style="color: white; text-decoration: none;">Ingresar</a></button>';
            }
    ?>
    <script>
    function confirmLogout() {
        return window.confirm("¿Estás seguro de que deseas cerrar sesión?");
    }
    </script>
</div>

<!-- Contenedor de tarjetas -->
<div class="card-container">

<!-- Tarjeta 2 -->
<div class="card" id="card2">
    <div class="card-content">
        <!-- Mapa de Google -->
        <div id="mapa" style="height: 500px;"></div>

<!-- Enlace al archivo PDF -->
<p style="font-size: 16px; margin-bottom: 10px;">
    <a href="Archivos/Mapa del ITCH 2021.pdf" target="_blank" style="color: #007BFF; text-decoration: none; font-weight: bold;">
        Presiona aquí para ver el croquis
    </a>
</p>
    </div>
</div>

<script>
    // Función para inicializar el mapa de Google
    function inicializarMapa() {
        var mapa = new google.maps.Map(document.getElementById('mapa'), {
            center: {lat: 18.519579180961788, lng: -88.30192940244966}, // Reemplaza con las coordenadas del ITCH
            zoom: 18,  // Ajusta el nivel de zoom según tus preferencias
            mapTypeId: google.maps.MapTypeId.HYBRID  // Configura el tipo de mapa a híbrido (satélite con etiquetas)
        });

        var marker = new google.maps.Marker({
            position: {lat: 18.519579180961788, lng: -88.30192940244966}, // Reemplaza con las coordenadas del ITCH
            map: mapa,
            title: 'ITCH'
        });
    }
</script>
    
        <!-- Tarjeta 3 -->
        <div class="card" id="card3">
            <div class="card-content">
                <button class="image-button3" onclick="checkSession();">
                    <img src="Imagenes/Carpeta.png" alt="" class="card3">
                    <span class="image-text3">Mis Actividades</span>
                </button>
            </div>
        </div>

        <!-- Tarjeta 4 -->
        <div class="card" id="card4" >
            <div class="card-content4">
                <!-- Contenido de la tarjeta 4 -->
                <h1>BIENVENIDO</h1>
                <hr class="orange-line">
                <p>Lorem ipsum dolor sit amet. Sed doloribus sint quo facilis velit ad
                asperiores consequatur. Ex nisi fugiat non accusantium suscipit non nisi
                autem ut quaerat voluptas qui iusto tenetur</p>
            </div>
        </div>
    
        <!-- Tarjeta 5 -->
        <div class="card" id="card5">
            <div class="card-content">
                <div class="title-container">
                    <h3>Información</h3>
                    <button class="image-button5">
                        <a href="Archivos/ManualUsuario_Agenda.pdf" target="_blank" title="Enlace al Manual Usuario">
                            <img src="Imagenes/Play.png" alt="" class="image5">
                        </a>
                    </button>
                </div>
            </div>
        </div>

        <!-- Tarjeta 6 -->
    <div class="card" id="card6">
        <div class="calendario">
                <?php
            // Configurar la zona horaria a la de tu ubicación
            date_default_timezone_set('America/Mexico_City');
            
            // Nombres de los meses en español
            $meses_en_espanol = [
                1 => 'Enero', 'Febrero', 'Marzo', 'Abril', 'Mayo', 'Junio',
                'Julio', 'Agosto', 'Septiembre', 'Octubre', 'Noviembre', 'Diciembre'
            ];
            
            // Obtener la fecha actual
            $fecha_actual = date('Y-m-d');
            $anio_actual = date('Y');
            $mes_actual = date('n');
            $dia_actual = date('j');
            
            // Verificar si se ha enviado una solicitud para cambiar de mes
            if (isset($_GET['mes'])) {
                $mes_actual = intval($_GET['mes']);
            }
            
            // Calcular el primer día del mes actual
            $primer_dia_mes = date('N', strtotime($anio_actual . '-' . $mes_actual . '-01'));
            
            // Obtener el número de días en el mes actual
            $numero_dias_mes = date('t', strtotime($anio_actual . '-' . $mes_actual . '-01'));
            
            // Imprimir el año y mes actual
            echo "<div class='grid-item calendario'>";
            echo "<div class='calendar'>";
            echo "<div class='month'>";
            echo "<span>" . $meses_en_espanol[$mes_actual] . "</span>";
            echo "<span class='year'>{$anio_actual}</span>";
            echo "</div>";
            
            // Enlaces para cambiar de mes
            echo "<div class='month'>";
            $mes_anterior = $mes_actual - 1;
            $mes_siguiente = $mes_actual + 1;
            $anio_anterior = $anio_actual;
            $anio_siguiente = $anio_actual;
            
            if ($mes_anterior == 0) {
                $mes_anterior = 12;
                $anio_anterior = $anio_actual - 1;
            }
            
            if ($mes_siguiente == 13) {
                $mes_siguiente = 1;
                $anio_siguiente = $anio_actual + 1;
            }
            
            echo "<a class='nav' href='?mes={$mes_anterior}'>&#8249;</a>";
            echo "<a class='nav' href='?mes={$mes_siguiente}'>&#8250;</a>";
            echo "</div>";
            
            // Crear una tabla para el calendario
            echo "<div class='days'>";
            $nombre_dias_semana = ['Dom', 'Lun', 'Mar', 'Mié', 'Jue', 'Vie', 'Sáb'];
            foreach ($nombre_dias_semana as $dia) {
                echo "<span>{$dia}</span>";
            }
            echo "</div>";
            
            echo "<div class='dates'>";
            $dia_semana = $primer_dia_mes;
            $numero_dia = 1;
            
            // Imprimir los espacios en blanco para los días previos al primer día del mes
            for ($i = 1; $i < $dia_semana; $i++) {
                echo "<button></button>";
            }
            
            // Imprimir los días del mes
            while ($numero_dia <= $numero_dias_mes) {
                $clase_dia = ($numero_dia == $dia_actual && $mes_actual == date('n') && $anio_actual == date('Y')) ? 'today' : '';
                echo "<button class='{$clase_dia}'>{$numero_dia}</button>";
                $numero_dia++;
                $dia_semana++;
            }
            
            // Completar la última fila con espacios en blanco si es necesario
            while ($dia_semana <= 7) {
                echo "<button></button>";
                $dia_semana++;
            }
            
            echo "</div>";
            echo "</div>";
            echo "</div>";
            ?>
        </div>
    </div>
</div>

<script>
function checkSession() {
    <?php
        if (isset($_SESSION['logged_in']) && $_SESSION['logged_in']) {
            // Asegúrate de que 'user_id' esté disponible
            if (isset($_SESSION['user_id'])) {
                // Concatena de forma segura el 'user_id' a la URL
                $userId = $_SESSION['user_id'];
                echo "window.location.href = 'Academicas.php';";
            } else {
                echo 'alert("ID de usuario no encontrado.");';
            }
        } else {
            echo 'alert("Por favor, inicia sesión para continuar.");';
        }
    ?>
}
</script>

</body>
</html>
    
