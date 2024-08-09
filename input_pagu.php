<?php
    session_start();

    if ( isset($_SESSION["login"]) ) {
        header("Location: index.php");
        exit;
    }

    require 'function.php';
    
        if ( isset($_POST["addpagu"]) ) {
            if( addpagu($_POST) > 0 ) {
                echo "<script>
                        alert('user berhasil menambahkan data PAGU!');
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
                <legend>Menambah Record data PAGU</legend>
                <table class="table table-primary table-striped table-responsive">
                    <tbody>
                    <tr>
                        <td>
                            <label for="tahunpagu">Tahun PAGU :</label>
                        </td>
                        <td>
                            <input type="text" placeholder="Masukkan Tahun PAGU" name="tahunpagu">
                        </td>
                    </tr>
                    <tr>
                        <td>
                            <label for="besarpagu">Besar PAGU :</label>
                        </td>
                        <td>
                            <input type="text" placeholder="Masukkan Besar PAGU" name="besarpagu">
                        </td>
                    </tr>
                    </tbody>
                </table>
                <button type="submit" name="addpagu" class="btn btn-primary">Tambah Record Data!</button>
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