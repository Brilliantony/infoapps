@extends('master')

@section('content')

<div class="col-md-12 col-sm-12 col-xs-12" role="main">
  <div class="">
    <div class="page-title">
      <div class="title_left">
        <h3>Form Agent</h3>
      </div>

    </div>
    <div class="clearfix"></div>
    <div class="row">
      <div class="col-md-12 col-sm-12 col-xs-12">
        <div class="x_panel">
          <div class="x_content">
            <br />
            <form id="demo-form2" data-parsley-validate class="form-horizontal form-label-left" method="POST" action="{{ route('agent.update',$data->id) }}" onsubmit="return false;">
              <!-- @csrf -->
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Segmen<span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <select class="form-control" id="segmen" name="segmen">
                    @if($data->segmen == 'POSTPAID')
                    <option value="POSTPAID" selected>POSTPAID</option>
                    <option value="PREPAID">PREPAID</option>
                    @endif
                    @if($data->segmen == 'PREPAID')
                    <option value="POSTPAID">POSTPAID</option>
                    <option value="PREPAID" selected>PREPAID</option>
                    @endif

                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Username Avaya <span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="login_avaya" name="login_avaya" class="form-control col-md-7 col-xs-12" placeholder="ex : 480xxx" value="{{$data->login_avaya}}" required>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">NIK CSDM <span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="number" id="nik_csdm" name="nik_csdm" class="form-control col-md-7 col-xs-12 uang" value="{{$data->nik_csdm}}" required>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Perner <span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="number" id="perner" name="perner" class="form-control col-md-7 col-xs-12" value="{{$data->perner}}" required>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Nama <span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="nama" name="nama" class="form-control col-md-7 col-xs-12" value="{{$data->nama}}" required>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="first-name">Gender<span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <select class="form-control" id="gender" name="gender">
                    @if($data->gender == 'L')
                    <option value="L" selected>Laki-laki</option>
                    <option value="P">Perempuan</option>
                    @endif
                    @if($data->gender == 'P')
                    <option value="L">Laki-laki</option>
                    <option value="P" selected>Perempuan</option>
                    @endif

                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Site Awal<span class="required"></span>
                </label>
                <div class="col-md-4">
                  <select class="site_awal form-control col-md-2" id='site_awal' name='site_awal' required>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Team Leader<span class="required"></span>
                </label>
                <div class="col-md-4">
                  <select class="tl form-control col-md-2" id='tl' name='tl' required>
                  </select>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">No. Telkomsel <span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="number" id="no_telkomsel" name="no_telkomsel" class="form-control col-md-7 col-xs-12" value="{{$data->no_telkomsel}}" required>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">No. WhatsApp <span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="number" id="no_wa" name="no_wa" class="form-control col-md-7 col-xs-12" value="{{$data->no_wa}}" required>
                </div>
              </div>
              <div class="form-group">
                <label class="control-label col-md-3 col-sm-3 col-xs-12" for="name">Keterangan <span class="required"></span>
                </label>
                <div class="col-md-6 col-sm-6 col-xs-12">
                  <input type="text" id="ket" name="ket" class="form-control col-md-7 col-xs-12" value="{{$data->ket}}" placeholder="ex : Batch 1">
                </div>
              </div>
              <div class="ln_solid"></div>
              <div class="form-group">
                <div class="col-md-6 col-sm-6 col-xs-12 col-md-offset-3">
                  <button class="btn btn-primary" type="reset">Reset</button>
                  <button id="send" type="submit" class="btn btn-success">Submit</button>
                </div>
              </div>

          </div>
        </div>
      </div>
    </div>
  </div>
  @endsection