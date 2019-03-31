<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@taglib prefix="spring" uri="http://www.springframework.org/tags"%>

<spring:url var="css" value="/resources/css" />
<spring:url var="js" value="/resources/js" />
<spring:url var="vendor" value="/resources/vendor" />
<spring:url var="images" value="/resources/images" />

<c:set var="contextRoot" value="${pageContext.request.contextPath}" />


<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>HRMS - ${title} </title>
    <meta name="description" content="Ela Admin - HTML5 Admin Template">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="https://i.imgur.com/QRAUqs9.png">
    <link rel="shortcut icon" href="https://i.imgur.com/QRAUqs9.png">

    <link rel="stylesheet" href="${vendor}/css/normalize.min.css">
    <link rel="stylesheet" href="${vendor}/css/bootstrap.min.css">
    <link rel="stylesheet" href="${vendor}/css/font-awesome.min.css">
    <link rel="stylesheet" href="${vendor}/css/themify-icons.css">
    <link rel="stylesheet" href="${vendor}/css/pe-icon-7-stroke.min.css">
    <link rel="stylesheet" href="${vendor}/css/flag-icon.min.css">
    <link rel="stylesheet" href="${css}/cs-skin-elastic.css">
    <link rel="stylesheet" href="${css}/style.css">
    <!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->
    <link href="${vendor}/css/chartist.min.css" rel="stylesheet">
    <link href="${vendor}/css/jqvmap.min.css" rel="stylesheet">

    <link href="${vendor}/css/weather-icons.css" rel="stylesheet" />
    <link href="${vendor}/css/fullcalendar.min.css" rel="stylesheet" />

   <style>
    #weatherWidget .currentDesc {
        color: #ffffff!important;
    }
        .traffic-chart {
            min-height: 335px;
        }
        #flotPie1  {
            height: 150px;
        }
        #flotPie1 td {
            padding:3px;
        }
        #flotPie1 table {
            top: 20px!important;
            right: -10px!important;
        }
        .chart-container {
            display: table;
            min-width: 270px ;
            text-align: left;
            padding-top: 10px;
            padding-bottom: 10px;
        }
        #flotLine5  {
             height: 105px;
        }

        #flotBarChart {
            height: 150px;
        }
        #cellPaiChart{
            height: 160px;
        }

    </style>
</head>

