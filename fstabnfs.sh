#!/bin/bash

for i in .cpd .homes .drivers .lixeiras publico; echo "10.14.29.11:/srv/publico/$i  /srv/publico/$i ext4 defaults 0 0 " >> /etc/fstab ; 
for i in sindicancia supervisao educacao cimic; echo "10.14.29.11:/srv/eat/$i  /srv/eat/$i ext4 defaults 0 0 " >> /etc/fstab ; 
for i in  chefia_turno_I chefia_turno_II chefia_turno_III chefia_turno_IV conexao_familiar administrativo aevp almoxarifado canil dcsd financas inclusao infraestrutura saude
scanner wallpaper diretoria_geral diretoria_de_centro nucleo_de_pessoal portaria_turno_I portaria_turno_II portaria_turno_III portaria_turno_IV rol_de_visitas; 
echo "10.14.29.11:/srv/disciplina/$i  /srv/disciplina/$i ext4 defaults 0 0 " >> /etc/fstab ; 
chmod a+w /srv/publico/$i
chmod a+w /srv/eat/$i
chmod a+w /srv/disciplina/$i
done
