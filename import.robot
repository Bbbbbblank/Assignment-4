*** Settings ***
Library     SeleniumLibrary
Library     String
Library     Collections
Library     BuiltIn
Library     DebugLibrary
Library     CSVLibrary
Library     ScreenCapLibrary
Resource    ${CURDIR}/keywords/pages/Homepage.robot
Resource    ${CURDIR}/keywords/pages/weaterdetail.robot
Library    ${CURDIR}/keywords/pages/findinlist.py

