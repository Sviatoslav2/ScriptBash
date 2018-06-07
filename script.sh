#!/bin/bash 

DATE=$(date +%d-%m-%Y)

TIME=$(date +%S_%M_%H)

STR=1

if [[ $# == 2 ]]

    then

    num=$2

    else

    num=8

    fi

for(( a=0; a <= $num; a++ ));do

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

                        if [[ $FILENAME!= *.sh ]]
                        then
                        now="$(date +'%S%M%H%d%m%Y'+$num)"
                        convert $FILENAME $now.jpeg
                        fi

                    fi   

                if [[ $FILENAME == *.png ]]

                    then

                        

                        if [[ $FILENAME != *.sh ]]
                        then
                        now="$(date +'%S%M%H%d%m%Y'+$num)"
                        convert $FILENAME $now.jpeg
                        fi


                        

                    fi

                if [[ $FILENAME == *.gif ]]

                    then

                        

                        

                        if [[ $FILENAME != *.sh ]]
                        then
                        now="$(date +'%S%M%H%d%m%Y'+$num)"
                        convert $FILENAME $now.jpeg
                        fi


                    fi

                if [[ $FILENAME == *.bmp ]]

                    then

                        if [[ $FILENAME != *.sh ]]
                        then
                        now="$(date +'%S%M%H%d%m%Y'+$num)"
                        convert $FILENAME  $now.jpeg
                        fi


                    fi    

        fi

    done