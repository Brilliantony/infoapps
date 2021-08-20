@extends('master')

@section('content')
<div class="row">
  <div class="col-md-12 col-sm-12 col-xs-12">
    <div class="x_panel">
      <div class="x_title">
        <h2>Form Input</h2>
        <ul class="nav navbar-right panel_toolbox">
          <li><a class="collapse-link"><i class="fa fa-chevron-up"></i></a>
          </li>
          <li><a class="close-link"><i class="fa fa-close"></i></a>
          </li>
        </ul>
        <div class="clearfix"></div>
      </div>
      <div class="x_content">

        <form class="form-horizontal form-label-left" novalidate method="POST" action="{{ route('awfe.update',$data->id) }}" onsubmit="return false;">
          @csrf
          @method('put')
          <span class="section">Personal Info</span>

          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">Nama Agent <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="nama" class="form-control col-md-7 col-xs-12" data-validate-length-range="6" data-validate-words="2" name="nama" placeholder="" required="required" type="text" value="{{$data->nama}}">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3 col-sm-3 col-xs-12">Username <span class="required">*</span>
            </label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input type="url" id="username_awfe" name="username_awfe" required="required" placeholder="" class="form-control col-md-7 col-xs-12" value="{{$data->username_awfe}}">
            </div>
          </div>
          <div class="item form-group">
            <label class="control-label col-md-3">Password <span class="required">*</span></label>
            <div class="col-md-6 col-sm-6 col-xs-12">
              <input id="password_awfe" type="password" name="password_awfe" data-validate-length="6,8" class="form-control col-md-7 col-xs-12" required="required">
            </div>
          </div>
          <div class="ln_solid"></div>
          <div class="form-group">
            <div class="col-md-6 col-md-offset-3">
              <button type="reset" class="btn btn-primary">Reset</button>
              <button id="send" type="submit" class="btn btn-success">Submit</button>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</div>
@endsection