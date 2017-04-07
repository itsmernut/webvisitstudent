<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>หน้าหลัก</title>
    <link rel="icon" href="https://www.mx7.com/i/1e9/vluoIf.png">
	<!-- BOOTSTRAP STYLES-->
    <link href="assets/css/bootstrap.css" rel="stylesheet" />
     <!-- FONTAWESOME STYLES-->
    <link href="assets/css/font-awesome.css" rel="stylesheet" />
     <!-- MORRIS CHART STYLES-->
    <link href="assets/js/morris/morris-0.4.3.min.css" rel="stylesheet" />
        <!-- CUSTOM STYLES-->
    <link href="assets/css/custom.css" rel="stylesheet" />
    <!-- Style CSS-->
    <link href="assets/css/style.css" rel="stylesheet" />
     <!-- GOOGLE FONTS-->
   <link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css' />
   <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">

    <script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/2.0.3/jquery.min.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/raphael/2.1.2/raphael-min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
    <script src="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.js"></script>
    <script src="assets/js/morris/example.js"></script>
    <link rel="stylesheet" href="http://cdnjs.cloudflare.com/ajax/libs/prettify/r224/prettify.min.css">
    <link rel="stylesheet" href="assets/js/morris/morris.css">

    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js" type="text/javascript"></script>
    <script type="text/javascript">
	jQuery("document").ready(function($){
      var nav = $('.nav-container');
      var pos = nav.offset().top;
      
      
      $(window).scroll(function () {
        var fix = ($(this).scrollTop() > pos) ? true : false;
        
        nav.toggleClass("fix-nav", fix);
        $('body').toggleClass("fix-body", fix);
 		
            }
                            );
	}
                            );
    </script>
</head>
<body>
    <div id="wrapper">
        <nav class="navbar navbar-default navbar-cls-top " role="navigation" style="margin-bottom: 0">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <div class="navbar-brand"> <img src="assets/img/logoSchool.png" id="logo" height = "50px"> Damrong</div> 
            </div>
  <div style="color: white;
padding: 15px 50px 5px 50px;
float: right;
font-size: 16px;"><a href="#" class="btn btn-danger square-btn-adjust">ออกจากระบบ</a> </div>
        </nav>   
           <!-- /. NAV TOP  -->
            <div class="nav-container">
                        <div class="nav">
                <nav class="navbar-default navbar-side" role="navigation" >
            <div class="sidebar-collapse">
                <ul class="nav" id="main-menu">
                    <div id="profile">
				<li class="text-center">
                    <img src="assets/img/user-admin.png" class="user-image img-responsive" id="img_p"/>
                    Admin
					</li>
				</div>
					
                    <li>
                        <a class="active-menu"  href="manageUser.jsp"><i class="glyphicon glyphicon-home fa-2x"></i> หน้าหลัก</a>
                    </li>
                     <li>
                        <a  href="adminProfile.jsp"><i class="glyphicon glyphicon-user fa-2x"></i> ข้อมูลส่วนตัว</a>
                    </li>
                    <li>
                        <a href="#"><i class="fa fa-sitemap fa-2x"></i> จัดการข้อมูล<span class="fa arrow"></span></a>
                        <ul class="nav nav-second-level">
                            <li>
                                <a href="listTeacher.do">ครู</a>
                            </li>
                            <li>
                                <a href="listLevel.do">นักเรียน</a>
                            </li>
                        </ul>
                               
                    </li>
                    <li  >
                        <a  href="admin_chart.html"><i class="fa fa-bar-chart-o fa-2x"></i> สถิติการเยี่ยม</a>
                    </li>

                        </ul>
                      </li>  
                </ul>              
            </div>      
        </nav> 
         </div>
            </div>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>ระบบเยี่ยมบ้านนักเรียน</h2>   
                    </div>
                </div>

                <!-- Map Picture -->
                 <hr />                
                <div class="row">
                    <div id="map_p">
                    <img src="assets/img/map2.jpg" id="map_img">
                    
                    </div>
                </div>

                 <!-- /. ROW  -->
                  <hr />
                <div class="row">
                <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-brown  set-icon">
                    <i class="fa fa-user"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">220 คน</p>
                    <p class="text-muted">ครูทั้งหมด</p>
                </div>
             </div>
		     </div>
                     <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-blue set-icon">
                    <i class="fa fa-group"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">5,340 คน</p>
                    <p class="text-muted">นักเรียนทั้งหมด</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-green set-icon">
                    <i class="glyphicon glyphicon-ok"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">2,366 คน</p>
                    <p class="text-muted">เยี่ยมแล้ว</p>
                </div>
             </div>
		     </div>
                    <div class="col-md-3 col-sm-6 col-xs-6">           
			<div class="panel panel-back noti-box">
                <span class="icon-box bg-color-red set-icon">
                    <i class="glyphicon glyphicon-remove"></i>
                </span>
                <div class="text-box" >
                    <p class="main-text">2,974 คน</p>
                    <p class="text-muted">ยังไม่เยี่ยม</p>
                </div>
             </div>
		     </div>
			</div>
                 <!-- /. ROW  --> 

                 <div class="row"> 
                    
                    <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            สถิติการเยียมทั้งหมด
                        </div>
                        <div class="panel-body">
                            <div id="graph"></div>
                        </div>
                    </div>            
                </div>
                               <div class="col-md-6 col-sm-12 col-xs-12">                     
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            สถิติการเยี่ยมแต่ละระดับชั้น
                        </div>
                        <div class="panel-body">
                            <div id="graph2"></div>
                        </div>
                    </div>            
                </div>
                 
                
           </div>
                      
                    </div>
                </div>     
                 <!-- /. ROW  -->           
    </div>
             <!-- /. PAGE INNER  -->
            </div>
         <!-- /. PAGE WRAPPER  -->
        </div>
     <!-- /. WRAPPER  -->
    <!-- SCRIPTS -AT THE BOTOM TO REDUCE THE LOAD TIME-->
    <!-- JQUERY SCRIPTS -->
    <script src="assets/js/jquery-1.10.2.js"></script>
      <!-- BOOTSTRAP SCRIPTS -->
    <script src="assets/js/bootstrap.min.js"></script>
    <!-- METISMENU SCRIPTS -->
    <script src="assets/js/jquery.metisMenu.js"></script>
     <!-- MORRIS CHART SCRIPTS -->
     <script src="assets/js/morris/raphael-2.1.0.min.js"></script>
    <script src="assets/js/morris/morris.js"></script>
      <!-- CUSTOM SCRIPTS -->
    <script src="assets/js/custom.js"></script>
 
</body>
</html>
