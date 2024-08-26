#!/bin/bash

for i in .cpd .homes .drivers .lixeiras publico; do mkdir -pv /srv/publico/$i; done 
for i in sindicancia supervisao educacao cimic; do mkdir -pv /srv/eat/$i; done
for i in chefia_turno_I chefia_turno_II chefia_turno_III chefia_turno_IV conexao_familiar administrativo aevp almoxarifado canil dcsd financas inclusao infraestrutura  saude ; do mkdir -pv /srv/disciplina/$i; done
for i in scanner  wallpaper diretoria_geral diretoria_de_centro nucleo_de_pessoal portaria_turno_I portaria_turno_II portaria_turno_III portaria_turno_IV rol_de_visitas; do mkdir -pv /srv/disciplina/$i; done
chmod a+w /srv/publico/*
chmod a+w /srv/eat/*
chmod a+w /srv/disciplina/*