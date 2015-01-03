<%-- 
    Document   : bioinfPuzzelPage
    Created on : 18-12-2014, 18:47:44
    Author     : nstoker
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<html lang="en" class="no-js">
	<head>
            <base href="${initParam.base_url}"></base>
            <h1 align="center">Bioinformatica puzzel</h1>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge">
		<meta name="viewport" content="width=device-width, initial-scale=1">
                <script src="js/modernizr.custom_1.js"></script>
		<link rel="shortcut icon" href="favicon.ico">
		<link rel="stylesheet" type="text/css" href="css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="css/font-awesome.min.css" />
		<link rel="stylesheet" type="text/css" href="css/demo.css" />
		<link rel="stylesheet" type="text/css" href="css/bottom-slide.css" />
                <script src="js/draggabillity.js"></script>
		<script src="js/dragdrop.js"></script>
		<script type="text/javascript">
                    var _gaq = _gaq || [];
                    _gaq.push(['_setAccount', 'UA-7243260-2']);
                    _gaq.push(['_trackPageview']);
                    (function() {
                    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
                    ga.src = ('https:' === document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
                    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
                    })();
                </script>
	</head>
	<body class="skin-5">
            
		<div class="container">
			<!-- Top Navigation -->

			<div class="content">
				<header class="codrops-header">
			
				</header>
				<div id="grid" class="grid clearfix">
                                    <div class="grid__item"><i class="fa fa-fw"></i>Mendel</div>
					<div class="grid__item"><i class="fa fa-fw"></i>A</div>
					<div class="grid__item"><i class="fa fa-fw"></i>T</div>
					<div class="grid__item"><i class="fa fa-fw"></i>C</div>
					<div class="grid__item"><i class="fa fa-fw"></i>G</div>
					<div class="grid__item"><i class="fa fa-fw"></i>U</div>
					<div class="grid__item"><i class="fa fa-fw"></i>triplet</div>
					<div class="grid__item"><i class="fa fa-fw"></i>AUG</div>
					<div class="grid__item"><i class="fa fa-fw"></i></div>
					<div class="grid__item"><i class="fa fa-fw"></i></div>
					<div class="grid__item"><i class="fa fa-fw"></i></div>
					<div class="grid__item"><i class="fa fa-fw"></i></div>
				</div>


			</div><!-- /content -->
                        
		</div><!-- /container -->
		<div id="drop-area" class="drop-area">
			<div>
				<div class="dummy"></div>
				<div class="drop-area__item"><i class="fa fa-fw"></i>Door wie is Wetenschappelijk bewezen dat genen de dragers zijn van het erfelijke materiaal?</div>
				<div class="drop-area__item"><i class="fa fa-fw"></i>Zet de 4 bases die een DNA molecuul maken op alfabetische volgorde, wat is de 3de base?</div>
				<div class="drop-area__item"><i class="fa fa-fw"></i>Hoe noemen we het proces van DNA afschrijven en mRNA maken?</div>
				<div class="drop-area__item"><i class="fa fa-fw"></i>Welke base zit er in mRNA inplaats van de T?</div>
                                <div class="drop-area__item"><i class="fa fa-fw"></i>Hoe noemen we een stukje van 3 bases in het mRNA dat codeert voor een aminozuur?	</div>
				<div class="drop-area__item"><i class="fa fa-fw"></i>Welke base(n) coderen voor het start codon?</div>
				<div class="drop-area__item"><i class="fa fa-fw"></i>Hoe noemen we de laatste stap waarbij mRNA wordt omgezet in een eiwit?</div>
				<div class="drop-area__item"><i class="fa fa-fw"></i>Wat zijn de eiwit fabriekjes van de cel?</div>
                                <div class="drop-area__item"><i class="fa fa-fw"></i>Hoeveel aminozuren kunnen er gemaakt worden met de verschillende codons?</div>
                                <div class="drop-area__item"><i class="fa fa-fw"></i>Aan wie  is de nobel prijs uitgereikt voor het ontdekken van DNA?</div>
                                <div class="drop-area__item"><i class="fa fa-fw"></i>Voor hoeveel procent lijkt ons DNA NIET op dat van een chimpansee?</div>
                                <div class="drop-area__item"><i class="fa fa-fw"></i>Hoeveel duizendtallen aan genen heeft een mens ongeveer?</div>
			</div>
		</div>
		<div class="drop-overlay"></div>
		
		<script>
			(function() {
				var body = document.body,
					dropArea = document.getElementById( 'drop-area' ),
					droppableArr = [], dropAreaTimeout;

				// initialize droppables
				[].slice.call( document.querySelectorAll( '#drop-area .drop-area__item' )).forEach( function( el ) {
					droppableArr.push( new Droppable( el, {
						onDrop : function( instance, draggableEl ) {
							// show checkmark inside the droppabe element
							classie.add( instance.el, 'drop-feedback' );
							clearTimeout( instance.checkmarkTimeout );
							instance.checkmarkTimeout = setTimeout( function() { 
								classie.remove( instance.el, 'drop-feedback' );
							}, 800 );
							// ...
						}
					} ) );
				} );

				// initialize draggable(s)
				[].slice.call(document.querySelectorAll( '#grid .grid__item' )).forEach( function( el ) {
					new Draggable( el, droppableArr, {
						draggabilly : { containment: document.body },
						scroll : true,
						scrollable : '#drop-area',
						scrollSpeed : 20,
						scrollSensitivity : 10,
						onStart : function() {
							// add class 'drag-active' to body
							classie.add( body, 'drag-active' );
							// clear timeout: dropAreaTimeout (toggle drop area)
							clearTimeout( dropAreaTimeout );
							// show dropArea
							classie.add( dropArea, 'show' );
						},
						onEnd : function( wasDropped ) {
							var afterDropFn = function() {
								// hide dropArea
								classie.remove( dropArea, 'show' );
								// remove class 'drag-active' from body
								classie.remove( body, 'drag-active' );
							};

							if( !wasDropped ) {
								afterDropFn();
							}
							else {
								// after some time hide drop area and remove class 'drag-active' from body
								clearTimeout( dropAreaTimeout );
								dropAreaTimeout = setTimeout( afterDropFn, 400 );
							}
						}
					} );
				} );
			})();
		</script>
                
            <center><%@include file="../includes/bodyFooter.jsp"  %></center>
	</body>
            
</html>
