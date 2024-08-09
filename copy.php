<!-- <?php 

    // session_start();

    // if ( !isset($_SESSION["login"]) ) {
    //     header("Location: index.php");
    //     exit;
    // }

    // require('functions.php');
    

    ?> -->
    <!DOCTYPE html>
    <html lang="en">
    
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="icon" type="image/jpeg" href="gudanggaram.jpeg" sizes="16x16">
        <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp">
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
            integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <link rel="stylesheet" href="load_style.css">
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
            integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous">
        </script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
            integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous">
        </script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/solid.js"
            integrity="sha384-tzzSw1/Vo+0N5UhStP3bvwWPq+uvzCMfrN1fEFe+xBmv1C/AtVX5K0uZtmcHitFZ" crossorigin="anonymous">
        </script>
        <script defer src="https://use.fontawesome.com/releases/v5.0.13/js/fontawesome.js"
            integrity="sha384-6OIrr52G08NpOFSZdxxz1xdNSndlD4vdcf/q2myIUVO0VsqaGHJsB0RaBE01VTOY" crossorigin="anonymous">
        </script>
        <script src="modernizr-2.6.2.min.js"></script>
        <title>RKAT | PAGE</title>
    </head>
    
    <body class="transform-page">
    
        <!-- Preload -->
        <header class="entry-header">
        </header>
        <div id="loader-wrapper">
            <div id="loader"></div>
            <div class="loader-section section-left"></div>
            <div class="loader-section section-right"></div>
        </div>
        <!-- End Of Preload -->
    
        <div class="wrapper">
            <!-- Sidebar Holder -->
            <nav id="sidebar" class="position-relative">
                <div class="position-sticky top-0 start-0">
                    <div class="sidebar-header">
                        <h3>Se<span style="color: #06113C;">bad</span>
                            <img src="wismilak.jpeg" style="border-radius: 50%;" alt="" width="24" height="24">
                        </h3>
                    </div>
    
                    <ul class="list-unstyled components">
                        <p class="text-center">UI</p>
                        <li class="active">
                            <a href="index.php" style="font-size: 32px;">
                                <span class="material-icons-sharp">
                                    home
                                </span>
                                RKAT
                            </a>
                        </li>
                        <li>
                            <a href="mak.php" style="font-size: 32px;">
                                <span class="material-icons-sharp">
                                    monetization_on
                                </span>
                                MAK
                            </a>
                        </li>
                        <li>
                            <a href="sbu.php" style="font-size: 32px;">
                                <span class="material-icons-sharp">
                                    monetization_on
                                </span>
                                SBU
                            </a>
                        </li>
    
                        <li class="list-unstyled text-center mt-5">
                            <!-- <img src="img/<?= $_SESSION["fotoprofile"] ?>" alt="" width="64" height="64"
                                style="border-radius: 90%;">
                            <p><?php echo $_SESSION['nama'] ?></p>
                            <small><?php echo $_SESSION['prodi'] ?></small> -->
                            <p>2021</p>
                        </li><br><br><br><br>
                    </ul>
                </div>
            </nav>
    
            <!-- Page Content Holder -->
            <div id="content">
                <nav class="navbar navbg navbar-expand-lg navbar-light rounded-bottom">
                    <div class="container-fluid">
                        <button type="button" id="sidebarCollapse" class="navbar-btn rounded">
                            <span></span>
                            <span></span>
                            <span></span>
                        </button>
    
                        <a type="button" class="position-relative text-light" href="logout.php">
                            Logout <span
                                class="position-absolute top-0 start-100 translate-middle badge border border-light rounded-circle bg-danger p-2"><span
                                    class="visually-hidden">unread messages</span></span>
                        </a>
    
                    </div>
                </nav>
                <div class="container">
                    <h1>
                        <span class="material-icons-sharp bg-dark text-light" style="border-radius: 50%; font-size: 1em;">
                            home
                        </span>
                        RKAT
                    </h1>
                    <span>Danu Pagu Awal :
                        <?php 
                            include('functions.php');
    
                            $sql = 'SELECT * FROM pagu';
                            $result = mysqli_query($conn, $sql);
                            if(!$result){
                                die('Could not get data: ' . mysqli_error());
                            }
                            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                                echo "<span class='text-warning'> Rp. {$row['pagu awal']},- </span>";
                        ?>
                    </span>
                    <br>
                    <span>Danu Pagu Terpakai :
                        <?php 
                            include('functions.php');
    
                            $sql = 'SELECT * FROM pagu';
                            $result = mysqli_query($conn, $sql);
                            if(!$result){
                                die('Could not get data: ' . mysqli_error());
                            }
                            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                            if($row['pagu_akhir'] > 100000000){
                                echo "<span class='text-danger'> Rp. {$row['pagu_akhir']},- </span>";
                            } else {
                                echo "<span class='text-success'> Rp. {$row['pagu_akhir']},- </span>";
                            }
                        ?>
                    </span>
                    <form>
                        <div class="mt-3">
                            <?php
                                include('functions.php');
        
                                $sql = 'SELECT * FROM mak';
                                $result = mysqli_query($conn, $sql);
                                if(!$result){
                                    die('Could not get data: ' . mysqli_error());
                                }
        
                                if ( ($result) ) {
                                    echo " <select class='form-select p-2
                                            rounded-3 mb-3' aria-label='Default select
                                            example' name='mak' id='mak'
                                            style='width: 100%;' required>";
            
                                            while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                                                echo "<option value='{$row['kode']}' selected>{$row['mak']}</option>";
                                            }
                                    echo "</select>";
                                    echo "<label for='ID SBU'>ID :</label>";
                                    echo "<input class='mb-4 d-block' type='number' name='sbu' id='sbu' required>";
                                    echo "<input type='submit' name='show_rkat' class='btn btn-primary mb-5' value='Lihat RKAT'>";
                                }
                            ?>
                        </div>
                    </form>
                    <form action="" method="post">
                        <?php 
                            if ( isset($_GET['show_rkat']) ) {
                                if (!empty($_GET['mak']) && !empty($_GET['sbu'])) {
                                    global $conn;
    
                                    $id_mak = $_GET["mak"];
                                    $id_sbu = $_GET["sbu"];
    
                                    $query = mysqli_query($conn, "SELECT rkat.kode, rkat.kegiatan, rkat.deskripsi, rkat.besaran, mak.mak, sbu.tarif FROM rkat INNER JOIN mak INNER JOIN sbu WHERE mak.kode=$id_mak AND sbu.id=$id_sbu;");
                                    // $tmp = mysqli_fetch_array($query, MYSQLI_ASSOC);
    
                                    // if ( isset($tmp) ) {
                                    //     echo "<span class='text-danger'> Nama Mahasiswa : <span class='text-primary'>{$tmp_query4['nama']}</span> </span><br>";
                                    // }
                                    echo "<table class='table table-striped table-primary rounded p-3'>
                                        <thead>
                                            <tr>
                                                <th scope='col' class='text-center'>Kode</th>
                                                <th scope='col'>Nama Kegiatan</th>
                                                <th scope='col'>Deskripsi</th>
                                                <th scope='col' class='text-center'>Besaran</th>
                                                <th scope='col'>Nama MAK</th>
                                                <th scope='col'>SBU Tarif</th>
                                            </tr>
                                        </thead>
                                        <tbody>";
                                    $i = 1;
                                    while($tmp = mysqli_fetch_array($query, MYSQLI_ASSOC)){
                                        echo "<tr>";
                                        echo "<td> {$tmp['kode']} </td>";
                                        echo "<td> {$tmp['kegiatan']} </td>";
                                        echo "<td class='text-center'> {$tmp['deskripsi']} </td>";
                                        echo "<td> {$tmp['besaran']} </td>";
                                        echo "<td> {$tmp['mak']} </td>";
                                        echo "<td> {$tmp['tarif']} </td>";
                                        echo "</tr>";
                                    }
                                    
                                    echo "</tbody>";
                                    echo "</table>";
    
    
                                }
                            }
    
                        ?>
                    </form>
                    <span class="d-block mb-2">Tambah Record Data RKAT</span>
                    <a href="add_rkat.php" class="text-decoration-none text-primary">
                        <button type="submit" class="btn btn-primary text-center" name="add" id="add">Add RKAT</button>
                    </a>
                    <div class="line"></div>
                </div>
    
                <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
                    integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo"
                    crossorigin="anonymous">
                </script>
                <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
                    integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
                    crossorigin="anonymous">
                </script>
                <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
                <script src="main.js"></script>
                <script>
                new WOW().init();
                </script>
                <script type="text/javascript">
                $(document).ready(function() {
                    $('#sidebarCollapse').on('click', function() {
                        $('#sidebar').toggleClass('active');
                        $(this).toggleClass('active');
                    });
                });
                </script>
    </body>
    
    </html>