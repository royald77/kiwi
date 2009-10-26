#!/bin/bash
#================
# FILE          : config.sh
#----------------
# PROJECT       : OpenSuSE KIWI Image System
# COPYRIGHT     : (c) 2006 SUSE LINUX Products GmbH. All rights reserved
#               :
# AUTHOR        : Marcus Schaefer <ms@suse.de>
#               :
# BELONGS TO    : Operating System images
#               :
# DESCRIPTION   : configuration script for SUSE based
#               : operating systems
#               :
#               :
# STATUS        : BETA
#----------------
#======================================
# Functions...
#--------------------------------------
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile

#======================================
# Greeting...
#--------------------------------------
echo "Configure image: [$kiwi_iname]..."

#======================================
# SuSEconfig
#--------------------------------------
suseConfig

#======================================
# Keep UTF-8 locale
#--------------------------------------
baseStripLocales \
	en_US.utf8 de_DE.utf8 ru_RU.utf8 zh_CN.utf8 zh_TW.utf8 de ru zh_CN zh_TW
baseStripTranslations kiwi.mo

#======================================
# Umount kernel filesystems
#--------------------------------------
baseCleanMount

exit 0
