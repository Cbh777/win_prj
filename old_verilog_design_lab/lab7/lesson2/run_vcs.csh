#! /bin/bash
echo "################# start running VCS #####################"

vcs -R -full64 -fsdb -f flist.f  #it will report error about timescale
# vcs -R -full64 -fsdb -f flist.f -timescale=1ns/1ps  #no error anymore

echo "##################### finish VCS ########################"
