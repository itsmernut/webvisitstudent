<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html ng-app="mapApp">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="initial-scale=1.0, user-scalable=no"/>
        <title>Google Map</title>
        <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/angular.js/1.5.8/angular.js"></script>
        <script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?v=3.exp&key=AIzaSyDrNXdcO82OSn5ITDx2rvo94ZT6YOtwOwg"></script>
        <style media="screen">
            #map {
                width: 100%;
                height: 500px;
            }
 
        </style>
    </head>
    <body>
        <div class="container" ng-controller="mapController">
            <div class="" id="map"></div>
        </div>
 
        <script type="text/javascript">
            var app = angular.module('mapApp', []);
            app.controller('mapController', function($scope) {
                console.log('Google Maps API version: ' + google.maps.version);
                // สร้าง Location 2 ชุด
                var locations = [
                    {
                        title: 'BKK',
                        lat: 13.742053062720384,
                        lng: 100.5084228515625
                    }, {
                        title: 'Rayong',
                        lat: 12.860004340637044,
                        lng: 101.38870239257812
                    }
                ]
                // ผูก element กับ MAP zoom ระดับ 6 เลขน้อย จะมองระยะกว้าง เลขมาก จะละเอียด center ให้ focus ที่ Bangkok
                var map = new google.maps.Map(document.getElementById('map'), {
                    zoom: 6,
                    center: locations[0],
                    disableDefaultUI: true
                });
                // Loop วาด Marker บนแผนที่
                angular.forEach(locations, function(location, index) {
                    console.log('location ::==' + location.title);
                    // สร้าง marker
                    var marker = new google.maps.Marker({position: location, map: map, title: location.title});
                    // สร้าง popup content ใส่ content เป็น location title
                    var infowindow = new google.maps.InfoWindow({content: location.title});
                    // สร้าง event ให้ จุด marker
                    marker.addListener('click', function(event) {
                        console.log(event);
                        // เปิด popup เมื่อ click marker
                        infowindow.open(map,marker);
                    });
                });
 
                // ใส่ event click ให้ MAP ทั้ง MAP
                map.addListener('click', function(event) {
                    console.log('latitude ::==' + event.latLng.lat());
                    console.log('longtitude ::==' + event.latLng.lng());
                    // alert Latitude and Longitude
                    alert('Latitude ::=='+event.latLng.lat()+' \nLongitude ::=='+event.latLng.lng());
                });
            });
        </script>
    </body>
</html>