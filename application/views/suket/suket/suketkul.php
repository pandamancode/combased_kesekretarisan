<title>Surat Keterangan Kuliah</title>
<?php
     // header("Content-type: application/vnd.ms-word");
     // header("Expires: 0");
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
    	$js=$key->js;
    	$id_prodi=$key->id_prodi;
    
    	$pecah_npm = substr($npm,0,2);
    	$now = date('y');
    	$tingkat = intval($now) - intval($pecah_npm);
    	
	}
		$fak=$this->db->query("SELECT * FROM tb_prodi,tb_fakultas WHERE tb_prodi.id_fakultas=tb_fakultas.id_fakultas AND tb_prodi.id_prodi='$id_prodi'");
		foreach($fak->result() as $key)
		{
		$nama_fak= $key->nama_fakultas;
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

	function integerToRoman($integer) {
        // Convert the integer into an integer (just to make sure).
        $integer = intval($integer);
        $result = '';
        // Create a lookup array that contains all of the Roman numerals.
        $lookup = [
            'M' => 1000,
            'CM' => 900,
            'D' => 500,
            'CD' => 400,
            'C' => 100,
            'XC' => 90,
            'L' => 50,
            'XL' => 40,
            'X' => 10,
            'IX' => 9,
            'V' => 5,
            'IV' => 4,
            'I' => 1
        ];
        foreach ($lookup as $roman => $value) {
            // Determine the number of matches.
            $matches = intval($integer / $value);
            // Add the same number of characters to the string.
            $result .= str_repeat($roman, $matches);
            // Set the integer to be the remainder of the integer and the value.
            $integer = $integer % $value;
        }
        // The Roman numeral should be built, return it.
        return $result;
    }
?>
<style type="text/css">
	td.serif {
	  font-family: "Times New Roman", Times, serif;
	  font-size: 12.0pt;
	  line-height: 1.6;
	}
	td.no {
      font-family: "Times New Roman", Times, serif;
	  font-size: 12.0pt;
	  /*line-height: 0cm;*/
	}
	@page {
	    size: auto;
	    margin: 10px 10px 10px 10px;
	}
</style>
<br>
<br>
<br>
<br>
<br>
<table width="100%" border="0"> 
	<tr>
    <td align="center" class="no"><strong>SURAT KETERANGAN KULIAH</strong></td>
	</tr>
	<tr><td align="center" class="no"><strong>No. <?php echo $no_surat; ?></strong></td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">Dekan Fakultas Teknik dan Ilmu Komputer Universitas Teknokrat Indonesia menerangkan bahwa:</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
    	<td class="serif" width="5%">&nbsp;</td>
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
		<td class="serif">tempat, tanggal lahir</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $tempatlahir_mhs; ?>, <?php if(empty($tgllahir_mhs) || $tgllahir_mhs=='0000-00-00'){ echo "";}else{ echo  tgl_indo($tgllahir_mhs); } ?></td>
	</tr>
	<tr>
    	<td class="serif">&nbsp;</td>
		<td class="serif">tingkat/semester</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo integerToRoman($tingkat).' / '.$smt; ?></td>
	</tr>
	<tr>
    	<td class="serif">&nbsp;</td>
		<td class="serif">tahun akademik</td>
		<td class="serif" width="1%">:</td>
		<td class="serif">2018/2019</td>
	</tr>
</table>
<br>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">benar sebagai mahasiswa aktif program studi <?=$jenjang?>&nbsp;<?=$nama_prodi?>&nbsp;<?php echo $nama_fak ?> Universitas Teknokrat Indonesia.<?php if($js=="ortu") { ?> Orangtua/wali mahasiswa tersebut adalah: <?php } ?></td>
	</tr>
</table>
<br>
<?php if($js=="ortu") { ?>
<table width="100%" border="0"> 
	<tr>
		<td class="serif" width="5%">&nbsp;</td>
		<td class="serif" width="25%">nama</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $nama_ortu ?></td>
	</tr>
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif">pekerjaan</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $pekerjaan ?></td>
	</tr>
	<tr>
		<td class="serif">&nbsp;</td>
		<td class="serif">instansi</td>
		<td class="serif" width="1%">:</td>
		<td class="serif"><?php echo $instansi ?></td>
	</tr>
</table>
<br>
<?php } ?>
<table width="100%" border="0"> 
	<tr>
		<td align="justify" class="serif">Demikian surat keterangan ini dibuat atas permintaan <?php if($js=="ortu") { ?> orang tua <?php }else { ?> mahasiswa <?php } ?> yang bersangkutan untuk <?php echo $keperluan; ?>. </td>
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