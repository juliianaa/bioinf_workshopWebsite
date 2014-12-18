<%-- 
    Document   : bioinfHomePage
    Created on : 23-nov-2014, 18:47:44
    Author     : jwlgoh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
       
      <title>Bioinformatics Homepage</title>
    </head>

    <body>
        <div id="main1">
       
            <%@include file="includes/bodyHeader.jsp" %>


         


            <div id="site_content">
                <div id="top_border"></div>
                
                <ul id="images">
                   <img src="images/banner.jpg" width="970" height="300" alt=""/>
                </ul>
                
                <div id="sidebar_container">
                    <img class="paperclip" src="images/paperclip.png" alt="paperclip" />
                    <div class="sidebar">
                        <h3>Latest News</h3>
                        
                        <h4>New Website Launched</h4>
                        
                        <h5>January 1st, 2013</h5>
                        
                        <p>2013 sees the redesign of our website. Take a look around and let us know what you think.<br /><a href="#">Read more</a></p>
                        
                        <h4>20% Discount</h4>
                        
                        <h5>June 1st, 2013</h5>
                        
                        <p>We are offering a 20% discount to all new customers.<br /><a href="#">Read more</a></p>
                    </div>
                </div>
                <!--End of side bar-->
                
                <div class="contentMain">
                    <h1>Welcome to the Bioinformatics website</h1>

                    <p>Fruitcake sugar plum ice cream dessert chocolate bar I love bear claw jujubes. Marshmallow toffee liquorice brownie 
                         fruitcake croissant gummies. Oat cake jelly apple pie I love cheesecake bear claw chocolate. Tootsie roll I love 
                         gingerbread candy icing marzipan brownie. Soufflé powder sweet roll. Tootsie roll lemon drops I love dessert oat 
                         cake cupcake chocolate cake tart. Cupcake I love sweet roll danish I love applicake. Icing tart candy gummies 
                         chocolate cake cotton candy carrot cake jelly fruitcake. Halvah halvah donut lollipop biscuit bear claw I love. 
                         Croissant pie candy canes candy canes cupcake I love jelly-o croissant I love. Lollipop cheesecake pudding lollipop 
                         brownie. Applicake I love icing bear claw tiramisu apple pie I love. Halvah chocolate brownie fruitcake I love. Carrot 
                         cake pie I love.

                         Brownie carrot cake macaroon croissant tiramisu bonbon dragée jelly beans I love. 
                         Tootsie roll tiramisu dessert ice cream. Macaroon bonbon cupcake jujubes muffin 
                         jelly-o caramels. Cookie chocolate bar gummies I love. Pie cupcake oat cake unerdwear.
                         com I love jelly-o. Pastry ice cream pie. Halvah fruitcake macaroon pudding. 
                         Brownie pastry lemon drops apple pie. Toffee pie wafer chocolate bar. Brownie 
                         wafer powder cookie. Fruitcake jelly beans I love I love I love I love jelly beans 
                         lollipop. Fruitcake sweet roll fruitcake gummi bears applicake donut I love.
                         I love chocolate cake tootsie roll cake sweet. Cookie I love chocolate tootsie roll 
                         tiramisu bonbon candy canes dragée. Bear claw tootsie roll I love sweet roll cake 
                         gummi bears cotton candy marshmallow jelly-o. Chupa chups danish oat cake pastry. 
                         Topping fruitcake oat cake fruitcake. Dragée I love gummies gummies chocolate bar. 
                         Oat cake sweet toffee macaroon. Gummi bears danish soufflé gingerbread carrot cake 
                         chupa chups lollipop marshmallow I love. Brownie jelly-o jelly cake tart biscuit. 
                         Bonbon sugar plum bear claw. Fruitcake caramels I love wafer croissant. Toffee cupcake 
                         I love chocolate.
                    </p>
                    
                    <video width="620" height="540" controls>
                        <source src="videos/Bio-informatica.mp4" type="video/mp4">
                            Your browser does not support the <code>video</code> tag.
                    </video>

                </div>
                <!--End of content-->
            </div>


            <%@include file="includes/bodyFooter.jsp" %>


        </div>


    </body>
</html>

