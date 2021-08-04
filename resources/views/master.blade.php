<!DOCTYPE html>
<html lang="en">

@include('partials._head')

  <body class="nav-md">
    <div class="container body">
      <div class="main_container">
        <div class="col-md-3 left_col" style="position: fixed;">
          <div class="left_col scroll-view" >
            <div class="navbar nav_title" style="border: 0;">
              <a href="{{url('/')}}" class="site_title"><i class="fa fa-paw"></i><span style="padding-left: 10px;">INFOMEDIA</span></a>
            </div>

            <div class="clearfix"></div>

            @include('partials._menu-profile')
            <br />

            @include('partials._sidebar')
            
            @include('partials._menu-footer')
          </div>
        </div>
        @include('partials._top-nav')

        <!-- page content -->
        <div class="right_col" role="main">
          <!-- top tiles -->
          <!-- /top tiles -->
          @yield('content')

        </div>
        <!-- /page content -->

        <!-- footer content -->
        @include('partials._footer')
        <!-- /footer content -->
      </div>
    </div>

@include('partials._script')

  </body>
</html>
