<title>Surat Permohonan Pemberian Nilai Agama</title>
<?php
    //  header("Content-type: application/vnd.ms-word");
    //  header("Expires: 0");
    // header("Cache-Control:  must-revalidate, post-check=0, pre-check=0");
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
		$tempat=$key->tempat;
		$agama=$key->agama_su;
		//echo $agama;
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
		<td align="left" class="serif" width="5%">Nomor</td>
		<td align="left" class="serif" width="1%">:</td>
		<td align="left" class="serif" width="65%">  <?php echo $no_surat; ?></td>
		<td align="left" class="serif"><?php echo $tgl_padasurat; ?></td>
	</tr>
	<tr>
		<td align="left" class="serif" width="5%">Perihal</td>
		<td align="left" class="serif" width="1%">:</td>
		<td align="left" class="serif" width="65%">  Permohonan Pemberian Nilai
	    Agama 
</td>
		<td align="left" class="serif"></td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="left" class="serif">
		Yth. 
		<br>
		<?php echo $kepada; ?>
		<br>
		<?php echo $tempat; ?>
		<br>
		<?php echo $alamat; ?>
		<br>
		Bandarlampung
		</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="left" class="serif">Dengan hormat,</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">Sehubungan dengan berakhirnya perkuliahan pendidikan agama semester <?php echo $smt; ?>, kami mohon <?php echo $kepada; ?> dapat memberikan nilai (format terlampir) mata kuliah agama <?php echo $agama; ?> kepada:</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif" width="25%">nama</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $nama_mhs; ?></td>
	</tr>
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif">NPM</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $npm; ?></td>
	</tr>
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif">semester</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $smt; ?></td>
	</tr>
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif">program studi</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $jenjang; ?> <?php echo $nama_prodi; ?></td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">Demikian permohonan ini, atas bantuan pembelajaran dan nilai yang diberikan diucapkan terima kasih.</td>
	</tr>
</table>

<br>
<table width="100%" border="0"> 
	<tr>
		<td align="left" class="serif" width="50%">&nbsp;</td>
		<td align="left" class="serif" width="50%">
			Hormat kami,<br>Dekan,
			<br><br><br><br><br>
			<strong>Yeni Agus Nurhuda, S.Si., M.Cs.</strong>
		</td>
	</tr>
</table>
<script type="text/javascript">
	window.print();
</script>