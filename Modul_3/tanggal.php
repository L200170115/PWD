<html>
    <head>
        <title> Fungsi Tanggal dan Waktu </title>
</head>
<body>
    <?php
    date_default_timezone_set('Asia/Jakarta');
    $jam = date("H:i:s A");
    $waktu = date("d-m-y");
    $hari = date("1");
    $tanggal = date("d");
    $bulan = date("F");
    $tahun = date("Y");

    echo "Sekarang Jam $jam</br>";
    echo "Sekarang tanggal $tanggal $waktu</br>";
    echo "Lebih detailnya Hari $hari Tanggal $tanggal Bulan $bulan Tahun $tahun";
    ?>
    </body>
    </html>
