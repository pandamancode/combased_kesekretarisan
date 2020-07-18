<title>Surat Permohonan Izin Penelitian</title>
<?php
  //   header("Content-type: application/vnd.ms-word");
  //    header("Expires: 0");
  //    header("Cache-Control:  must-revalidate, post-check=0, pre-check=0");
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
		<td align="left" class="serif"><?php echo tgl_indo($tgl_padasurat); ?></td>
	</tr>
	<tr>
		<td align="left" class="serif" width="5%">Perihal</td>
		<td align="left" class="serif" width="1%">:</td>
		<td align="left" class="serif" width="65%">  Permohonan Izin Penelitian</td>
		<td align="left" class="serif"></td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="left" class="serif">
		Yth. 
		<br>
        <strong><?php echo $kepada; ?></strong>
		<br>
		<?php echo $alamat; ?>
<!-- 		<br>
		Bandarlampung -->
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
		<td align="justify" class="serif">Sehubungan dengan penulisan skripsi mahasiswa Program Studi <?php echo $jenjang; ?> <?php echo $nama_prodi; ?> Fakultas Teknik dan Ilmu Komputer Universitas Teknokrat Indonesia, dengan ini kami mohon kesediaan Bapak/Ibu untuk memperkenankan mahasiswa/i kami melakukan penelitian pada instansi yang Bapak/Ibu pimpin.</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">Adapun mahasiswa/i kami yang melakukan penelitian adalah:</td>
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
		<td class="serif">judul penelitian</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $judul; ?></td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">Demikian permohonan ini, atas izin yang diberikan kami ucapkan terima kasih.</td>
	</tr>
</table>

<br>
<table width="100%" border="0"> 
	<tr>
    	<td align="left" class="serif" width="50%">
			&nbsp;
		</td>
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