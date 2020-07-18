<?php
    header("Content-Type: application/vnd.ms-xls");
    header("Expires: 0");
    header("Cache-Control:  must-revalidate, post-check=0, pre-check=0");
    header("Content-disposition: attachment; filename=\"REKAP BIAYA PEMBAYARAN TANGGAL \"$caption\".xls\"");
?>

<style type="text/css">
        #outtable {
            padding: 20px;
            border: 1px solid #e3e3e3;
            width: 100%;
            border-radius: 5px;
        }

        .short {
            width: 25px;
        }

        .normal {
            width: 50px;
        }

        .lebar {
            width: 100px;
        }

        p {
            line-height: 0.5;
            font-family: Helvetica;
        }

        table {
            /*width: 100%;*/
            border-collapse: collapse;
            /*font-family: Arial Narrow;
			src: url('ARIALN.TTF');*/
            font-family: Helvetica;
            font-size: 10pt;
            color: #5E5B5C;
            /*margin: 0 auto;*/
        }

        table td {
            border: 1px solid #C3B8B8;
            padding: 3px;
            vertical-align: middle;
        }

        thead th {
            border: 1px solid #FFFFFF;
            padding: 3px;
            font-weight: bold;
            text-align: center;
            background-color: #525659;
            color: #FFFFFF;
        }

        tfoot td {
            border: 0px solid #FFFFFF;
            padding: 3px;
            vertical-align: middle;
        }

        h3{
        	font-family: Helvetica;
        }


    </style>

<table width="600" border="0">
    <tr>
        <td align="center"><b>Rekap Biaya Pembayaran Combased</b></td>
    </tr>
    <tr>
        <td align="center"><b><?php echo $caption; ?></b></td>
    </tr>
</table>

<table width="600" cellspacing="0" cellpadding="0">
	<tr>
        <td align="center"><strong>No</strong></td>
		<td align="center"><strong>NPM</strong></td>
        <td align="center"><strong>Nama Lengkap</strong></td>
        <td align="center"><strong>Program Studi</strong></td>
        <td align="center"><strong>Matauji</strong></td>
        <td align="center"><strong>Tanggal Pembayaran</strong></td>
		<td align="center"><strong>Biaya</strong></td>
	</tr>
    <?php 
    $no=0;
    foreach($result->result() as $r){
        $no++;
        $prodi = $this->db->get_where("tb_prodi",array('id_prodi'=>$r->id_prodi));
    ?>
	<tr>
        <td align="center"><?php echo $no ?></td>
        <td align="center"><?php echo $r->npm; ?></td>
        <td><?php echo $r->nama_mhs; ?></td>
        <td><?php echo $prodi->row()->nama_prodi; ?></td>
        <td><?php echo $r->nama_matauji; ?></td>
        <td><?php echo tgl_indo($r->tgl_bayar); ?></td>
        <td align="right"><?php echo $r->biaya; ?></td>
    </tr>
    <?php } ?>

    <tr>
        <td align="center" colspan="6"><i>TOTAL</i></td>
        <td align="right"><?php echo $result_total->row()->biaya_total; ?></td>
    </tr>
</table>
