<!DOCTYPE html>
<html>
<head>
    <title><?php echo $title ?></title>
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

        @page {
            size: A4 potrait;
            margin: 2cm;
        }

        p {
            line-height: 0.5;
            font-family: Helvetica;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            font-family: Helvetica;
            font-size: 10pt;
            color: #5E5B5C;
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

    </style>
</head>
<body onload="window.print();">
<table width="100%" border="0">
    <tbody>
        <tr>
            <th width="75px"><img src="<?=base_url()?>assets/dist/img/logo.png" width="75"></th>
            <th align="center" valign="middle" style="font-family: 'Arial Narrow'; color: #000000;">
                <p align="center" style="font-size:16px">REKAP JUMLAH MENGAWAS KESEKRETARISAN</p>
                <p align="center" style="font-size:18px">UNIVERSITAS TEKNOKRAT INDONESIA</p>
                <p align="center"><?php echo tgl_indo($tgl1) .' s/d '. tgl_indo($tgl2) ?></p></th>
            <th width="75px">&nbsp;</th>
        </tr>
    </tbody>
</table>
<hr style="border: 1px solid black;">
<table width="100%" border="0">
    <thead>
        <tr>
            <td align="center"><strong>No</strong></td>
            <td align="center"><strong>Pengawas</strong></td>
            <td align="center"><strong>Matauji</strong></td>
            <td align="center"><strong>Tanggal</strong></td>
            <td align="center"><strong>Pukul</strong></td>
            <td align="center"><strong>Jml Peserta</strong></td>
        </tr>
    </thead>
    <tbody>
        <?php $no=0; foreach($result->result() as $r){ $no++;
            //get pengawas
            $pengawas = $this->db->get_where("tb_dosen",array('id_dosen'=>$r->id_dosen))->row();
            //get matauji
            $matauji = $this->db->get_where("tb_matauji",array('id_matauji'=>$r->id_matauji))->row();
            //jumlah peserta
            $mhs = $this->db->get_where("tb_peserta_ujian", array('id_ujian'=>$r->id_ujian));
        ?>
        <tr>
            <td align="center"><?=$no?></td>
            <td><?=$pengawas->nama_dosen?></td>
            <td><?=$matauji->nama_matauji?></td>
            <td><?=tgl_indo($r->tgl_ujian)?></td>
            <td align="center"><?=$r->pukul?></td>
            <td align="center"><?=$mhs->num_rows()?></td>
        </tr>
        <?php } ?>
    </tbody>
</table>

</body>
</html>