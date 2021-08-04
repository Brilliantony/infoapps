            <!-- sidebar menu -->
            <div id="sidebar-menu" class="main_menu_side hidden-print main_menu">
              <div class="menu_section">
                <ul class="nav side-menu">
                  <li><a href="{{ url('/') }}"><i class="fa fa-home"></i> Dashboard</a></li>
                  <li><a><i class="fa fa-edit"></i> Forms <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="{{ url('form/awfe') }}">Form AWFE</a></li>
                      <li><a href="{{ url('form/agent') }}">Form Agent</a></li>
                      <li><a href="{{ url('form/tl') }}">Form Team Leader</a></li>
                      <!-- <li><a href="{{ url('form/site_awal') }}">Form Site Awal</a></li> -->
                      <li><a href="{{ url('form/tl') }}">Form IT</a></li>
                    </ul>
                  </li>

                  <li><a><i class="fa fa-table"></i> Data Master <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="{{ url('awfe') }}">Data AWFE</a></li>
                      <li><a href="{{ url('agent') }}">Data Agent</a></li>
                      <li><a href="{{ url('tl') }}">Data Team Leader</a></li>
                      <li><a href="{{ url('tl') }}">Data IT</a></li>
                      <!-- <li><a href="{{ url('site_awal') }}">Data Site Awal</a></li> -->
                    </ul>
                  </li>
                  <!-- <li><a><i class="fa fa-table"></i> Laporan <span class="fa fa-chevron-down"></span></a>
                    <ul class="nav child_menu">
                      <li><a href="">Penukaran</a></li>
                      <li><a href="">Transaksi</a></li>
                    </ul>
                  </li> -->
                  <li><a href="{{ route('logout') }}"><i class="fa fa-sign-out"></i>Logout</a></li>

                </ul>
              </div>

            </div>
            <!-- /sidebar menu -->

