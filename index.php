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
                        <p>2022</p>
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
                <form>
                    <?php 
                        include('function.php');

                        $sql = 'SELECT * FROM pagu';
                        $result = mysqli_query($conn, $sql);

                        if(!$result){
                            die('Could not get data: ' . mysqli_error());
                        }

                        echo " <select class='form-select p-2
                                rounded-3 mb-3' aria-label='Default select
                                example' name='tahunpagu' id='tahunpagu'
                                style='width: 100%;' required>";

                                while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                                    echo "<option value='{$row['tahun_pagu']}' selected>{$row['tahun_pagu']}</option>";
                                }
                        echo "</select>";

                        echo "<input type='submit' name='show_data' class='btn btn-primary mb-5'>";
                    ?>
                </form>
                <span>Dana Pagu Awal :
                    <?php
                        $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
                        if (!empty($_GET['tahunpagu'])){
                            $tahun_pagu = $_GET['tahunpagu'];
                        }
                        if (isset($tahun_pagu)){
                            $sql = "SELECT * FROM pagu WHERE tahun_pagu = $tahun_pagu";
                            $result = mysqli_query($conn, $sql);
                            if(!$result){
                                die('Could not get data: ' . mysqli_error());
                            }
                            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                                echo "<span class='text-warning'> Rp. {$row['besar_pagu']},- </span>";
                        }
                    ?>
                </span>
                <br>
                <span class="d-block">Dana Pagu Terpakai :
                    <?php
                        $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
                        if (!empty($_GET['tahunpagu'])){
                            $tahun_pagu = $_GET['tahunpagu'];
                        }
                        if (isset($tahun_pagu)){
                            $sql = "SELECT * FROM pagu WHERE tahun_pagu = $tahun_pagu";
                            $result = mysqli_query($conn, $sql);
                            if(!$result){
                                die('Could not get data: ' . mysqli_error());
                            }
                            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                            if($row['pagu_terpakai'] > $row['besar_pagu']){
                                echo "<span class='text-danger'> Rp. {$row['pagu_terpakai']},- </span>";
                            } else {
                                echo "<span class='text-success'> Rp. {$row['pagu_terpakai']},- </span>";
                            }
                        }
                    ?>
                </span>
                <span class="d-block"> Persentase Serapan :
                    <?php
                        $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
                        if (!empty($_GET['tahunpagu'])){
                            $tahun_pagu = $_GET['tahunpagu'];
                        }
                        if (isset($tahun_pagu)){
                            $sql = "SELECT * FROM pagu WHERE tahun_pagu = $tahun_pagu";
                            $result = mysqli_query($conn, $sql);
                            if(!$result){
                                die('Could not get data: ' . mysqli_error());
                            }
                            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                            $temp = ($row['pagu_terpakai']/$row['besar_pagu'])*100;

                            echo "<span class='text-dark'>$temp%</span>";
                        }
                    ?>
                </span>
                <span class="text-end">
                    <?php 
                        $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
                        if (!empty($_GET['tahunpagu'])){
                            $tahun_pagu = $_GET['tahunpagu'];
                        }
                        if (isset($tahun_pagu)){
                            $sql = "SELECT * FROM pagu WHERE tahun_pagu = $tahun_pagu";
                            $result = mysqli_query($conn, $sql);
                            if(!$result){
                                die('Could not get data: ' . mysqli_error());
                            }
                            $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                            echo "<p>Tahun {$row['tahun_pagu']}</p>";
                        }
    
                    ?>
                </span>
                
                <div class="table-responsive mt-3">
                    <?php
                        $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
                        if (!empty($_GET['tahunpagu'])){
                            $tahun_pagu = $_GET['tahunpagu'];
                        }
                        if (isset($tahun_pagu)){
                            $sql = "SELECT s.id ,s.id_program, p.nama_program, s.besaran, s.sisa, s.tahun, s.status_update FROM sub_program s INNER JOIN program p ON s.id_program=p.id_program  WHERE s.tahun = $tahun_pagu;";
                            $result = mysqli_query($conn, $sql);
                            if(!$result){
                                die('Could not get data: ' . mysqli_error());
                            }
                            echo "<h3 class='text-center'>Table Program</h3>";
                            echo "<table class='table table-responsive table-hover table-striped text-center'>
                                <thead>
                                    <tr>
                                        <th scope='col' class='text-primary'>ID Program</th>
                                        <th scope='col' class='text-primary'>Program</th>
                                        <th scope='col' class='text-primary'>Anggaran</th>
                                        <th scope='col' class='text-primary'>Sisa</th>
                                        <th scope='col' class='text-primary'>Tahun</th>
                                        <th scope='col' class='text-primary'>Action</th>
                                    </tr>
                                </thead>
                                <tbody>";
    
                            while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                                echo "<tr>";
                                echo "<td> {$row['id_program']} </td>";
                                echo "<td> {$row['nama_program']} </td>";
                                echo "<td> {$row['besaran']} </td>";
                                echo "<td> {$row['sisa']} </td>";
                                echo "<td> {$row['tahun']} </td>";
                                if ($row['status_update'] != 0){
                                    echo "<td>
                                    <a href='update_program.php?id={$row['id']}'> 
                                        <button class='btn btn-warning'>Update Program</button>
                                    </a>
                                    </td>";
                                }else {
                                    echo "<td> </td>";
                                }
                                echo "</tr>";
                            }

                            $sql2 = "SELECT sum(besaran) as total FROM sub_program WHERE tahun = $tahun_pagu";
                            $result2 = mysqli_query($conn, $sql2);
                            $row2 = mysqli_fetch_array($result2, MYSQLI_ASSOC);

                            $sql3 = "SELECT besar_pagu FROM pagu WHERE tahun_pagu = $tahun_pagu";
                            $result3 = mysqli_query($conn, $sql3);
                            $row3 = mysqli_fetch_array($result3, MYSQLI_ASSOC);

                            $sql4 = "SELECT sum(sisa) as sisa FROM sub_program WHERE tahun = $tahun_pagu";
                            $result4 = mysqli_query($conn, $sql4);
                            $row4 = mysqli_fetch_array($result4, MYSQLI_ASSOC);

                            echo "<tr>";
                            echo "<td><strong>Total</strong></td>";
                            echo "<td></td>";
                            if ($row3['besar_pagu'] == $row2['total']) {
                                echo "<td> <strong class='text-success'>{$row2['total']}</strong> </td>";
                            } else if($row3['besar_pagu'] < $row2['total']) {
                                echo "<td> <strong class='text-danger'>{$row2['total']}</strong> </td>";
                            } else if($row3['besar_pagu'] > $row2['total']) {
                                echo "<td> <strong class='text-warning'>{$row2['total']}</strong> </td>";
                            }
                            echo "<td><strong>{$row4['sisa']}</strong></td>";
                            echo "<td></td>";
                            echo "<td></td>";
                            echo "</tr>";


                            echo "</tbody>";
                            echo "</table>";
                            mysqli_close($conn);
                        }
                    ?>
                </div>
                <?php
                $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
                if (empty($_GET['tahunpagu'])){
                    $sql = "SELECT * FROM pagu";
                    $result = mysqli_query($conn, $sql);
                    if(!$result){
                        die('Could not get data: ' . mysqli_error());
                    }
                    $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                    if (isset($row['besar_pagu'])) {
                        echo "<a href='input_pagu.php' class='text-decoration-none'><button class='btn btn-primary mt-4'>Input PAGU</button></a>";
                    }
                }

                ?>
                <?php 
                    $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
                    if (!empty($_GET['tahunpagu'])){
                        $tahun_pagu = $_GET['tahunpagu'];
                    }
                    if (isset($tahun_pagu)) {
                        $sql = "SELECT * FROM pagu WHERE tahun_pagu = $tahun_pagu";
                        $result = mysqli_query($conn, $sql);
                        if(!$result){
                            die('Could not get data: ' . mysqli_error());
                        }
                        $row = mysqli_fetch_array($result, MYSQLI_ASSOC);
                        if ($row['besar_pagu'] != 0) {
                            echo "<a href='input_program.php' class='text-decoration-none'>
                            <button class='btn btn-primary mt-4'>Input Program</button>
                            </a>";
                        }
                    }
                ?>
                
                
                <div class="table-responsive mt-3">
                    <?php
                        if (!empty($_GET['tahunpagu'])){
                            $tahun_pagu = $_GET['tahunpagu'];
                        }
                        $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
                        if (isset($tahun_pagu)){
                            $sql = "SELECT rkat.id, kegiatan.kegiatan, rkat.deskripsi, mak.nama_mak, sbu.tarif, rkat.kode_iku, rkat.dana_terpakai, rkat.spj FROM rkat INNER JOIN kegiatan ON rkat.kode_kegiatan=kegiatan.kode_kegiatan INNER JOIN mak ON rkat.kode_mak=mak.kode INNER JOIN sbu ON rkat.kode_sbu=sbu.kode_sbu WHERE tahun_pagu = $tahun_pagu;";
                            $result = mysqli_query($conn, $sql);
                            if(!$result){
                                die('Could not get data: ' . mysqli_error());
                            }
                            echo "<h3 class='text-center'>Table RKAT</h3>";
                            echo "<table class='table table-responsive table-hover table-striped text-center'>
                                    <thead>
                                        <tr>
                                            <th scope='col' class='text-primary'>No</th>
                                            <th scope='col' class='text-primary'>Nama Kegiatan</th>
                                            <th scope='col' class='text-primary'>Deskripsi</th>
                                            <th scope='col' class='text-primary'>MAK</th>
                                            <th scope='col' class='text-primary'>Dana Terpakai</th>
                                            <th scope='col' class='text-primary'>Tarif</th>
                                            <th scope='col' class='text-primary'>Kode IKU</th>
                                            <th scope='col' class='text-primary'>SPJ</th>
                                        </tr>
                                    </thead>
                                    <tbody>";
    
                            $i = 1;
                            while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                                echo "<tr>";
                                echo "<td> $i </td>";
                                echo "<td> {$row['kegiatan']} </td>";
                                echo "<td> {$row['deskripsi']} </td>";
                                echo "<td> {$row['nama_mak']} </td>";
                                
                                if ($row['dana_terpakai'] == 0) {
                                    echo "<td> 
                                    <a href='update_rkat.php?id={$row['id']}'> 
                                        <button class='btn btn-info'>Isi Dana</button>
                                    </a>
                                    </td>";
                                } else {
                                    if ($row['dana_terpakai'] > $row['tarif']){
                                        echo "<td> <span class='text-danger'>{$row['dana_terpakai']}</span> </td>";
                                    } else {
                                        echo "<td> <span class='text-success'>{$row['dana_terpakai']}</span> </td>";
                                    }
                                }
    
                                echo "<td> {$row['tarif']} </td>";
                                echo "<td> {$row['kode_iku']} </td>";
                                if ($row['spj'] == 0) {
                                    echo "<td><span class='text-danger text-center'>Tidak Terpenuhi</span></td>";
                                }else {
                                    echo "<td><span class='text-success text-center'>Terpenuhi</span></td>";
                                }
                                echo "</tr>";
                                $i++;
                            }
                            echo "</tbody>";
                            echo "</table>";
                            echo "<a href='add_rkat.php' class='text-decoration-none text-primary'>
                            <button type='submit' class='btn btn-primary text-center' name='add' id='add'>Add RKAT</button>
                            </a>";
                            mysqli_close($conn);
                        }
                    ?>
                </div>
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