<body>
    <!-- Left Panel -->
    <%@include file="./shared/sidebar.jsp" %>
    <!-- /#left-panel -->
    <!-- Right Panel -->
    <div id="right-panel" class="right-panel">
        <!-- Header-->
        <%@include file="./shared/topnav.jsp" %>
        <!-- /#header -->
        <!-- Content -->
        <div class="content">
            <!-- Animated -->
            <c:if test="${userClickHome == true }">
            	<%@include file="./home.jsp" %>
            </c:if>
            
            <c:if test="${userClickCompanyStructure == true }">
            	<%@include file="./admin/company-structure.jsp" %>
            </c:if>
            
            <c:if test="${userClickJobDetailsSetup == true }">
            	<%@include file="./admin/job-details-setup.jsp" %>
            </c:if>
            
            <c:if test="${userClickQualificationSetup == true }">
            	<%@include file="./admin/qualification-setup.jsp" %>
            </c:if>
            
            <c:if test="${userClickProjectClientSetup == true }">
            	<%@include file="./admin/project-client-setup.jsp" %>
            </c:if>
            
            <c:if test="${userClickOvertimeAdministration == true }">
            	<%@include file="./admin/overtime-administration.jsp" %>
            </c:if>
            
            <c:if test="${userClickEmployeeCustomFields == true }">
            	<%@include file="./admin/employee-custom-fields.jsp" %>
            </c:if>
            
            <c:if test="${userClickCompanyLoans == true }">
            	<%@include file="./admin/company-loans.jsp" %>
            </c:if>
            
            <c:if test="${userClickEmployees == true }">
            	<%@include file="./employee/employees.jsp" %>
            </c:if>
            
            <c:if test="${userClickTravelRequests == true }">
            	<%@include file="./employee/travel-requests.jsp" %>
            </c:if>
            
            <c:if test="${userClickMonitorAttendance == true }">
            	<%@include file="./employee/monitor-attendance.jsp" %>
            </c:if>
            
            <c:if test="${userClickReports == true }">
            	<%@include file="./reports/reports.jsp" %>
            </c:if>
            <!-- .animated -->
        </div>
        <!-- /.content -->
        <div class="clearfix"></div>
        <!-- Footer -->
        <%@include file="./shared/footer.jsp" %>
        <!-- /.site-footer -->
    </div>
    <!-- /#right-panel -->

    <!-- Scripts -->
    <script src="${vendor}/js/jquery.min.js"></script>
    <script src="${vendor}/js/popper.min.js"></script>
    <script src="${vendor}/js/bootstrap.min.js"></script>
    <script src="${vendor}/js/jquery.matchHeight.min.js"></script>
    <script src="${js}/main.js"></script>

    <!--  Chart js -->
    <script src="${vendor}/js/Chart.bundle.min.js"></script>

    <!--Chartist Chart-->
    <script src="${vendor}/js/chartist.min.js"></script>
    <script src="${vendor}/js/chartist-plugin-legend.min.js"></script>

    <script src="${vendor}/js/jquery.flot.min.js"></script>
    <script src="${vendor}/js/jquery.flot.pie.min.js"></script>
    <script src="${vendor}/js/jquery.flot.spline.min.js"></script>

    <script src="${vendor}/js/jquery.simpleWeather.min.js"></script>
    <script src="${js}/init/weather-init.js"></script>

    <script src="${vendor}/js/moment.min.js"></script>
    <script src="${vendor}/js/fullcalendar.min.js"></script>
    <!-- script src="${js}/fullcalendar-init.js"></script-->

    <!--Local Stuff-->
    <script>
        jQuery(document).ready(function($) {
            "use strict";

            // Pie chart flotPie1
            var piedata = [
                { label: "Desktop visits", data: [[1,32]], color: '#5c6bc0'},
                { label: "Tab visits", data: [[1,33]], color: '#ef5350'},
                { label: "Mobile visits", data: [[1,35]], color: '#66bb6a'}
            ];

            $.plot('#flotPie1', piedata, {
                series: {
                    pie: {
                        show: true,
                        radius: 1,
                        innerRadius: 0.65,
                        label: {
                            show: true,
                            radius: 2/3,
                            threshold: 1
                        },
                        stroke: {
                            width: 0
                        }
                    }
                },
                grid: {
                    hoverable: true,
                    clickable: true
                }
            });
            // Pie chart flotPie1  End
            // cellPaiChart
            var cellPaiChart = [
                { label: "Direct Sell", data: [[1,65]], color: '#5b83de'},
                { label: "Channel Sell", data: [[1,35]], color: '#00bfa5'}
            ];
            $.plot('#cellPaiChart', cellPaiChart, {
                series: {
                    pie: {
                        show: true,
                        stroke: {
                            width: 0
                        }
                    }
                },
                legend: {
                    show: false
                },grid: {
                    hoverable: true,
                    clickable: true
                }

            });
            // cellPaiChart End
            // Line Chart  #flotLine5
            var newCust = [[0, 3], [1, 5], [2,4], [3, 7], [4, 9], [5, 3], [6, 6], [7, 4], [8, 10]];

            var plot = $.plot($('#flotLine5'),[{
                data: newCust,
                label: 'New Data Flow',
                color: '#fff'
            }],
            {
                series: {
                    lines: {
                        show: true,
                        lineColor: '#fff',
                        lineWidth: 2
                    },
                    points: {
                        show: true,
                        fill: true,
                        fillColor: "#ffffff",
                        symbol: "circle",
                        radius: 3
                    },
                    shadowSize: 0
                },
                points: {
                    show: true,
                },
                legend: {
                    show: false
                },
                grid: {
                    show: false
                }
            });
            // Line Chart  #flotLine5 End
            // Traffic Chart using chartist
            if ($('#traffic-chart').length) {
                var chart = new Chartist.Line('#traffic-chart', {
                  labels: ['Jan', 'Feb', 'Mar', 'Apr', 'May', 'Jun'],
                  series: [
                  [0, 18000, 35000,  25000,  22000,  0],
                  [0, 33000, 15000,  20000,  15000,  300],
                  [0, 15000, 28000,  15000,  30000,  5000]
                  ]
              }, {
                  low: 0,
                  showArea: true,
                  showLine: false,
                  showPoint: false,
                  fullWidth: true,
                  axisX: {
                    showGrid: true
                }
            });

                chart.on('draw', function(data) {
                    if(data.type === 'line' || data.type === 'area') {
                        data.element.animate({
                            d: {
                                begin: 2000 * data.index,
                                dur: 2000,
                                from: data.path.clone().scale(1, 0).translate(0, data.chartRect.height()).stringify(),
                                to: data.path.clone().stringify(),
                                easing: Chartist.Svg.Easing.easeOutQuint
                            }
                        });
                    }
                });
            }
            // Traffic Chart using chartist End
            //Traffic chart chart-js
            if ($('#TrafficChart').length) {
                var ctx = document.getElementById( "TrafficChart" );
                ctx.height = 150;
                var myChart = new Chart( ctx, {
                    type: 'line',
                    data: {
                        labels: [ "Jan", "Feb", "Mar", "Apr", "May", "Jun", "Jul" ],
                        datasets: [
                        {
                            label: "Visit",
                            borderColor: "rgba(4, 73, 203,.09)",
                            borderWidth: "1",
                            backgroundColor: "rgba(4, 73, 203,.5)",
                            data: [ 0, 2900, 5000, 3300, 6000, 3250, 0 ]
                        },
                        {
                            label: "Bounce",
                            borderColor: "rgba(245, 23, 66, 0.9)",
                            borderWidth: "1",
                            backgroundColor: "rgba(245, 23, 66,.5)",
                            pointHighlightStroke: "rgba(245, 23, 66,.5)",
                            data: [ 0, 4200, 4500, 1600, 4200, 1500, 4000 ]
                        },
                        {
                            label: "Targeted",
                            borderColor: "rgba(40, 169, 46, 0.9)",
                            borderWidth: "1",
                            backgroundColor: "rgba(40, 169, 46, .5)",
                            pointHighlightStroke: "rgba(40, 169, 46,.5)",
                            data: [1000, 5200, 3600, 2600, 4200, 5300, 0 ]
                        }
                        ]
                    },
                    options: {
                        responsive: true,
                        tooltips: {
                            mode: 'index',
                            intersect: false
                        },
                        hover: {
                            mode: 'nearest',
                            intersect: true
                        }

                    }
                } );
            }
            //Traffic chart chart-js  End
            // Bar Chart #flotBarChart
            $.plot("#flotBarChart", [{
                data: [[0, 18], [2, 8], [4, 5], [6, 13],[8,5], [10,7],[12,4], [14,6],[16,15], [18, 9],[20,17], [22,7],[24,4], [26,9],[28,11]],
                bars: {
                    show: true,
                    lineWidth: 0,
                    fillColor: '#ffffff8a'
                }
            }], {
                grid: {
                    show: false
                }
            });
            // Bar Chart #flotBarChart End
        });
    </script>
</body>
</html>

