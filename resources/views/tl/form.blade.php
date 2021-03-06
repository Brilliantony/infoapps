@extends('master')

@section('content')

<div class="col-md-12 col-sm-12 col-xs-12" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Form Team Leader</h3>
      </div>

    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_content">
            <br />
            <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="POST" action="{{ route('tl.create') }}" onsubmit="return false;">
              <!-- @csrf -->
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Nama<span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="nama" name="nama" class="form-control col-md-7 col-xs-12" value="" required>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">NIK CSDM <span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="number" id="nik_csdm" name="nik_csdm" class="form-control col-md-7 col-xs-12" value="" required>
                </div>
              </div>
              <div class="ln_solid"></div>
              <div class="form-group">
                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                  <button class="btn btn-primary" type="reset">Reset</button>
                  <button type="submit" class="btn btn-success" onclick="confirmData()">Submit</button>
                </div>
              </div>

          </div>
        </div>
      </div>
    </div>
  </div>
  <script type="text/javascript">
    function confirmData() {
      var data = new FormData();
      var nama = $('#nama').val();
      var nik_csdm = $("#nik_csdm").val();

      data.append('nama', nama);
      data.append('nik_csdm', nik_csdm);
      modalConfirm("Konfirmasi", "Apakah Anda Yakin ingin Menyimpan Data?", function() {
        ajaxTransfer("/tl/create", data, "#modal-output");
      })
    }
  </script>
  @endsection