#!/bin/bash 
DATE=$(date +%d-%m-%Y)
TIME=$(date +%S_%M_%H)
STR=1
if [[ $# == 2 ]]
    then
    NUMBER=$2
    else
    NUMBER=8
    fi
for(( a=0; a <= $NUMBER; a++ ));do
    let STR=$(( STR * 10))
    done
    
if [[ $# == 1 ]] || [[ $# == 2 ]]
    then
    echo "PATH==" $1
    cd $1
    fi    
    for FILENAME in `find . -type f`; do
    
        if [ -f "$FILENAME" ] 
            then
                if [[ $FILENAME == *.jpg ]] 
                    then
                        mv $FILENAME "$DATE-$TIME-$STR.jpg"
                    fi   
                if [[ $FILENAME == *.png ]]
                    then
                        
                        
                        mv $FILENAME "$DATE-$TIME-$STR.jpg"
                        
                    fi
                if [[ $FILENAME == *.gif ]]
                    then
                        
                        
                        mv $FILENAME "$DATE-$TIME-$STR.jpg"
                        
                    fi
                if [[ $FILENAME == *.bmp ]]
                    then
                        
                        #rm $FILENAME
                        mv $FILENAME "$DATE-$TIME-$STR.jpg"
                        #convert "$FILENAME" "${FILENAME%.bmp}.jpg" 
                    fi    
        fi
    done