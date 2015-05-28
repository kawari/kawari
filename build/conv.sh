#!/bin/bash
#
# Kanji character code converter for KAWARI.
# needs ruby 1.6 or later.
#
# usage > conv.sh -c ( sjis | euc ) directory
#
# this is a genuine bash script.
# or must we consider 'mini-kawari' ? :)
#

if getopts "c:" op && [ "x"${!OPTIND} != "x" ] ; then
  if [ $OPTARG == "sjis" ]; then
    find ${!OPTIND} \( -name '*.h' -or -name '*.cpp' \) -print -exec ruby -p -i.bak -e 'require "kconv"; $_=$_.tosjis' {} \;
    find ${!OPTIND} -name '*.bak' -exec rm {} \;
  else
    find ${!OPTIND} \( -name '*.h' -or -name '*.cpp' \) -print -exec ruby -p -i.bak -e 'require "kconv"; $_=$_.toeuc' {} \;
    find ${!OPTIND} -name '*.bak' -exec rm {} \;
  fi;
else
  echo "usage > conv.sh -c ( sjis | euc ) directory";
fi
