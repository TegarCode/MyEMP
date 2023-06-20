<?php

        $sql_cek = "SELECT * FROM tb_profil";
        $query_cek = mysqli_query($koneksi, $sql_cek);
		$data_cek = mysqli_fetch_array($query_cek,MYSQLI_BOTH);
		{
	
?>

<!-- Card Profil Perusahaan -->
<div class="card card-info">
	<div class="card-header" style="background-color: #5C469C;">
		<h3 class="card-title">Profil Perusahaan</h3>
	</div>
	<form action="" method="post" enctype="multipart/form-data">
		<div class="card-body">
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">Nama Perusahaan</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="nama_profil" name="nama_profil" value="<?php echo $data_cek['nama_profil']; ?>"
					 readonly/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">Alamat</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="alamat" name="alamat" value="<?php echo $data_cek['alamat']; ?>"
					 readonly/>
				</div>
			</div>
			<div class="form-group row">
				<label class="col-sm-3 col-form-label">Bidang</label>
				<div class="col-sm-9">
					<input type="text" class="form-control" id="bidang" name="bidang" value="<?php echo $data_cek['bidang']; ?>"
					 readonly/>
				</div>
			</div>
		</div>
	</form>
</div>

<!-- Card Jumlah Pegawai -->
<?php
	}
    
    include('inc/koneksi.php');
    $sql = $koneksi->query("SELECT count(nip) as jml from data_pegawai");
    while ($data = $sql->fetch_assoc()) {
        $jml = $data['jml'];
    }
    ?>
    <!-- Chart -->
    <?php
    include('inc/koneksi.php');
    
    // Mengambil data untuk Pie Chart
    $pegawai = mysqli_query($koneksi, "SELECT jns_klmn, COUNT(*) AS jumlah FROM data_pegawai GROUP BY jns_klmn");
    $nama_produk = array();
    $jumlah_produk = array();
    while ($row = mysqli_fetch_array($pegawai)) {
        $nama_produk[] = $row['jns_klmn'];
        $jumlah_produk[] = $row['jumlah'];
    }
    
    // Mengambil data untuk Bar Chart
    $query = mysqli_query($koneksi, "SELECT divisi.nama_divisi, COALESCE(COUNT(pegawai.id_divisi), 0) AS jumlah_pegawai
    FROM data_divisi divisi
    LEFT JOIN data_pegawai pegawai ON pegawai.id_divisi = divisi.kode
    GROUP BY divisi.nama_divisi");
    $label = array();
    $jumlah_pegawai = array();
    while ($row = mysqli_fetch_array($query)) {
        $label[] = $row['nama_divisi'];
        $jumlah_pegawai[] = $row['jumlah_pegawai'];
    }
    ?>
    
    <!doctype html>
    <html>
    
    <head>
        <title>Charts</title>
        <script src="https://cdn.jsdelivr.net/npm/chart.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
    </head>
    
    <body>
        <div class="container">
            <div class="row">
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">Pie Chart</div>
                        <div class="card-body">
                            <div class="embed-responsive embed-responsive-1by1">
                                <canvas class="embed-responsive-item" id="chart-area"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="card">
                        <div class="card-header">Bar Chart</div>
                        <div class="card-body">
                            <div class="embed-responsive embed-responsive-1by1">
                                <canvas class="embed-responsive-item" id="barChart"></canvas>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
        <script>
            var pieConfig = {
                type: 'pie',
                data: {
                    datasets: [{
                        data: <?php echo json_encode($jumlah_produk); ?>,
                        backgroundColor: [
                            'rgba(255, 99, 132, 0.2)',
                            'rgba(54, 162, 235, 0.2)'
                        ],
                        borderColor: [
                            'rgba(255, 99, 132, 1)',
                            'rgba(54, 162, 235, 1)'
                        ],
                        label: 'Presentase Pegawai'
                    }],
                    labels: <?php echo json_encode($nama_produk); ?>
                },
                options: {
                    responsive: true
                }
            };
    
            var barConfig = {
                type: 'bar',
                data: {
                    labels: <?php echo json_encode($label); ?>,
                    datasets: [{
                        label: 'Grafik Anggota Divisi',
                        data: <?php echo json_encode($jumlah_pegawai) ?>,
                        backgroundColor: 'rgba(75, 192, 192, 0.2)',
                        borderColor: 'rgba(75, 192, 192, 1)',
                        borderWidth: 1
                    }]
                },
                options: {
                    scales: {
                        y: {
                            beginAtZero: true
                        }
                    }
                }
            };
    
            window.onload = function () {
                var ctx1 = document.getElementById('chart-area').getContext('2d');
                new Chart(ctx1, pieConfig);
    
                var ctx2 = document.getElementById('barChart').getContext('2d');
                new Chart(ctx2, barConfig);
            };
        </script>
    </body>
    
    </html>
    