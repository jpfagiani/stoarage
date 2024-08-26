#!/bin/bash

hostnamectl set-hostname storage.cdpni.sap
apt install openssh-server xfsprogs -y
#apt install nfs-common nfs-kernel-server -y
#	systemctl start nfs-server
#	systemctl enable nfs-server                                                                                                                                                                                               	
	cp -v /root/storage/etc/* /etc/
	chattr +i /etc/resolv.conf
	systemctl restart networking sshd
	#mkfs -t xfs /dev/sdb1
	#	xfs-admin -L supervisao /dev/sdb1 
	mkfs -t ext4 /dev/sdb1
		tune2fs -L eat /dev/sdb1
	mkfs -t ext4 /dev/sdc1
		tune2fs -L disciplina /dev/sdc1
	mkfs -t ext4 /dev/sdd1
		tune2fs -L publico /dev/sdd1
	mkdir -pv /srv/eat /srv/disciplina /srv/publico
		echo LABEL=eat /srv/eat ext4 defaults 0 0 >> /etc/fstab
		echo LABEL=disciplina /srv/disciplina ext4 defaults 0 0 >> /etc/fstab
		echo LABEL=publico    /srv/publico    ext4 defaults 0 0 >> /etc/fstab
for i in .cpd .homes .drivers .lixeiras publico; do mkdir -pv /srv/publico/$i; done 
for i in sindicancia supervisao educacao cimic; do mkdir -pv /srv/eat/$i; done
for i in chefia_turno_I chefia_turno_II chefia_turno_III chefia_turno_IV conexao_familiar administrativo aevp almoxarifado canil dcsd financas inclusao infraestrutura saude; do mkdir -pv /srv/disciplina/$i; done
for i in scanner wallpaper diretoria_geral diretoria_de_centro nucleo_de_pessoal portaria_turno_I portaria_turno_II portaria_turno_III portaria_turno_IV rol_de_visitas; do mkdir -pv /srv/disciplina/$i; done
chmod 777 /srv/*




