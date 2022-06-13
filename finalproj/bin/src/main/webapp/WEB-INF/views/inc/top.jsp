<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="rica">
    <meta name="keywords" content="rica">
    <meta name="author" content="rica">
    <link rel="icon" href="../assets/images/favicon.png" type="image/x-icon" />
    <title>OnAir</title>


    <!--Google font-->
    <link
        href="https://fonts.googleapis.com/css?family=Nunito:300,300i,400,400i,600,600i,700,700i,800,800i,900,900i&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Work+Sans:400,500,600,700,800,900&display=swap"
        rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Vampiro+One&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script:400,700&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Dancing+Script&display=swap" rel="stylesheet">
    
    <!-- Icons -->
    <link rel="stylesheet" type="text/css" href="../assets/css/font-awesome.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css">

    <!-- Date-time picker css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/datepicker.min.css">

    <!--Slick slider css-->
    <link rel="stylesheet" type="text/css" href="../assets/css/slick.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/slick-theme.css">

    <!-- Themify icon -->
    <link rel="stylesheet" type="text/css" href="../assets/css/magnific-popup.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/themify-icons.css">

    <!-- Bootstrap css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/bootstrap.css">

    <!-- Theme css -->
    <link rel="stylesheet" type="text/css" href="../assets/css/color1.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/color2.css">

    <!-- Animation -->
    <link rel="stylesheet" type="text/css" href="../assets/css/animate.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/themify-icons.css">
    
	 <!-- latest jquery-->
    <script src="../assets/js/jquery-3.6.0.min.js"></script>
    <script src="../assets/js/jquery-3.5.1.min.js"></script>

    <!-- date-time picker js -->
    <script src="../assets/js/date-picker.js"></script>

    <!-- footer reveal js -->
    <script src="../assets/js/footer-reveal.min.js"></script>

    <!-- video js-->
    <script src="../assets/js/jquery.vide.min.js"></script>

    <!-- slick js-->
    <script src="../assets/js/slick.js"></script>

    <!-- Bootstrap js-->
    <script src="../assets/js/bootstrap.bundle.min.js"></script>

    <!-- lazyload js-->
    <script src="../assets/js/lazysizes.min.js"></script>

    <!-- Theme js-->
    <script src="../assets/js/script.js"></script>

    <script>
        $('#datepicker').datepicker({
            uiLibrary: 'bootstrap4'
        });
        $('#datepicker1').datepicker({
            uiLibrary: 'bootstrap4'
        });
    </script>
</head>

<body>


    <!-- pre-loader start -->
    <div class="loader-wrapper img-gif">
        <img src="../assets/images/loader.gif" alt="">
    </div>
    <!-- pre-loader end -->


    <!-- header start -->
    <header class="overlay-black">
        <div class="container">
            <div class="row">
                <div class="col">
                    <div class="menu">
                        <div class="brand-logo">
                            <a href="../main/main.do">
                                <img src="../assets/images/main.png" alt=""
                                    class="img-fluid blur-up lazyload">
                            </a>
                        </div>
                        <nav>
                            <div class="main-navbar">
                                <div id="mainnav">
                                    <div class="toggle-nav"><i class="fa fa-bars sidebar-bar"></i></div>
                                    <div class="menu-overlay"></div>
                                    <ul class="nav-menu">
                                        <li class="back-btn">
                                            <div class="mobile-back text-end">
                                                <span>Back</span>
                                                <i aria-hidden="true" class="fa fa-angle-right ps-2"></i>
                                            </div>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="nav-link menu-title">예매</a>
                                            <ul class="nav-submenu menu-content">
                                                <li><a href="#" class="submenu-title">항공권 예매</a></li>
                                                <li><a href="#" class="submenu-title">예약 조회</a></li>
                                                <li><a href="#" class="submenu-title">항공편 현황</a></li>
                                            </ul>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="nav-link menu-title">공항</a>
                                        </li>
                                        <li class="dropdown">
                                            <a href="#" class="nav-link menu-title">커뮤니티</a>
                                            <ul class="nav-submenu menu-content">
                                                <li><a href="#" class="submenu-title">고객의 소리</a></li>
                                                <li><a href="#" class="submenu-title">유실물 찾기</a></li>
                                            </ul>
                                        </li>
                                        <li class="dropdown">
                                        	<a href="#" class="nav-link menu-title">고객지원</a>
                                            <ul class="nav-submenu menu-content">
                                                <li><a href="#" class="submenu-title">공지사항</a></li>
                                                <li><a href="#" class="submenu-title">이용안내</a></li>
                                                <li><a href="#" class="submenu-title">FAQ</a></li>
                                            </ul>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </nav>
                        <ul class="header-right">
                            <li class="user user-light">
                                <a href="#">
                                    <i class="fas fa-user"></i>
                                </a>
                            </li>
                            <li class="user user-light">
                            	<a href="#">
	                            	<svg xmlns="http://www.w3.org/2000/svg" 
	                            		width="16" height="16" fill="currentColor" 
	                            		class="bi bi-chat-left-dots-fill" viewBox="0 0 16 16" color="white">
									  <path d="M0 2a2 2 0 0 1 2-2h12a2 2 0 0 1 2 2v8a2 2 0 0 1-2 2H4.414a1 1 0 0 0-.707.293L.854 15.146A.5.5 0 0 1 0 14.793V2zm5 4a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm4 0a1 1 0 1 0-2 0 1 1 0 0 0 2 0zm3 1a1 1 0 1 0 0-2 1 1 0 0 0 0 2z"></path>
									</svg>
								</a>
                            </li>
                            <li class="setting">
                                <a href="#">
                                    <i class="fas fa-cog"></i>
                                </a>
                                <ul class="setting-open">
                                    <li class="front-setting">
                                        <select>
                                            <option value="volvo">USD</option>
                                            <option value="saab">EUR</option>
                                            <option value="opel">INR</option>
                                            <option value="audi">AUD</option>
                                        </select>
                                    </li>
                                    <li class="front-setting">
                                        <select>
                                            <option value="volvo">ENG</option>
                                            <option value="saab">FRE</option>
                                            <option value="opel">SPA</option>
                                            <option value="audi">DUT</option>
                                        </select>
                                    </li>
                                </ul>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </header>
    <!--  header end -->