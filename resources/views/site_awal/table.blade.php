@extends('master')

@section('content')
<div class="row">
<div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
        <div class="x_title">
        <h2>Data Site Awal <small>Users</small></h2>
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
                    <th class="column-title no-link last" style="width: 150px"><span class="nobr">Action</span>
                </tr>
            </thead>
            <tbody>
                @foreach($data as $num => $d)
                    <tr>
                        <td>{{ $num+1 }}</td>
                        <td>{{ $d->nama }}</td>
                        <td class=" last">
                        <a href="{{ route('site_awal.edit', $d->id) }}" class="btn btn-success btn-md glyphicon glyphicon-edit" title="Edit">
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
  function deleteData(id){
    var data=new FormData();
    data.append('id',id);
    modalConfirm("konfirmasi", "Apakah Anda Yakin ingin Menghapus Data ?", function(){
      ajaxTransfer("/site_awal/delete", data, "#modal-output");

    })
  }
</script>
@endsection