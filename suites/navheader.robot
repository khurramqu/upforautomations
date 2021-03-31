*** Settings ***
Suite Setup             Open Chrome Browsers
Suite Teardown          Close All Browsers
Resource                _keywords.txt
Resource                _mysetup.txt
Library                 SeleniumLibrary
Library                 String
Library                 Collections
Library                 XvfbRobot

*** Variables ***
${TMP_PATH}             /tmp

*** Test Cases ***
unregistered
          Maximize Browser Window
          Go To          ${TESTURL}
          Navheader Unregistered

business
          Login Business KW
          Navheader Business
          LogoutKW

freelancer
          Login Freelancer KW
          Navheader Freelancer
          LogoutKW