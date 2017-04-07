<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
      <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <title>ข้อมูลส่วนตัวนักเรียน</title>
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
	
	<script src="http://maps.google.com/maps/api/js?sensor=false" type="text/javascript"></script>
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
    
    <style>
      
      #map {
        height: 80%;
      }
      </style>
    
</head>
<body>
<c:forEach items="${studentList}" var="student">
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
                        <a href="manageUser.jsp"><i class="glyphicon glyphicon-home fa-2x"></i> หน้าหลัก</a>
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
                      
                            
            </div>      
        </nav> 
         </div>
            </div>  
        <!-- /. NAV SIDE  -->
        <div id="page-wrapper" >
            <div id="page-inner">
                <div class="row">
                    <div class="col-md-12">
                     <h2>ข้อมูลส่วนตัวนักเรียน
                        
                        <c:choose>
					<c:when test="${student.visited == true}">
						 <button type="button" class="btn btn-success btn-circle" id="check"><i class="fa fa-check fa-2x"></i></button>                         
                            </c:when>
					<c:otherwise>
						
					</c:otherwise>
                                   </c:choose>                      
                            

                     </h2>
                        
                    </div>
                </div>

                <!--profile -->   
                 <hr />    
                    <div class="col-md-6 col-sm-6">
                        <img src="assets/img/student.jpg"  id="img_p4"/>
                    </div>
                        
                        
                     <!--information-->   
                        <div class="col-md-6 col-sm-6">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                            	ข้อมูลส่วนตัว  <a href="editStudent.do?id=${student.keyString}"><button class="bbtn btn-primary btn-xs" id="edit1"><i class="fa fa-edit "></i> แก้ไข</button></a>
                        </div>

                        <div class="panel-body">
                                    <h5>ชื่อ-นามสกุล : ${student.firstName}  ${student.lastName}<h5>
                                    <h5>รหัสประจำตัวนักเรียน : ${student.studentId}<h5>  
                                    <h5>ห้อง : ${student.classroom}<h5> 
                                    <h5>อีเมล์ : ${student.email}<h5>
                                    <h5>วันเกิด : ${student.birthday}<h5>
                                    <h5>เบอร์โทรศัพท์  : ${student.phone}<h5>
                                    <h5>บ้านเลขที่: ${student.address}<h5>
									<h5>ตำบล: ${student.subDistrict}<h5>
									<h5>อำเภอ: ${student.district}<h5>
									<h5>จังหวัด: ${student.province}<h5>
									<h5>ไปรษณีย์: ${student.postalcode}<h5>
									<td><a href="checkStudent.do?id=${student.keyString}">Check Student</a></td>
									<td><a href="checkVisited.do?id=${student.keyString}">Record Time</a></td>
                                 
                            </div>
                        </div>
                    </div>
                    <!--Address-->
                    <div class="row">
                <div class="col-md-12">
                    <div class="panel panel-default">
                        <div class="panel-heading">
                         	ข้อมูลเพิ่มเติม
                            <td><a href="listLocation.do?id=${student.keyString}">View Location</a></td>
							<td><a href="listParent.do?id=${student.keyString}">View Parent</a></td>
							</div>
                        <div class="panel-body">
                          
                            <img src="assets/img/home.jpg"  id="img_p5"/>
                            <img src="assets/img/home.jpg"  id="img_p5"/>
                            </p>
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
 </c:forEach>
</body>
</html>
