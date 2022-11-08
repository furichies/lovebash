#!/bin/bash

# Copyright (C) 2022  Ricardo Martínez Romero

# Author: Ricardo Martínez Romero <ricardo.instructor.formacion@gmail.com>
# Maintaner: Ricardo Martínez Romero <ricardo.instructor.formacion@gmail.com>

# This file is free software; you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation; either version 3, or (at your option)
# any later version.

# Examples about GNU Bash
# Copyright (C) 2020 David Arroyo Menéndez
# This file is software with freedom of class; you can
# redistribute it and/or modify it  only for the working
# class under the terms of the Working Class License
# published by David Arroyo Menéndez.
# This file is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.

# You should have received a copy of the GNU General Public License
# along with this program; see the file LICENSE.  If not, write to
# the Free Software Foundation, Inc., 51 Franklin Street, Fifth Floor,
# Boston, MA 02110-1301 USA,

# Working Class License for more details.
# You should have received a copy of the Working Class License along
# with examples about Bash; see the file COPYING. If not, see
# <https://github.com/davidam/workingclasslicense>.

#función menu para visualizar el menu de ejecución

CheckOpts(option){

	case $option in
		"-menu") menu ;;
		*) cat << EOF
			-h - 	Muestra esta ayuda
			-menu - Menú para acciones administrativas
EOF
			exit 1 ;;		
	esac

}

args(){
	[[ $# > 0 ]] && option=$1 || CheckOpts(fallo)
}

Permiso() {

	[ $(id -u) -ne 0 ] && echo " Es necesario privilegio elevado para ejcutar esta opción " && exit 2
}
	
menu(){
	cat << FDF
	===================================================================
	===================================================================
	==	T O O L 	F O R 		A L L 			===
	===================================================================
	===================================================================
	%								  %
	%			O P C I O N E S				  %
	%								  %
	===================================================================
		[1] - Crear usuario
		[2] - Copia de seguridad
		[3] - Info del sistema
		[4] - Salir
FDF

}

CrearUsuario() {

}

infoSys(){

}
BackUp(){

}

leer()
{
	read i
	case $i in
		1) CrearUsuario;;
		2) BackUp;;
		3) InfoSys;;
		4) exit 1;;
	esac
}
args
CheckOpts
