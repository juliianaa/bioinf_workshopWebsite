/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


$(document).ready(initialize);

function initialize() {
    
//    var url = "http://localhost:8080/Bioinformatica_website/logout.do";
    var url_data = $("#path").text();
//var url_data = "http://localhost:8080/Bioinformatica_website/html/technasiumWorkshop.jsp";
////    pathway = {'data':url_data,
////    'test':"http://localhost:8080/Bioinformatica_website/html/technasiumWorkshop.jsp"};
//    $.post(url, url_data, function(){
//    });
//    
window.open(url_data);
//    
//    $.ajax({
//        url: url,
//        data: {
//            getVariableName: url_data
//        },
//        type: 'GET'
//    });

}