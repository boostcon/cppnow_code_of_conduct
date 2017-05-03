################################################################################
# IF YOU ARE NOT NAMED BRYCE YOU PROBABLY DON'T WANT TO RUN THIS SCRIPT.
################################################################################

#! /bin/bash
################################################################################
# Copyright (c) 2017 Bryce Adelstein Lelbach aka wash <brycelelbach@gmail.com>
#
# Distributed under the Creative Commons Attribution 3.0 Unported License. 
# (See https://creativecommons.org/licenses/by/3.0).
################################################################################

# Supported events.
EVENTS="cppnow or cppcon"

################################################################################

if [ "${#}" -lt 1 ]; then
    echo "Usage: `basename ${0}` <event>"
    echo "       where <event> is ${EVENTS}" 
    exit 1
fi

EVENT=${1}

case ${EVENT} in
    cppnow)
        ;;
    cppcon)
        ;;
    *)
        echo "ERROR: Unknown event '${EVENT}'"
        echo "       Supported events are ${EVENTS}"
        exit 2
        ;;
esac

################################################################################

git checkout ${EVENT}
git reset --hard HEAD~
git rebase master
./instantiate.bash ${EVENT}
git commit -a -m "Instantiate ${EVENT} variant."
git push --force origin-${EVENT} ${EVENT}:master && git push --force origin ${EVENT}

