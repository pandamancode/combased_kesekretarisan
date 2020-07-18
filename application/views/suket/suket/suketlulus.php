<title>Surat Keterangan Lulus</title>
<?php
   //   header("Content-type: application/vnd.ms-word");
   //   header("Expires: 0");
   //  header("Cache-Control:  must-revalidate, post-check=0, pre-check=0");
   // header("Content-disposition: attachment; filename=\"surat_keterangan_kuliah\"\.doc\"");
	foreach ($suket->result() as $key) {
		$no_surat=$key->no_surat;
		$tgl_padasurat=$key->tgl_padasurat;
		$kepada=$key->kepada;
		$alamat=$key->alamat;
		$judul=$key->judul;
		$npm=$key->npm;
		$jenjang=$key->jenjang;
		$nama_prodi=$key->nama_prodi;
		$nama_mhs=$key->nama_mhs;
		$nama_ortu=$key->nama_ortu;
		$pekerjaan=$key->pekerjaan;
		$instansi=$key->instansi;
		$tempatlahir_mhs=$key->tempatlahir_mhs;
		$tgllahir_mhs=$key->tgllahir_mhs;
		$smt=$key->smt;
		$keperluan=$key->keperluan;
    	$tgl_lulus=$key->tgl_lulus;
	}

function ucname($string) {
    $string =ucwords(strtolower($string));

    foreach (array('-', '\'') as $delimiter) {
      if (strpos($string, $delimiter)!==false) {
        $string =implode($delimiter, array_map('ucfirst', explode($delimiter, $string)));
      }
    }
    return $string;
}
?>
<style type="text/css">
	td.serif {
	  font-family: "Times New Roman", Times, serif;
	  font-size: 12.0pt;
	  /*line-height: 1cm;*/
	}
	@page {
	    /*size: auto;
	    margin: 0; */
	}
</style>
<br>
<br>
<br>
<br>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="center" class="serif"><strong>SURAT KETERANGAN LULUS</strong></td>
	</tr>
	<tr>
		<td align="center" class="serif"><strong>Nomor: <?php echo $no_surat; ?></strong></td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">Dekan Fakultas Teknik dan Ilmu Komputer Universitas Teknokrat Indonesia, 
			menerangkan bahwa:
		</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif" width="25%">nama</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo ucname($nama_mhs); ?></td>
	</tr>
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif">NPM</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $npm; ?></td>
	</tr>
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif">program studi</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $nama_prodi; ?></td>
	</tr>
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif">angkatan</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php 
        if(strlen($npm=="8")){
        	echo "20".substr($npm,0,-6);
        }else{
        	echo "20".substr($npm,0,-7);
        }
         ?>
    	</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">telah dinyatakan LULUS dalam ujian tugas akhir program studi <?php echo $nama_prodi; ?> pada <?php echo tgl_indo($tgl_lulus); ?>.
</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">Demikan surat ini dibuat untuk dapat dipergunakan sebagaimana mestinya.</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="left" class="serif" width="50%">&nbsp;</td>
		<td align="left" class="serif" width="50%">
			Bandarlampung, <?php echo  tgl_indo($tgl_padasurat); ?> <br>Dekan,
			<br><br><br><br>
			<strong>Yeni Agus Nurhuda, S.Si., M.Cs.</strong>
		</td>
	</tr>
</table>
<script type="text/javascript">
	window.print();
</script>