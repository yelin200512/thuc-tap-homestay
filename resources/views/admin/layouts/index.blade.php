<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Quản trị - Dookki Homestay</title>
    <link href="{{ asset('font-end/admin/css/bootstrap.min.css') }}" rel="stylesheet">
    <link href="{{ asset('font-end/admin/css/metisMenu.min.css') }}" rel="stylesheet">
    <link href="{{ asset('font-end/admin/css/timeline.css') }}" rel="stylesheet">
    <link href="{{ asset('font-end/admin/css/startmin.css') }}" rel="stylesheet">
    <link href="{{ asset('font-end/admin/css/morris.css') }}" rel="stylesheet">
    <link href="{{ asset('font-end/admin/css/font-awesome.min.css') }}" rel="stylesheet" type="text/css">
    <link href="{{ asset('font-end/admin/css/dataTables/dataTables.bootstrap.css') }}" rel="stylesheet">
    <link href="{{ asset('font-end/admin/css/dataTables/dataTables.responsive.css') }}" rel="stylesheet">

</head>

<body>
    <div id="wrapper" class="toggled">
        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <a class="navbar-brand" href="{{ route('admin.index') }}">Dookki Homestay</a>
            </div>
            <!-- Top Navigation: Left Menu -->
            <ul class="nav navbar-nav navbar-left navbar-top-links">
                <li><a href="{{ route('website') }}"><i class="fa fa-home fa-fw"></i> Website</a></li>
            </ul>


            <!-- Top Navigation: Right Menu -->
            @if (Auth::check())
                <ul class="nav navbar-right navbar-top-links">
                    <li class="dropdown">
                        <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                            <i class="fa fa-user fa-fw"></i> {{ Auth::user()->name }} <b class="caret"></b>
                        </a>
                        <ul class="dropdown-menu dropdown-user">
                            <li><a href="{{ route('admin.profile', ['id' => Auth::user()->id]) }}"><i
                                        class="fa fa-user fa-fw"></i> Thông tin người dùng</a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="{{ route('admin.logout') }}"><i class="fa fa-sign-out fa-fw"></i> Thoát</a>
                            </li>
                        </ul>
                    </li>
                </ul>
            @endif

            <!-- Sidebar -->
            <div class="navbar-default sidebar" role="navigation" id="sidebar-wrapper">
                <div class="sidebar-nav navbar-collapse" id="layoutSidenav_nav">
                    <ul class="nav" id="side-menu">
                        <li class="sidebar-search">
                            <div class="input-group custom-search-form">
                                <input type="text" class="form-control" placeholder="Search...">
                                <span class="input-group-btn">
                                    <button class="btn btn-primary" type="button">
                                        <i class="fa fa-search"></i>
                                    </button>
                                </span>
                            </div>
                        </li>
                        <li>
                            <a href="{{ route('admin.index') }}" class="active"><i class="fa fa-dashboard fa-fw"></i>
                                Sảnh chờ</a>
                        </li>
                        <li>
                            <a href="{{ route('admin.chitietdp.danhsach') }}" class=""><i class="fa fa-list fa-fw"></i>
                                Danh sách khách đặt phòng</a>
                        </li>
                        @if ((Auth::check() && Auth::user()->role_id == 1) || Auth::user()->role_id == 2)
                            <li>
                                <a href="{{ route('admin.loaiphong.danhsach') }}"><i
                                        class="fa fa-sitemap fa-fw"></i>Loại phòng<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="{{ route('admin.loaiphong.danhsach') }}">Danh sách Loại phòng</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('admin.loaiphong.getThem') }}">Thêm</a>
                                    </li>
                                </ul>
                            </li>
                            <li>
                                <a href="{{ route('admin.phong.danhsach') }}"><i
                                        class="fa fa-sitemap fa-fw"></i>Phòng<span class="fa arrow"></span></a>
                                <ul class="nav nav-second-level">
                                    <li>
                                        <a href="{{ route('admin.phong.danhsach') }}">Danh sách Phòng</a>
                                    </li>
                                    <li>
                                        <a href="{{ route('admin.phong.getThem') }}">Thêm</a>
                                    </li>
                                </ul>
                            </li>
                        @endif

                        @if (Auth::check() && Auth::user()->role_id == 1)
                            <li>
                                <a href="{{ route('admin.slide.danhsach') }}" class=""><i
                                        class="fa fa-file-o fa-fw"></i> Slide</a>
                            </li>
                            <li>
                                <a href="{{ route('admin.user.danhsach') }}"><i class="fa fa-files-o fa-fw"></i>
                                    User</a>
                            </li>
                        @endif
                    </ul>
                </div>
            </div>
        </nav>

        <!-- Page Content -->
        <div id="page-wrapper">
            <div class="container-fluid">
                <!-- ... Your content goes here ... -->
                @hasSection('content')
    @yield('content')
