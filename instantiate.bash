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
        CONFERENCE='C++Now '
        COMMUNITY='C++ and Boost'
        COC_TEAM_FIRST_NAMES='Jon, Bryce and Jackie'
        COC_TEAM_FULL_NAMES='Jon Kalb (Conference Chair), Bryce Adelstein Lelbach (Program Chair) and Jackie Kay'
        COC_DECISION_MAKERS='Jon'
        COC_EMAIL='[security@cppnow.org](mailto:security@cppnow.org)'
        ;;
    cppcon)
        CONFERENCE='CppCon'
        COMMUNITY='C++'
        COC_TEAM_FIRST_NAMES='Jon, Herb, Bryce, Jackie and Titus'
        COC_TEAM_FULL_NAMES='Jon Kalb (Conference Chair), Herb Sutter (Standard C++ Foundation Advisor), Bryce Adelstein Lelbach (Program Chair), Jackie Kay and Titus Winters'
        COC_DECISION_MAKERS='Jon and Herb'
        COC_EMAIL='[security@cppcon.org](mailto:security@cppcon.org)'
        ;;
    *)
        echo "ERROR: Unknown event '${EVENT}'"
        echo "       Supported events are ${EVENTS}"
        exit 2
        ;;
esac

################################################################################

# Files to perform substition on.
TEMPLATE_FILES="README.md code_of_conduct.md attendee_procedure_for_incident_handling.md staff_procedure_for_incident_handling.md"

[ -f README.md ] && cp README.md README.md.backup
[ -f README_generic.md ] && cp README_generic.md README_generic.md.backup
git checkout -- README.md 
[ -f README_generic.md ] && git checkout -- README_generic.md
[ -f README_generic.md ] && mv README_generic.md README.md

sed -i.backup "
    s/%%CONFERENCE%%/${CONFERENCE}/g;
    s/%%COMMUNITY%%/${COMMUNITY}/g;
    s/%%COC_TEAM_FIRST_NAMES%%/${COC_TEAM_FIRST_NAMES}/g;
    s/%%COC_TEAM_FULL_NAMES%%/${COC_TEAM_FULL_NAMES}/g;
    s/%%COC_DECISION_MAKERS%%/${COC_DECISION_MAKERS}/g;
    s/%%COC_EMAIL%%/${COC_EMAIL}/g;
" ${TEMPLATE_FILES}

