<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<a href="newLocationS.do">Add New Location</a><br>
  <a href="viewStudentProfile.jsp">Back to Profile</a><br>
  <head>
    <meta name="viewport" content="initial-scale=1.0, user-scalable=no">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Simple markers</title>
    <style>
      /* Always set the map height explicitly to define the size of the div
       * element that contains the map. */
      #map {
        height: 100%;
      }
      /* Optional: Makes the sample page fill the window. */
      html, body {
        height: 100%;
        margin: 0;
        padding: 0;
      }
    </style>
  </head>
  <body>
  
  <c:forEach items="${locationList}" var="location">
  <table border="1">
			<tr>
				<td>${location.xpoint}</td>
				<td>${location.ypoint}</td>
				<td><a href="deleteLocationS.do?id=${location.keyString}">แก้ไข</a></td>
			</tr>
	</table>
	
  
    <div id="map">
    <script>

      function initMap() {
        var myLatLng = {lat: ${location.xpoint}, lng: ${location.ypoint}};

        var map = new google.maps.Map(document.getElementById('map'), {
          zoom: 8,
          center: myLatLng
        });

        var marker = new google.maps.Marker({
          position: myLatLng,
          map: map,
          title: 'Hello World!'
        });
      }
    </script>
    <script async defer
    src="https://maps.googleapis.com/maps/api/js?key=AIzaSyDrNXdcO82OSn5ITDx2rvo94ZT6YOtwOwg&callback=initMap">
    </script>
    </c:forEach>
  </body>
</html>