@else
    <div id="page-wrapper">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-12">
                    <h1 class="page-header">Bảng điều khiển - Dookki Homestay</h1>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-primary">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-home fa-4x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{{ \Illuminate\Support\Facades\DB::table('phong')->count() }}</div>
                                    <div>Căn Homestay</div>
                                </div>
                            </div>
                        </div>
                        <a href="{{ url('admin/phong/danhsach') }}">
                            <div class="panel-footer">
                                <span class="pull-left">Xem danh sách căn</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-green">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-th-large fa-4x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{{ \Illuminate\Support\Facades\DB::table('loaiphong')->count() }}</div>
                                    <div>Phân khúc lưu trú</div>
                                </div>
                            </div>
                        </div>
                        <a href="{{ url('admin/loaiphong/danhsach') }}">
                            <div class="panel-footer">
                                <span class="pull-left">Quản lý loại căn</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-yellow">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-calendar-check-o fa-4x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{{ \Illuminate\Support\Facades\DB::table('datphong')->count() }}</div>
                                    <div>Đơn đặt phòng</div>
                                </div>
                            </div>
                        </div>
                        <a href="{{ url('admin/chitietdp/danhsach') }}">
                            <div class="panel-footer">
                                <span class="pull-left">Xem danh sách đặt</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <div class="panel panel-red">
                        <div class="panel-heading">
                            <div class="row">
                                <div class="col-xs-3">
                                    <i class="fa fa-users fa-4x"></i>
                                </div>
                                <div class="col-xs-9 text-right">
                                    <div class="huge">{{ \Illuminate\Support\Facades\DB::table('users')->count() }}</div>
                                    <div>Tài khoản hệ thống</div>
                                </div>
                            </div>
                        </div>
                        <a href="{{ url('admin/user/danhsach') }}">
                            <div class="panel-footer">
                                <span class="pull-left">Quản lý tài khoản</span>
                                <span class="pull-right"><i class="fa fa-arrow-circle-right"></i></span>
                                <div class="clearfix"></div>
                            </div>
                        </a>
                    </div>
                </div>
            </div>

            <div class="row">
                <div class="col-lg-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            <i class="fa fa-list fa-fw"></i> Tình trạng các căn tại Dookki Homestay
                        </div>
                        <div class="panel-body">
                            <div class="table-responsive">
                                <table class="table table-striped table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>ID</th>
                                            <th>Tên căn Homestay</th>
                                            <th>Phân khúc</th>
                                            <th>Giá / đêm</th>
                                            <th>Tổng số căn</th>
                                            <th>Đã đặt</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                        @php
                                            $dsCan = \Illuminate\Support\Facades\DB::table('phong')
                                                ->join('loaiphong', 'phong.loaiphong_id', '=', 'loaiphong.id')
                                                ->select('phong.*', 'loaiphong.tenloaiphong')
                                                ->orderBy('phong.loaiphong_id')
                                                ->get();
                                        @endphp
                                        @foreach($dsCan as $can)
                                            <tr>
                                                <td>{{ $can->id }}</td>
                                                <td><strong>{{ $can->tenphong }}</strong></td>
                                                <td>{{ $can->tenloaiphong }}</td>
                                                <td>{{ number_format($can->gia, 0, ',', '.') }} VNĐ</td>
                                                <td>{{ $can->soluong }}</td>
                                                <td>{{ $can->booked ?? 0 }}</td>
                                            </tr>
                                        @endforeach
                                    </tbody>
                                </table>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endif

            </div>
        </div>
    </div>
</body>
<script src="https://code.jquery.com/jquery-latest.js"></script>
<script src="{{ asset('font-end/admin/js/jquery.min.js') }}"></script>
<script src="{{ asset('font-end/admin/js/bootstrap.min.js') }}"></script>
<script src="{{ asset('font-end/admin/js/metisMenu.min.js') }}"></script>
<script src="{{ asset('font-end/admin/js/startmin.js') }}"></script>
<script src="{{ asset('font-end/admin/js/dataTables/jquery.dataTables.min.js') }}"></script>
<script src="{{ asset('font-end/admin/js/dataTables/dataTables.bootstrap.min.js') }}"></script>
<script type="text/javascript">
    $(document).ready(function() {
        $('#dtBasicExample').DataTable({
            responsive: true
        });
    });

</script>
{{-- Tắt thông báo --}}
<script type="text/javascript">
    $(".alert").fadeTo(3000, 800).slideUp(800, function() {
        $(".alert").slideUp(800);
    });

</script>
{{-- Xác nhận xoá --}}
<script type="text/javascript">
    function ConfirmDelete() {
        var x = confirm("Bạn có muốn xoá?");
        if (x)
            return true;
        else
            return false;
    }

</script>

@yield('script')

</html>
