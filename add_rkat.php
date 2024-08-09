<?php
    session_start();

    if ( isset($_SESSION["login"]) ) {
        header("Location: index.php");
        exit;
    }

    require 'function.php';
    
        if ( isset($_POST["addrkat"]) ) {
            if( addrkat($_POST) > 0 ) {
                echo "<script>
                        alert('user berhasil menambahkan data RKAT!');
                </script>";
                header("Location: index.php");
            }
        } else {
            echo mysqli_error($conn);
        }

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="icon" type="image/jpeg" href="C2.jpeg" sizes="16x16">
    <title>Add RKAT data record | PAGE</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="style2.css">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons+Sharp">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
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
    <link rel="stylesheet" href="style-bg-animated.css">
</head>

<body>
    <!-- Animated Background -->
    <div class="bg"></div>
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    <!-- ------------------- -->
    <div class="container mt-5">
        <a href="index.php" class="ms-auto text-decoration-none text-light">
            <button class="btn btn-primary">
                <span class="material-icons-sharp" style="font-size: 12px;">
                    arrow_back_ios_new
                </span>
                Back
            </button>
        </a>
        <form action="" method="post">
            <fieldset>
                <legend>Menambah Record data RKAT</legend>
                <table class="table table-primary table-striped table-responsive">
                    <tbody>
                    <tr>
                            <td>
                                <label for="iku">Kode IKU :</label>
                            </td>
                            <td>
                                <?php 
                                    $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");

                                    $sql_mak = 'SELECT * FROM iku';
                                    $result_mak = mysqli_query($conn, $sql_mak);
                                    if(!$result_mak){
                                        die('Could not get data: ' . mysqli_error());
                                    }
                                    echo "<select class='form-select p-2
                                    rounded-3' aria-label='Default select
                                    example' name='iku' id='iku' style='width: 100%;' required>";
                                        while($row = mysqli_fetch_array($result_mak, MYSQLI_ASSOC)){
                                            echo "<option value='{$row['kode_iku']}' selected>{$row['kode_iku']} - {$row['nama_iku']}</option>";
                                        }
                                    echo "</select>";
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="kegiatan">Nama Kegiatan :</label>
                            </td>
                            <td>
                                <?php 
                                    $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");

                                    $sql = 'SELECT * FROM kegiatan';
                                    $result = mysqli_query($conn, $sql);
                                    if(!$result){
                                        die('Could not get data: ' . mysqli_error());
                                    }
                                    echo "<select class='form-select p-2
                                    rounded-3' aria-label='Default select
                                    example' name='kegiatan' id='kegiatan' style='width: 100%;' required>";
                                        while($row = mysqli_fetch_array($result, MYSQLI_ASSOC)){
                                            echo "<option value='{$row['kode_kegiatan']}' selected>{$row['kode_kegiatan']} - {$row['kegiatan']}</option>";
                                        }
                                    echo "</select>";
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="deskripsi">Deskripsi :</label>
                            </td>
                            <td>
                                <input type="text" name="deskripsi" id="deskripsi" required>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="mak">Kode MAK :</label>
                            </td>
                            <td>
                                <?php 
                                    $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
                                    
                                    $sql_mak = 'SELECT * FROM mak';
                                    $result_mak = mysqli_query($conn, $sql_mak);
                                    if(!$result_mak){
                                        die('Could not get data: ' . mysqli_error());
                                    }
                                    echo "<select class='form-select p-2
                                    rounded-3' aria-label='Default select
                                    example' name='mak' id='mak' style='width: 100%;' required>";
                                    while($row = mysqli_fetch_array($result_mak, MYSQLI_ASSOC)){
                                        echo "<option value='{$row['kode']}' selected>{$row['kode']} - {$row['nama_mak']}</option>";
                                    }
                                    echo "</select>";
                                    ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="sbu">Kode SBU :</label>
                            </td>
                            <td>
                                <?php
                                    $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");

                                    $sql_mak = 'SELECT * FROM sbu';
                                    $result_mak = mysqli_query($conn, $sql_mak);
                                    if(!$result_mak){
                                        die('Could not get data: ' . mysqli_error());
                                    }
                                    echo "<select class='form-select p-2
                                    rounded-3' aria-label='Default select
                                    example' name='sbu' id='sbu' style='width: 100%;' required>";
                                        while($row = mysqli_fetch_array($result_mak, MYSQLI_ASSOC)){
                                            echo "<option value='{$row['kode_sbu']}' selected>{$row['uraian']} - Rp. {$row['tarif']},- </option>";
                                        }
                                    echo "</select>";
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="pagu">Tahun Pagu :</label>
                            </td>
                            <td>
                                <?php
                                    $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");

                                    $sql_mak = 'SELECT * FROM pagu';
                                    $result_mak = mysqli_query($conn, $sql_mak);
                                    if(!$result_mak){
                                        die('Could not get data: ' . mysqli_error());
                                    }
                                    echo "<select class='form-select p-2
                                    rounded-3' aria-label='Default select
                                    example' name='pagu' id='pagu' style='width: 100%;' required>";
                                        while($row = mysqli_fetch_array($result_mak, MYSQLI_ASSOC)){
                                            echo "<option value='{$row['tahun_pagu']}' selected>{$row['tahun_pagu']}</option>";
                                        }
                                    echo "</select>";
                                ?>
                            </td>
                        </tr>
                        <tr>
                            <td>
                                <label for="program">Program :</label>
                            </td>
                            <td>
                                <?php
                                    $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");

                                    $sql_mak = 'SELECT * FROM program';
                                    $result_mak = mysqli_query($conn, $sql_mak);
                                    if(!$result_mak){
                                        die('Could not get data: ' . mysqli_error());
                                    }
                                    echo "<select class='form-select p-2
                                    rounded-3' aria-label='Default select
                                    example' name='program' id='program' style='width: 100%;' required>";
                                        while($row = mysqli_fetch_array($result_mak, MYSQLI_ASSOC)){
                                            echo "<option value='{$row['id_program']}' selected>{$row['id_program']} - {$row['nama_program']}</option>";
                                        }
                                    echo "</select>";
                                ?>
                            </td>
                        </tr>
                    </tbody>
                </table>
                <button type="submit" name="addrkat" class="btn btn-primary">Tambah Record Data!</button>
            </fieldset>
        </form>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"
        integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" crossorigin="anonymous">
    </script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous">
    </script>
</body>

</html>