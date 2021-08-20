@extends('master')

@section('content')
<div class="row">
    <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
            <div class="x_title">
                <h2>Data Team Leader <small>Users</small></h2>
                <ul class="nav navbar-right panel_toolbox">
                    <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
                    </li>

                    <li><a class="close-link"><i class="fa fa-close"></i></a>
                    </li>
                </ul>
                <div class="clearfix"></div>
            </div>
            <div class="x_content">
                <table id="datatable" class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>No</th>
                            <th>Nama</th>
                            <th>NIK CSDM</th>
                            <th style="width:120px">Postpaid Agent</th>
                            <th style="width:120px">Prepaid Agent</th>
                            <th style="width:150px">Agent Laki-laki</th>
                            <th style="width:150px">Agent Perempuan</th>
                            <th style="width:80px">Total</th>

                            <th class="column-title no-link last" style="width: 150px"><span class="nobr">Action</span>
                        </tr>
                    </thead>
                    <tbody>
                        @foreach($data as $num => $d)
                        <tr>
                            <td>{{ $num+1 }}</td>
                            <td>{{ $d->nama }}</td>
                            <td>{{ $d->nik_csdm }}</td>
                            <td>{{ $d->jml_postpaid_agent }}</td>
                            <td>{{ $d->jml_prepaid_agent }}</td>
                            <td>{{ $d->jml_gender_agent_L }}</td>
                            <td>{{ $d->jml_gender_agent_P }}</td>
                            <td>{{ $d->total }}</td>
                            <td class=" last">
                                <a href="{{ route('tl.edit', $d->id) }}" class="btn btn-success btn-md glyphicon glyphicon-edit" title="Edit">
                                </a>
                                <a onclick="deleteData('{{$d->id}}')" class="btn btn-danger btn-md glyphicon glyphicon-trash" title="Hapus Data"></a>

                            </td>
                        </tr>
                        @endforeach
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>



<script type="text/javascript">
    function deleteData(id) {
        var data = new FormData();
        data.append('id', id);
        modalConfirm("konfirmasi", "Apakah Anda Yakin ingin Menghapus Data ?", function() {
            ajaxTransfer("/tl/delete", data, "#modal-output");

        })
    }
</script>
@endsection