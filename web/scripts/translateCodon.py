#!/usr/bin/python

import re

def queryForDNAsequence():
    dnaSequence = raw_input("Geef s.v.p. de DNA-sequentie: ").lower()
    while(re.match("^atg([actg]{3})*(taa|tga|tag)$", dnaSequence) is None):
                if len(dnaSequence) == 0:
                        break
                dnaSequence = raw_input("Geen valide sequentie.\nGeef s.v.p. de DNA-sequentie: ").lower()
    return dnaSequence

def buildCodonTable():
        bases = ['t', 'c', 'a', 'g']
        codons = [a+b+c for a in bases for b in bases for c in bases]
        aminoAcids = "F F L L S S S S Y Y * * C C * W L L L L P P P P H H Q Q R R R R I I I M T T T T N N K K S S R R V V V V A A A A D D E E G G G G".split(' ')
        return dict(zip(codons, aminoAcids))


codonTable = buildCodonTable()
dnaSequence = queryForDNAsequence()
while len(dnaSequence) > 0:
        proteinSequence = ''
        for codonStart in range(0, len(dnaSequence), 3):
                codon = dnaSequence[codonStart:codonStart + 3]
                proteinSequence += codonTable[codon]
        print(proteinSequence[:-1] + "\n")
        dnaSequence = queryForDNAsequence()
