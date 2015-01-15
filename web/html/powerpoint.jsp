<%-- 
    Document            : powerpoint_workshops
    Created on          : 7-dec-2014, 12:57:43
    Author              : nstoker
    Usefull information : To slide to the right/left use one section. To slide also up and down 
                           use a section in a section
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">

    <head>
        <base href="${initParam.base_url}">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/style.css" />
        <link href="css/workshop.css" rel="stylesheet" type="text/css"/>
        <link  href="css/reveal.css" rel="stylesheet"> 
        <link href="css/default.css" rel="stylesheet" type="text/css"/>
      <title>Bioinformatics Homepage</title>
    </head>
    <body> 
        <div class="reveal"> 
            <div class="slides"> 
                <section> 
                    <h1>Bio informatica</h1> 
                    <h3>Hanze hogeschool Groningen</h3> 
                </section> 
                <section> 
                    <h3>Wat doet een bio-informaticus?</h3> 
                    <ul>
                        <img src="images/info.png" width="250%" height="200%" />
                    </ul>
                    <ul> 

                    </ul> 
                </section> 
                <section> 
                    <h3>Structuur van DNA</h3>
                    <h5>Watson & Crick 1953</h5>
                        <img  width="375em" height="250em" src="images/2.jpg"/>
                        <ul> 
                            <li>Dubbelstrengs helix</li>
                            <li>Strengen zijn anti-parallel</li>
                            <li>Streng: poly-nucleotiden (ketting van 4 verschillende kralen)</li>
                            <li>A tegenover T en C tegenover G</li>
                        </ul> 
                </section>

                <section>
                        <section>
                                <h3>Masterclass</h3>
                                <h5>meet the mummy</h5>
                        </section>
                                
                        <section>
                            <h3>Verdeling van de dag (1)</h3>
                                <ul>
                                <li>09:00 tot 09:30     Wat is bio-informatica</li>
                                <li>09:30 tot 09:45      Pauze</li>
                                <li>09:45 tot 11:30      Programmeren</li>
                                <li>11:30 tot 11:45      Pauze</li>
                                <li>11:45 tot 12:30      Isoleren van genen</li>
                                <li>12:30 tot 13:30      Pauze</li>
                                </ul>
                        </section>
                    
                        <section>
                            <h3>Verdeling van de dag (2)</h3>
                                <ul>
                                <li>13:30 tot 13:45      Nabespreken deel 1 van de dag</li>
                                <li>13:45 tot 15:00      Determineren genen & maken presentatie</li>
                                <li>15:00 tot 15:15      Pauze</li>
                                <li>15:15 tot -          Presentaties & nabespreken</li>
                                </ul>
                        </section>
                    
                        <section>
                            <h3>Wat is bio-informatica? </h3>
                                
                        </section>
                        
                        <section>
                            <img  width="375em" height="250em" src="images/hanzeExperienceHAVO/eenden.jpg"/>
                            <img  width="375em" height="250em" src="images/hanzeExperienceHAVO/eendje-2.jpg"/>
                            <img  width="375em" height="250em" src="images/hanzeExperienceHAVO/wildeeend.jpg"/>
                        </section>
                            
                        <section>
                            <img  width="375em" height="250em" src="images/hanzeExperienceHAVO/Chico.jpg"/>
                            <img  width="375em" height="250em" src="images/hanzeExperienceHAVO/kon.jpg"/>
                        </section>
                    
                        <section>
                            <h3>Overerving</h3>
                            <img  width="350em" height="350em" src="images/hanzeExperienceHAVO/kuistabel.png"/>
                            <img  width="350em" height="350em" src="images/hanzeExperienceHAVO/overerving.png"/>
                        </section>
                    
                        <section>
                            <h3>Genen</h3>
                            Genen zijn erfelijke eigenschappen die dominant,
                            recessief of intermediar overgebracht kunnen worden.
                        </section>
                        
                        <section>
                           <h3>Eiwit of DNA?</h3>
                           <img  width="300em" height="250em" src="images/hanzeExperienceHAVO/hemoglob.jpg"/>
                           <img  width="300em" height="250em" src="images/hanzeExperienceHAVO/dna.gif"/>
                           <ul><li>Een eiwit is een polymeer van 20 verschillende aminozuren.</li>
                               <li>DNA is een polymeer van 4 verschillende nucleotiden.</li>
                           </ul>
                        </section>
                        
                        <section>
                            <h3>Van gen naar eiwit</h3>
                            <img  width="310em" height="490em" src="images/hanzeExperienceHAVO/GenNaarEiwit.png"/>
                        </section>
                        
                        <section>
                            <h3>DNA, het boek van het leven. </h3>
                            <h5>Het bevat alle antwoorden</h5>
                            <h4>TTCCGGAAAAGCTTCATCATCGTCTTCATCCGGTTCTTCAAACACCACCAGCTCAACGAGT
                                GCGAAGATTAACACAATGATTTCGGCCGCTAAAGCGCAGCTTGGGGTTCCGTATCGCTGG
                                GGAGGCACGACACCGTCCGGGTTTGACTGCAGCGGATTCATTTACTATGTACTGAACAAA
                                GTCACATCCGTATCTAGATTAACGGCAGCGGGATATTGGAACACAATGAAATCAGTTAGC
                                CAGCCTGCTGTCGGAGATTTCGTTTTCTTTTCAACATATAAAGCCGGCCCTTCCCACGTCG
                                GAATTTACCTAGGCAACGGGGAATTCATAAATGCCAACGATTCCGGAGTTGTCATTTCCA
                                ATATGAACAACTCTTACTGGAAACAGCGCTATCTCGGTGCAAAACGATATTTCTAAAAAC
                                AGAAACTGTGCGGCCTTAACGGCTGTACAGTTTTTATTAGAGCCTAAAGACGTTGATGCT
                                GATCATATGATTTGTCACCGGATGAAAATAGACTTCGGCCCGAACAGAAAAAGTGTCAT
                                CTTTCTGTCTGACTGTCACCCGAAAGACATCTTTAGTCTGCTGATCATTCACCTCTGTACG
                                CCCCATATAAGCATAATCAGAAAATGAAGCGCCCTTATATTCATCCTGAATTTTGCTCCA
                                GGCAAGCTGTTCCCACTTTTGAACGGACTCGTCTGTGTCCGTTAAATGACCTTTTGCAGC
                                CATTGACACGATAATCAATCCGCAAAAAAGAAGTGCGATGGTATACGGCAGGGATTTCA
                                TTTTTTCAGTCTCCTGTACCCAGAATATATTCCCTCATAGGTTTACCAAAAGCGATATCTT
                                CATTCAGGCATTTTGATTTTATGTCTCCCTCATATTGCTACCCCTTTACTGACGCAGACGG
                                CAAGTTTTGCCCCGTCAATAACAGAGGATGCGGCATAAACTAATCATGAACTTCTCACCC
                                AAGAAAGGAGAAGCGATTCATGGATTATGCCGATTACGATAAAGCGCTTTATTACACCC</h4>
                                
                        </section>
                        <section> 
                            <h3>Structuur van DNA</h3>
                                <img width="450em" height="150em" src="images/hanzeExperienceHAVO/dna.gif"/>
                                <ul> 
                                    <li>Dubbelstrengs helix</li>
                                    <li>Strengen zijn anti-parallel</li>
                                    <li>Streng: poly-nucleotiden (ketting van 4 verschillende kralen)</li>
                                    <li>A tegenover T en C tegenover G</li>
                                </ul> 
                        </section> 
                        
                        <section>
                            <h3>Sequencing 1970</h3>
                                <h5>5'-ACTGACTG-3'</h5>
                                   <h5>||||||||</h5>
                                <h5>3'-TGACTGAC-5'</h5>
                        </section>
                        
                        <section>
                            <h3>Human Genome Project</h3>
                            <ul>
                                <li>Begon formeel in 1990 (1984)</li>
                                <li>Klaar (92%?) in 2003</li>
                                <li>3 miljard US $</li>
                                <li>Meer dan 3 miljard base-paren</li>
                            </ul>
                        </section>
                        
                        <section>
                            <h3>Nieuwe technieken</h3>
                            <ul>
                                <li>1000 genome project</li>
                                <li>Mais</li>
                            </u>
                            <img width="600em" height="450em" src="images/hanzeExperienceHAVO/genbankGrowth.png"/>
                        </section>
                    
                        <section>
                            <h3>Als je het eruit kunt halen</h3>
                            <h5>DNA is namelijk erg groot en complex</h5>
                            <img width="200em" height="200em" src="images/hanzeExperienceHAVO/gist.png"/><ul><h4>mens +/- 6 miljard bp</h4></ul>
                            <img width="200em" height="200em" src="images/hanzeExperienceHAVO/muis.png"/><ul><h4>gist +/- 10 miljoen bp</h4></ul>
                            <img width="200em" height="250em" src="images/hanzeExperienceHAVO/sapiens.jpg"/><ul><h4>muis +/- 5 miljard bp</h4></ul>
                        </section>
                        
                        <section>
                            <h3>Daar hebben we bio-informatici voor!</h3>
                            <img width="450em" height="450em" src="images/hanzeExperienceHAVO/comp.png"/>
                        </section>
                    
                        <section>
                            <h3>Oh ja, eiwitten</h3>
                            <h5>ook een sequentie!</h5>
                            <ul>
                                <img width="350em" height="320em" src="images/hanzeExperienceHAVO/hemoglob.jpg"/>
                                <li>Vergelijken van structuren</li>
                            </ul>
                        </section>
                    
                        <section>
                            <h3>Bio-informatica</h3>
                            <ul>
                                <li>Combinatie van biologie en informatica</li>
                                <li>Oplossen van biologische vraagstukken</li>
                                <li>Heel veel data: niet meer met de hand</li>
                                <li>Informatica: een middel, geen doel!</li>
                            </ul>
                        </section>
                        
                        <section>
                            <h3>Wat doet een bio Informaticus?</h3>
                        </section>
                    
                        <section>
                            <h3>Werkvelden?</h3>
                        </section>
                    
                        <section>
                            <h3>De vogelgriep of gewoon verkouden?</h3>
                            <img width="450em" height="300em" src="images/hanzeExperienceHAVO/niezen.png"/>
                        </section>
                        
                        <section>
                            <h3>Einde deel 1</h3>
                            <img width="500em" height="270em" src="images/hanzeExperienceHAVO/algemeen.png"/>
                            <img width="500em" height="270em" src="images/hanzeExperienceHAVO/wetenschap.png"/>
                        </section>
                        
                        <section>
                            <h3>Programmeren</h3>
                                Laby is een grafisch programmaatje waarmee we je kunnen 
                                laten ervaren hoe het is om zelf de computer opdrachten te geven. 
                                Je gaat via commando's een miertje door een doolhof sturen.
                                Na de pauze ga je op dezelfde manier de computer vertellen hoe 
                                je het DNA geanalyseerd wilt hebben.
                        </section>
                        
                        <section>
                            <img width="400em" height="450em" src="images/hanzeExperienceHAVO/FlowDiagram.png"/>
                        </section>
                    
                        <section>
                            <h3>Van gen naar eiwit</h3>
                            <img  width="310em" height="490em" src="images/hanzeExperienceHAVO/GenNaarEiwit.png"/>
                        </section>
                    
                        <section>
                            <h3>Aminozuren</h3>
                            <img  width="500em" height="450em" src="images/hanzeExperienceHAVO/aa.png"/>
                        </section>
                    
                        <section>
                            <h3>Stop codons</h3>
                            <h5>(ATG codons)</h5>
                            <ul>
                                <li>TAA</li>
                                <li>TAG</li>
                                <li>TGA</li>
                            </ul>
                        </section>
                    
                        <section>
                            <h3>Welke DNA sequentie is een gen?</h3>
                            <ul>
                                <li>ATGGCCGTTTATAAGA</li>
                                <li>AATGGGCCGTTTATAA</li>
                                <li>TTGGCCGTTTATAGAT</li>
                            </ul>
                        </section>
                    
                        <section>
                            <h3>Welke DNA sequentie is een gen?</h3>
                            <ul>
                                <li>ATG GCCGTTTA    TAA    GA</li>
                                geen passend in frame stop codon
                                <li>A    ATG    GGCCGTTTA    TAA</li>
                                zowel start als stopcodon aanwezig!
                                <li>TTGGCCGTTTA    TAG    AT</li>
                                alleen stop codon aanwezig
                            </ul>
                        </section>
                    
                        <section>
                            <h3>Genen</h3>
                            <h5>Hoeveel genen tel je in de volgende sequentie?</h5><br/>
                            CATGGATGTTTATTATGCCTTGACCTAATAC
                        </section>
                    
                        <section>
                            <h3>Frames</h3>
                            <br/>
                            DNA kent 3 frames per streng. Maar DNA bestaat ook uit twee strengen, 
                            dus heb je in totaal 6 frames! Wat is het gen in de volgende sequentie?
                            <br/><br/>
                            TTATAAACGGCCCATT
                        </section>
                    
                        <section>
                            <h3>Frames</h3>
                            
                                sequentie: TTATAAACGGCCCATT<br/><br/>
                                Geen start- of stopcodon, maar in de andere strengen wel 
                                (vergeet niet dat ze achterstevoren tegen elkaar liggen en A's 
                                gekoppeld zijn aan T's en G's aan C's)<br/><br/>
                                Origineel: TTATAAACGGCCCATT<br/>
                                Achterstevoren: TTACCCGGCAAATATT<br/>
                                Gekoppelde basen: AATGGGCCGTTTATAA<br/>
                        </section>
                    
                        <section>
                            <h3>Waar zit het gen in de sequentie?</h3>
                            ATTATAAACGGCCCATTAATGGGCCGTTTATAAATTATAAACGGC
                            CCATTAATGGGCCGTTTATAAATTATAAACGGCCCATTAATGGGC
                            CGTTTATAAATTATAAACGGCCCATTAATGGGCCGTTTATAAATT
                            ATAAACGGCCCATTAATGGGCCGTTTATAAATTATAAACGGCCCA
                            TTAATGGGCCGTTTATAAATTATAAACGGCCCATTAATGGGCCGT
                            TTATAAATTATAAACGGCCCATTAATGGGCCGTTTATAAATTATA
                            AACGGCCCATTAATGGGCCGTTTATAAATTATAAACGGCCCATTA
                            TAAATTATAAACGGCCCATTAATGGGCCGTTTATAAATTATAAAC
                            GGCCCATTAATGGGCCGTTTATAAATTATAAACGGCCCATTAATG
                            GGCCGTTTATAAATTATAAACGGCCCATTAATGGGCCGTTTATAA
                            ATTATAAACGGCCCATTAATGGGCCGTTTATAAATTATAAACGGC
                            CCATTAATGGGCCGTTTATAAATTATAAACGGCCCATTAATGGGC
                            CGTTTATAAATTATAAACGGCCCATTAATGGGCCGTTTATAAATT
                            ATAAACGGCCCATTAATGGGCCGTTTATAA
                        </section>
                    
                        <section>
                            <h3>Bestanden uitpakken & daarna pauze!</h3>
                            <h5>Het kopieren van de bestanden naar je desktop</h5>
                            <ul>
                                <li>Klik op places -> Desktop</li>
                                <li>Voer "Ctrl + L" uit</li>
                                <li>Plak "/share/home/rwedema/tmp/masterclasses/Meet_the_mummy" in de box</li>
                                <li>sleep de bestanden naar de desktop</li>
                                <li>Klik met de rechter muisknop op het bestand en klik op "extract here"</li>
                            </ul>
                        </section>
                    
                        <section>
                            <h3>Hoe identificeer je een eiwit?</h3><br/>
                            <ul>
                                <li>Open een internet browser</li>
                                <li>Ga naar: http://www.ncbi.nlm.nih.gov/blast/Blast.cgi</li>
                                <li>Klik op "protein blast"</li>
                                <li>Voer de sequentie die je uitgepakt hebt in.</li>
                                <li>Klik op de "blast" knop</li>
                            </ul>
                        </section>  
                        
                        <section>
                           <h3>Uitvoeren van Blast</h3>
                           <img width="750em" height="500em" src="images/hanzeExperienceHAVO/blast1.png"/>
                        </section>
                        
                        <section>
                           <h3>Uitvoeren van Blast</h3>
                           <img width="750em" height="500em" src="images/hanzeExperienceHAVO/blast2.png"/>
                        </section>
                        
                        <section>
                           <h3>Uitvoeren van Blast</h3>
                           <img width="750em" height="500em" src="images/hanzeExperienceHAVO/blast3.png"/>
                        </section>
                        
                        <section>
                           <h3>Uitvoeren van Blast</h3>
                           <img width="750em" height="500em" src="images/hanzeExperienceHAVO/blast4.png"/>
                        </section>
                    
                        <section>
                           <h3>Uitvoeren van Blast</h3>
                           <img width="750em" height="500em" src="images/hanzeExperienceHAVO/blast5.png"/>
                        </section>
                    
                        <section>
                           <h3>Uitvoeren van Blast</h3>
                           <img width="750em" height="500em" src="images/hanzeExperienceHAVO/blast6.png"/>
                        </section>
                        
                </section>
                 <section>
                        <section>
                                <h3>Hanze Xperience HAVO</h3>
                        </section>
                </section>
                
                <section>
                        <section>
                             <h3>Hanze Xperience MBO</h3>
                             <h5>genen</h5>
                        </section>
                        
                        <section>
                            <h3>Wat zijn genen?</h3>
                        </section>
                        
                        <section>
                            <img width="640em" height="620em" src="images/hanzeXperience_MBO/wetMBO.png"/>
                        </section>
                    
                        <section>
                            <img  width="375em" height="250em" src="images/hanzeExperienceHAVO/Chico.jpg"/>
                            <img  width="375em" height="250em" src="images/hanzeExperienceHAVO/kon.jpg"/>
                        </section>
                    
                        <section>
                            <h3>Genen</h3>
                            <img  width="300em" height="400em" src="images/hanzeXperience_MBO/mendel.png"/>
                            <ul>Genen zijn erfelijke eigenschappen die dominant,
                            recessief of intermediar overgebracht kunnen worden.</ul>
                        </section>
                    
                        <section>
                           <h3>Eiwit of DNA?</h3>
                           <img  width="300em" height="250em" src="images/hanzeExperienceHAVO/hemoglob.jpg"/>
                           <img  width="300em" height="250em" src="images/hanzeExperienceHAVO/dna.gif"/>
                           <ul><li>Een eiwit is een polymeer van 20 verschillende aminozuren.</li>
                               <li>DNA is een polymeer van 4 verschillende nucleotiden.</li>
                           </ul>
                        </section>
                    
                        <section>
                            <h3>Van gen naar eiwit</h3>
                            <img  width="375em" height="590em" src="images/hanzeExperienceHAVO/GenNaarEiwit.png"/>
                        </section>
                        
                        <section>
                            <h3>Structuur van DNA</h3>
                            <ul>Dubbelstrengs helix</ul>
                            <img  width="600em" height="375em" src="images/hanzeXperience_MBO/DNA.jpg"/>
                        </section>
                    
                        <section>
                            <h3>DNA beschadiging</h3>
                            <img  width="375em" height="400em" src="images/hanzeXperience_MBO/uv.png"/>
                        </section>
                        
                        <section>
                            <h3>Sequencing 1970</h3>
                                <h5>5'-ACTGACTG-3'</h5>
                                   <h5>||||||||</h5>
                                <h5>3'-TGACTGAC-5'</h5>
                        </section>
                    
                        <section>
                            <h3>Aminozuren</h3>
                            <img  width="530em" height="530em" src="images/hanzeExperienceHAVO/aa.png"/>
                        </section>
                    
                        <section>
                            <h3>Aminozuren</h3>
                            <h5>Welke aminozuren zijn de volgede codons?</h5>
                            <ul>AGG<br/>
                                CGT<br/>
                                TGC<br/>
                                TGA<br/>
                            </ul>
                        </section>  
                    
                        <section>
                            <h3>Aminozuren</h3>
                            <h5>Welke aminozuren zijn de volgede codons?</h5>
                            <ul>AGG = Arginine (Arg)<br/>
                                CGT = Arginine (Arg)<br/>
                                TGC = Cysteine (Cys)<br/>
                                TGA = Stop codon<br/>
                            </ul>
                        </section> 
                            
                        <section>
                            <h3>Stop codons</h3>
                            <h5>(ATG codons)</h5>
                            <ul>
                                <li>TAA</li>
                                <li>TAG</li>
                                <li>TGA</li>
                            </ul>
                        </section>
                        
                        <section>
                            <h3>Welke DNA sequentie is een gen?</h3>
                            <ul>
                                <li>ATGGCCGTTTATAAGA</li>
                                <li>AATGGGCCGTTTATAA</li>
                                <li>TTGGCCGTTTATAGAT</li>
                            </ul>
                        </section>
                    
                        <section>
                            <h3>Welke DNA sequentie is een gen?</h3>
                            <ul>
                                <li>ATG GCCGTTTA    TAA    GA</li>
                                geen passend in frame stop codon
                                <li>A    ATG    GGCCGTTTA    TAA</li>
                                zowel start als stopcodon aanwezig!
                                <li>TTGGCCGTTTA    TAG    AT</li>
                                alleen stop codon aanwezig
                            </ul>
                        </section>
                    
                        <section>
                            <h3>Genen</h3>
                            <h5>Hoeveel genen tel je in de volgende sequentie?</h5><br/>
                            CATGGATGTTTATTATGCCTTGACCTAATAC
                        </section>
                        
                        <section>
                            <h3>Frames</h3>
                            <br/>
                            DNA kent 3 frames per streng. Maar DNA bestaat ook uit twee strengen, 
                            dus heb je in totaal 6 frames! Wat is het gen in de volgende sequentie?
                            <br/><br/>
                            TTATAAACGGCCCATT
                        </section>
                    
                        <section>
                            <h3>Frames</h3>
                            
                                sequentie: TTATAAACGGCCCATT<br/><br/>
                                Geen start- of stopcodon, maar in de andere strengen wel 
                                (vergeet niet dat ze achterstevoren tegen elkaar liggen en A's 
                                gekoppeld zijn aan T's en G's aan C's)<br/><br/>
                                Origineel: TTATAAACGGCCCATT<br/>
                                Achterstevoren: TTACCCGGCAAATATT<br/>
                                Gekoppelde basen: AATGGGCCGTTTATAA<br/>
                        </section>
                        
                        <section>
                            <h3>Welk eiwit codeert het gen?</h3>
                            Voor welk eiwit codeert onderstaand gen en wat gebeurt er 
                            als de eerst C muteert (verandert) in een A?<br/><br/>
                            ATGTGCAGGCGTTGA
                        </section>
                    
                        <section>
                            <h3>Welk eiwit codeert het gen?</h3>
                            Voor welk eiwit codeert onderstaand gen en wat gebeurt er 
                            als de eerst C muteert (verandert) in een A?<br/><br/>
                            <ul>ATG TGC AGG CGT TGA<br/>
                                Met Cys Arg Arg -<br/><br/>
                                ATG TGA AGG CGT TGA<br/>
                                Met -</ul>
                            
                        </section>
                    
                        <section>
                            <h3>Waar zit het gen in de sequentie?</h3>
                            ATTATAAACGGCCCATTAATGGGCCGTTTATAAATTATAAACGGC
                            CCATTAATGGGCCGTTTATAAATTATAAACGGCCCATTAATGGGC
                            CGTTTATAAATTATAAACGGCCCATTAATGGGCCGTTTATAAATT
                            ATAAACGGCCCATTAATGGGCCGTTTATAAATTATAAACGGCCCA
                            TTAATGGGCCGTTTATAAATTATAAACGGCCCATTAATGGGCCGT
                            TTATAAATTATAAACGGCCCATTAATGGGCCGTTTATAAATTATA
                            AACGGCCCATTAATGGGCCGTTTATAAATTATAAACGGCCCATTA
                            TAAATTATAAACGGCCCATTAATGGGCCGTTTATAAATTATAAAC
                            GGCCCATTAATGGGCCGTTTATAAATTATAAACGGCCCATTAATG
                            GGCCGTTTATAAATTATAAACGGCCCATTAATGGGCCGTTTATAA
                            ATTATAAACGGCCCATTAATGGGCCGTTTATAAATTATAAACGGC
                            CCATTAATGGGCCGTTTATAAATTATAAACGGCCCATTAATGGGC
                            CGTTTATAAATTATAAACGGCCCATTAATGGGCCGTTTATAAATT
                            ATAAACGGCCCATTAATGGGCCGTTTATAA
                        </section>
                </section>
                <section>
                        <section>
                                <h3>Hanze Xperience MBO</h3>
                                <h5>Maken van een eigen website</h5>
                        </section>
                        
                        <section>
                            <h3>Doctype, head en body</h3>
                            Alle 3 de elementen zijn verplicht.
                                
                        </section>
                </section>
                <section>
                        <section>
                                <h3>Technasium</h3>
                                <h5>moord</h5>
                        </section>
                        
                        <section>
                            <h3>Wie is de dader?</h3><br/>
                            Er is een moord gepleegd in het laboratorium en het is aan jou
                            om uit te zoeken wie de dader is.
                            Klik op onderstaande button om je in te loggen en de opdracht te beginnen.<br/><br/>
                            <a href="html/technasiumWorkshop.jsp">Start opdracht</a>
                        </section>
                     
                </section>
            </div> 
        </div> 
        <script src="js/head.min.js"></script> 
        <script src="js/reveal.js"></script> 
        <script> Reveal.initialize({ 
                    center: true, 
                    controls: true, 
                    mouseWheel: true, 
                    transition: 'concave', 
                    dependencies:[ 
                        { 
                            src: 'js/zoom.js', 
                            async: true 
                        } 
                    ] 
                }); 
        </script> 
    </body> 
</html>
