@extends('master')
@section('title', 'Dashboard')
@section('content')
<div class="row tile_count">
<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
    <span class="count_top"><i class="fa fa-user"></i> Total Agent</span>
    <div class="count">2500</div>
    <!-- <span class="count_bottom"><i class="green">4% </i> From last Week</span> -->
</div>
<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
    <span class="count_top"><i class="fa fa-user"></i> Total Team Leader</span>
    <div class="count">123.50</div>
    <!-- <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>3% </i> From last Week</span> -->
</div>
<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
    <span class="count_top"><i class="fa fa-user"></i> Total IT Support</span>
    <div class="count">2,500</div>
    <!-- <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span> -->
</div>
<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
    <span class="count_top"><i class="fa fa-user"></i> Supervisor</span>
    <div class="count">4,567</div>
    <!-- <span class="count_bottom"><i class="red"><i class="fa fa-sort-desc"></i>12% </i> From last Week</span> -->
</div>
<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
    <span class="count_top"><i class="fa fa-user"></i> Total Collections</span>
    <div class="count">2,315</div>
    <!-- <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span> -->
</div>
<div class="col-md-2 col-sm-4 col-xs-6 tile_stats_count">
    <span class="count_top"><i class="fa fa-user"></i> Total Connections</span>
    <div class="count">7,325</div>
    <!-- <span class="count_bottom"><i class="green"><i class="fa fa-sort-asc"></i>34% </i> From last Week</span> -->
</div>
</div>
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
            <h2>Data Agent <small>Users</small></h2>
            <ul class="nav navbar-right panel_toolbox">
                <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                </li>
                <li><a class="close-link"><i class="fa fa-close"></i></a>
                </li>
            </ul>
            <div class="clearfix"></div>
            </div>
            <div class="x_content">
            <p class="text-muted font-13 m-b-30">

            </p>
            <table id="datatable-buttons" class="table table-striped table-bordered">
            <thead>
                <tr>
                    <th>No</th>
                    <th>Segmen</th>
                    <th>Login Avaya</th>
                    <th>NIK CSDM</th>
                    <th>Perner</th>
                    <th>Nama</th>
                    <th>Gender</th>
                    <th>Site Awal</th>
                    <th>Team Leader</th>
                    <th>No. Telkomsel</th>
                    <th>No. WhatsApp</th>
                    <th>Keterangan</th>

                </tr>
            </thead>
            <tbody>
                @foreach($data as $num => $d)
                    <tr>
                        <td>{{ $num+1 }}</td>
                        <td>{{ $d->segmen }}</td>
                        <td>{{ $d->login_avaya }}</td>
                        <td>{{ $d->nik_csdm }}</td>
                        <td>{{ $d->perner }}</td>
                        <td>{{ $d->nama }}</td>
                        <td>{{ $d->gender }}</td>
                        <td>{{ $d->getSiteAwalId->nama_site }}</td>
                        <td>{{ $d->getTLID->nama }}</td>
                        <td>{{ $d->no_telkomsel }}</td>
                        <td>{{ $d->no_wa }}</td>
                        <td>{{ $d->ket }}</td>
                    </tr>
                @endforeach
            </tbody>
            </table>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
  function deleteData(id){
    var data=new FormData();
    data.append('id',id);
    modalConfirm("konfirmasi", "Apakah Anda Yakin ingin Menghapus Data ?", function(){
      ajaxTransfer("/awfe/delete", data, "#modal-output");

    })
  }
</script>
@endsection
@section('scripts')
 
@endsection
