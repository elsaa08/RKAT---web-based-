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
    <title>MAK | PAGE</title>
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
                        <img src="gudanggaram.jpeg" style="border-radius: 50%;" alt="" width="24" height="24">
                    </h3>
                </div>

                <ul class="list-unstyled components">
                    <p class="text-center">UI</p>
                    <li>
                        <a href="index.php" style="font-size: 32px;">
                            <span class="material-icons-sharp">
                                home
                            </span>
                            RKAT
                        </a>
                    </li>
                    <li class="active">
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
                        monetization_on
                    </span>
                    MAK
                </h1>
                <div class="table-responsive mt-3">
                    <?php
                            include('functions.php');
    
                            $sql = 'SELECT * FROM mak';
                            $result = mysqli_query($conn, $sql);
                            if(!$result){
                                die('Could not get data: ' . mysqli_error());
                            }
    
                            echo "<table class='table table-responsive table-hover table-striped'>
                                    <thead>
                                        <tr>
                                            <th scope='col' class='text-primary'>No</th>
                                            <th scope='col' class='text-primary'>Kode</th>
                                            <th scope='col' class='text-primary'>Mata Anggaran Kegiatan</th>
                                        </tr>
                                    </thead>
                                    <tbody>";
    
                            $i = 1;
                            while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                                echo "<tr>";
                                echo "<td> $i </td>";
                                echo "<td> {$row['kode']} </td>";
                                echo "<td> {$row['nama_mak']} </td>";
                                echo "</tr>";
                                $i++;
                                }
                                echo "</tbody>";
                                echo "</table>";
                                mysqli_close($conn);
                        ?>
                    <!-- <a href="add_mak.php" class="text-decoration-none text-primary">
                        <button type="submit" class="btn btn-primary text-center" name="add" id="add">Add MAK</button>
                    </a> -->
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