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
            font-family: Arial;
        }

        table {
            border-collapse: collapse;
            font-family: Arial;
            font-size: 10pt;
            color: #5E5B5C;
            margin: 0 auto;
        }

        table tr {
            border: 0px solid #ffffff;
            padding: 3px;
        }

        table td {
            border: 1px solid #ffffff;
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

        #footer{
          background-color: #ffffff;
        }

        #header{
          background-color: #ffffff;
        }
        body{
          -webkit-print-color-adjust:exact;
        }

        #xyz{
            font-size: 12pt;
        }

        @page { 
            size:A4; 
            size: potrait;
            margin-left: 1.5cm;
            margin-right: 1.5cm;
        }

        
</style>
<link href="<?php echo base_url()?>assets/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css" />

<title>Kartu Peserta Combased Kesekretarisan</title>
<body onload="window.print()">
<?php
    $id_ujian = $jadwal->row()->id_ujian;
    $ujian = $this->db->select("tb_matauji.nama_matauji, tb_ujian.tgl_ujian, tb_dosen.nama_dosen")->from("tb_ujian")->join("tb_matauji","tb_matauji.id_matauji=tb_ujian.id_matauji")->join("tb_dosen","tb_dosen.id_dosen=tb_ujian.id_dosen")->where("tb_ujian.id_ujian",$id_ujian)->get()->row();
?>
  <table align="center" width="75%" border="2px">
      <tr id="header">
        <td align="center">
        <p>&nbsp;</p>
            <p><img width="50%" src="<?php echo base_url(); ?>assets/dist/img/Logo.jpg"></p>
            <p style="font-family:Arial;font-size:16pt;">Kartu Peserta Combased Kesekretarisan</p>
        <p><hr></p>
        </td>
      </tr>
      <tr>
        <td>
            <table id="xyz" border="1" width="100%">
                <tr>
                    <td width="30%">Nama</td>
                    <td width="2%">:</td>
                    <td width="43%"><?=$mhs->row()->nama_mhs?></td>
                </tr>
                <tr>
                    <td>NPM</td>
                    <td>:</td>
                    <td><?=$mhs->row()->npm?></td>
                </tr>
                <tr>
                    <td>Program Studi</td>
                    <td>:</td>
                    <td><?=$mhs->row()->nama_prodi?></td>
                </tr>

                <tr>
                    <td>No. Telp</td>
                    <td>:</td>
                    <td><?=$mhs->row()->no_telp?></td>
                </tr>

                <tr>
                    <td>Matauji Combased<p>&nbsp;</p></td>
                    <td>:<p>&nbsp;</p></td>
                    <td><?=$ujian->nama_matauji?><p>&nbsp;</p></td>
                </tr>
                <?php
                    $foto = $mhs->row()->foto;
                    if(!empty($foto)){
                        $img = $foto;
                    }else{
                        $img="default.jpg";
                    }
                ?>
                <tr>
                    <td colspan="2" rowspan="4"><img height="153px" src="<?=base_url()?>public/<?=$img?>"></td>
                    <td>
                        <p>Bandar Lampung, <?=date('d-m-Y',strtotime($ujian->tgl_ujian))?></p>
                        <p>Pengawas</p>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td><strong><?=$ujian->nama_dosen?></strong></td>
                </tr>

            </table>
            <p><hr></p>
        </td>
      </tr>
      <tr id="footer">
        <td align="left">
            <p style="font-family:Arial;font-size:12pt;"><strong>Catatan :</strong></p>
            <p style="font-family:Arial;font-size:12pt;">Kartu ini wajib dibawa pada saat mengikuti ujian.</p>
            <p>&nbsp;</p>
        </td>
      </tr>
  </table>


</body>
