#!/bin/sh
# file watcher that checks for a modified md file every 2 seconds

name=main
md=${name}.md
beamer=${name}_beamer.pdf
handout=${name}_handout.pdf

function run {
    echo regenerating beamer
    pandoc $md -t beamer -o $beamer
    echo regenerating handout
    pandoc $md -o $handout
}

run # run on first open

while true
do
    sleep 2
    if [ $md -nt $beamer ]; then
        run
    fi
done
