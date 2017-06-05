#!/usr/bin/python3
from random import randint
import argparse
import sys

parser = argparse.ArgumentParser()
parser.add_argument("-v", choices=['0', '1', '2', '3', '4','5'], help = "version of the problem")
parser.add_argument("-n", help = "number of problem files to be generated, default 1")

args = parser.parse_args()
n = 1
if (not args.v):
    print ("USAGE: python generador.py -v [0..5] (-n number_of_files) (-h help)")
    sys.exit()
if (args.n):
    n = int(args.n)

for j in range (0,n):
    probl = "(define (problem ricoricoexperimental) (:domain ricorico) (:objects"
    num = randint(1,100)
    for i in range(0,num):
        probl = probl + " p" + str(i)
    probl += " - primero"
    for i in range(0,num):
        probl = probl + " s" + str(i)
    probl += " - segundo"
    probl += " Lunes Martes Miercoles Jueves Viernes - dia"

    randomforv2 = randint(1,8)
    if (args.v == '2' or args.v == '3' or args.v == '4' or args.v == '5'):
        for i in range (0, randomforv2):
            probl = probl +  " t" + str(i)
        probl += " - tipo "

    probl += ") (:init "

    for i in range (0, int(num/4)):
        platinc1 = "p" + str(randint(0,num-1))
        platinc2 = "s" + str(randint(0,num-1))
        probl = probl + "(es-incompatible " + platinc1 + " " + platinc2 + ") "

    if (args.v == '2' or args.v == '3' or args.v == '4' or args.v == '5'):
        for i in range (0,num):
            probl = probl + "(es-tipo p" + str(i) + " t" + str(randint(0, randomforv2-1)) + ") "
            probl = probl + "(es-tipo s" + str(i) + " t" + str(randint(0, randomforv2-1)) + ") "
        probl = probl + " (dia-pegado Lunes Martes) (dia-pegado Martes Lunes) (dia-pegado Martes Miercoles) (dia-pegado Miercoles Martes) (dia-pegado Miercoles Jueves) (dia-pegado Jueves Miercoles) (dia-pegado Jueves Viernes) (dia-pegado Viernes Jueves) "

    if (args.v == '3' or args.v == '4' or args.v == '5'):
            if (randint(0, 4) == 1):
                probl = probl + "(plato-del-dia " + "p" + str(randint(0, num-1)) + " Lunes ) "
            if (randint(0, 4) == 1) :
                probl = probl + "(plato-del-dia " + "p" + str(randint(0, num-1)) + " Martes ) "
            if (randint(0, 4) == 1):
                probl = probl + "(plato-del-dia " + "p" + str(randint(0, num-1)) + " Miercoles ) "
            if (randint(0, 4) == 1) :
                probl = probl + "(plato-del-dia " + "p" + str(randint(0, num-1)) + " Jueves ) "
            if (randint(0, 4) == 1) :
                probl = probl + "(plato-del-dia " + "p" + str(randint(0, num-1)) + " Viernes ) "

    if (args.v == '4' or args.v == '5'):
        for i in range (0,num):
            probl = probl + "(= (calorias p" + str(i) + ") " + str(randint(500, 900)) + ") "
            probl = probl + "(= (calorias s" + str(i) + ") " + str(randint(500, 900)) + ") "

    if (args.v == '5'):
        for i in range(0,num):
            probl = probl + "(= (coste-plato p" + str(i) + ") " + str(randint(5, 20)) + ") "
            probl = probl + "(= (coste-plato s" + str(i) + ") " + str(randint(5, 20)) + ") "
        probl += "(= (coste-menu) 0)"

    probl += ") (:goal (forall (?c - dia) (dia-completo ?c)))"
    if (args.v == '5'):
        probl += "(:metric minimize (coste-menu))"
    probl += ")"

    f = open('prV' + str(args.v) + '_num' + str(j) + '.pddl', 'w')
    f.write(probl)
    f.close()
