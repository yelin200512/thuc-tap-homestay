@extends('layouts.index')

@section('css')
    <style>
        #img3 {
            width: 100%;
            height: 100%;
        }

        #content1 {
            display: flex;
            align-items: flex-start;
            justify: flex-start;
            padding-left: 5rem;
            padding-right: 5rem;
        }

    </style>
@endsection

@section('content')
    <div class="fh5co-parallax" style="background-image: url({{ url('upload/slide/111.jpg') }});"
        data-stellar-background-ratio="0.5">
        <div class="overlay"></div>
        <div class="container">
            <div class="row">
                <div
                    class="col-md-12 col-md-offset-0 col-sm-12 col-sm-offset-0 col-xs-12 col-xs-offset-0 text-center fh5co-table">
                    <div class="fh5co-intro fh5co-table-cell">
                        <h1 class="text-center">LIÊN HỆ VỚI CHÚNG TÔI</h1>
                        <p>Dookki Homestay hân hạnh được phục vụ bạn</p>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <div id="fh5co-contact-section">
        <div class="row" id="content1">
            <div class="col-md-6">
                <div id="map" class="fh5co-map">
                    <iframe
                        src="https://maps.google.com/maps?q=107%20L%C3%BD%20Th%C6%B0%E1%BB%9Dng%20Ki%E1%BB%87t%2C%20Th%C3%A0nh%20Vinh%2C%20Ngh%E1%BB%87%20An&t=&z=16&ie=UTF8&iwloc=&output=embed"
                        width="100%" height="450" frameborder="0" style="border:0;" allowfullscreen="" aria-hidden="false"
                        tabindex="0"></iframe>
                    {{-- <img id="img3" src="{{ url('upload/slide/maps.png') }}" />
                    --}}
                </div>
            </div>
            <div class="col-md-6">
                <div class="col-md-12">
                    <h3>ĐẾN VỚI CHÚNG TÔI</h3>
                    <p>Hãy cùng gia đình và bạn bè đến với Dookki Homestay để trải nghiệm những dịch vụ sang trọng, đẳng cấp
                        nhất thế giới.</p>
                    <ul class="contact-info">
                        <li><i class="ti-map"></i>107 Lý Thường Kiệt, Thành Vinh, Nghệ An</li>
                        <li><i class="ti-mobile"></i>+84 915689227</li>
                        <li><i class="ti-envelope"></i><a href="#">contact.dookkihomestay@gmail.com</a></li>
                        <li><i class="ti-home"></i><a href="{{ route('website') }}">www.dookkihomestay.com</a></li>
                    </ul>
                </div>
                <div class="col-md-12">
                    <div class="row">
                        <form action="" method="">
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Họ và tên">
                                </div>
                            </div>
                            <div class="col-md-6">
                                <div class="form-group">
                                    <input type="email" class="form-control" placeholder="Địa chỉ Email">
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <textarea name="" class="form-control" id="" cols="30" 
                                        placeholder="Nội dung tin nhắn"></textarea>
                                </div>
                            </div>
                            <div class="col-md-12">
                                <div class="form-group">
                                    <input type="submit" value="LIÊN HỆ" class="btn btn-primary">
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
@endsection