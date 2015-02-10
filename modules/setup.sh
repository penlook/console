#!/bin/bash
# +--------------------------------------------------------------------------+
# | Penlook Project                                                          |
# +--------------------------------------------------------------------------+
# | Copyright (c) 2015 Penlook Development Team                              |
# +--------------------------------------------------------------------------+
# |                                                                          |
# | This program is free software: you can redistribute it and/or modify     |
# | it under the terms of the GNU Affero General Public License as           |
# | published by the Free Software Foundation, either version 3 of the       |
# | License, or (at your option) any later version.                          |
# |                                                                          |
# | This program is distributed in the hope that it will be useful, but	     |
# | WITHOUT ANY WARRANTY; without even the implied warranty of               |
# | MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the            |
# | GNU Affero General Public License for more details.                      |
# |                                                                          |
# | You should have received a copy of the GNU Affero General Public License |
# | along with this program.  If not, see <http://www.gnu.org/licenses/>.    |
# |                                                                          |
# +--------------------------------------------------------------------------+
# |   Authors: Loi Nguyen  <loint@penlook.com>                               |
# |            Viet Nguyen <vietna@penlook.com>                              |
# +--------------------------------------------------------------------------+

setup_main() {
	OS=$(tr -s ' \011' '\012' < /etc/issue | head -n 1)
	case "$OS" in
	"Ubuntu")
		setup_$OS
		;;
	"CentOS")
		setup_$OS
		;;
	*) echo "Current operation system is not supported !"
		;;
	esac
}

setup_Ubuntu() {
	echo 'not yet implemented !'
	exit
}

setup_CentOS() {
	cd /usr/local/src/penlook/console/setup/
	sudo python centos.py
}

# Option for authentication
setup_option() {
	echo
	echo "Usage: penlook setup <parameter>"
	echo "Parameters:"
    echo
    echo "  ubuntu  Ubuntu"
    echo "  centos  Centos"
    echo "  coreos  CoreOS"
    echo
}

