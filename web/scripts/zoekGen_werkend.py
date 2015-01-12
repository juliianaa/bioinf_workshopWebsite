#!/usr/bin/python
from re import *
from os.path import *

dnaSequentie = ''
padNaarBestand = ''
startCodon = -1
stopCodon = 0

"""Hier wordt gevraag in welk bestand de DNA sequentie staat. Is wat je
ingevoerd hebt geen bestand, dan vraagt het programma je het opnieuw"""
def vraagInWelkBestandDeDNASequentieStaat():
    global padNaarBestand
    padNaarBestand = raw_input("In welk bestand staat de DNA-sequentie?")
    while(not isfile(padNaarBestand)):
        padNaarBestand = raw_input("Dat bestand bestaat niet.\nIn welk bestand staat de DNA-sequentie?")

"""Hier wordt de inhoud uit het bestand gelezen en worden hoofletters
naar kleine letters omgezet. Dit maakt het zoeken naar start- en
stopcodons later makkelijker."""
def leesDNASequentieUitBestand():
    global dnaSequentie
    bestand = open(padNaarBestand)
    dnaSequentie = bestand.read()
    dnaSequentie = dnaSequentie.lower()
    bestand.close()

"""Zoals je weet bestaat DNA alleen maar uit 4 basen die we weer kunnen
geven met a, c, t en g. Van een tekst als "konijn" valt geen DNA te maken"""
def controleerOfDeDNASequentieOokEchtAlleenUitDeGoedeLettersBestaat():
    global dnaSequentie
    x = match("^[actg]*$", dnaSequentie)
    if x is None:
        print("Sorry hoor, maar dit bestand is geen DNA\n.")
        exit()

"""Computers maken vaak verschil tussen hoofd- en kleine letters.
Omdat we in het begin al de DNA-sequentie naar kleine letters hebben omgezet,
hoeven we hier niet meer naar ATG te zoeken"""
def zoekHetVolgendeStartCodon():
    global startCodon
    startCodon = dnaSequentie.find("atg")
    if startCodon == -1:
        print("Geen startcodon gevonden")
        exit()

"""We zoeken het volgende stopcodon. Daarom beginnen we te zoeken bij het
huidige stopcodon + 1 (anders krijg je steeds het huidige stopcodon terug.
De functie find geeft de volgende positie
van de gezochte tekst terug. Vindt hij de gezochte tekst niet, dan geeft hij
-1 terug. Omdat -1 altijd kleiner is dan een ander gevonden stopcodon zouden
we nooit de kleinste waarde van de 3 verschillende stopcodons terug kunnen
geven, daarom maken we van -1 het grootst mogelijke getal"""
def zoekHetVolgendeStopCodon():
    global stopCodon
    stopCodon = stopCodon + 1
    global dnaSequentie
    volgendeTAA = dnaSequentie.find("taa", stopCodon)
    volgendeTAG = dnaSequentie.find("tag", stopCodon)
    volgendeTGA = dnaSequentie.find("tga", stopCodon)
    if volgendeTAA == -1:
        volgendeTAA = len(dnaSequentie) + 1
    if volgendeTAG == -1:
        volgendeTAG = len(dnaSequentie) + 1
    if volgendeTGA == -1:
        volgendeTGA = len(dnaSequentie) + 1

    volgendeStopCodon = min(volgendeTAA, volgendeTAG, volgendeTGA)
    if volgendeStopCodon == len(dnaSequentie) + 1:
        print("Geen stopcodon gevonden")
        exit()
    else:
        stopCodon = volgendeStopCodon


"""Haal het gen uit de DNA sequentie en print hem uit."""
def printGen():
    gen = dnaSequentie[startCodon:stopCodon]
    print(gen)

def zijnStartCodonEnStopCodonInFrame():
    if (stopCodon - startCodon)%3 == 0:
        return True
    else:
        return False

"""zet hier de functies in dezelfde volgorde als in je diagram"""
def main():
    vraagInWelkBestandDeDNASequentieStaat()
    leesDNASequentieUitBestand()
    controleerOfDeDNASequentieOokEchtAlleenUitDeGoedeLettersBestaat()
    zoekHetVolgendeStartCodon()
    zoekHetVolgendeStopCodon()
    while not zijnStartCodonEnStopCodonInFrame():
        zoekHetVolgendeStopCodon()
    printGen()


main()
exit()
