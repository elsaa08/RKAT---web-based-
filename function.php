<?php 
    $conn = mysqli_connect("localhost", "root" ,"", "db_tbs_sbd_rev");
    
    function addrkat($data) {
        global $conn;
        
        $iku = $data['iku'];
        $kegiatan = $data['kegiatan'];
        $deskripsi = $data['deskripsi'];
        $mak = $data['mak'];
        $sbu = $data['sbu'];
        $dana_terpakai = 0;
        $spj = 0;
        $pagu = $data['pagu'];
        $program = $data['program'];
        
        mysqli_query($conn, "INSERT INTO rkat VALUES('', '$iku', '$kegiatan', '$deskripsi', '$mak', '$sbu', '$dana_terpakai', '$spj', '$pagu', '$program')");

        return $conn;
    }

    function addpagu($data) {
        global $conn;

        $tahun_pagu = $data['tahunpagu'];
        $besar_pagu = $data['besarpagu'];
        $pagu_terpakai = 0;

        mysqli_query($conn, "INSERT INTO pagu VALUES('$tahun_pagu', '$besar_pagu', '$pagu_terpakai')");

        return $conn;
    }

    function adddana($data) {
        global $conn;

        $id = $data['idrkat'];
        $dana_terpakai = $data['danaterpakai'];
        $tahun_pagu = $data['tahunpagu'];
        $spj = 1;

        mysqli_query($conn, "UPDATE rkat SET dana_terpakai = $dana_terpakai, spj = $spj  WHERE id=$id AND tahun_pagu=$tahun_pagu");

        return $conn;
    }

    function addprogram($data){
        global $conn;

        $id_program = $data['program'];
        $besaran = $data['besaran'];
        $tahun = $data['tahun'];

        mysqli_query($conn, "INSERT INTO sub_program VALUES('', '$id_program', '$besaran', '$besaran', '$tahun')");
    }

    function updateprogram($data) {
        global $conn;

        $id = $data['id'];
        $besaran = $data['anggaran'];
        $tahun = $data['tahunpagu'];

        mysqli_query($conn, "UPDATE sub_program SET besaran = besaran + $besaran, sisa = sisa + $besaran, status_update = status_update - 1 WHERE tahun = $tahun AND id = $id");

    }
    
?>