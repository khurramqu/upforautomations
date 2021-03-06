*** Settings ***
Suite Setup             Open Testbrowser
Suite Teardown          Close All Browsers
Library                 SeleniumLibrary
Library                 String
Resource                _keywords.txt
Resource                _mysetup.txt
Library                 XvfbRobot

*** Variables ***
${TMP_PATH}             /tmp

*** Test Cases ***
prelounch page login
          Maximize Browser Window
          Go To          ${BASEURL}
          ${random_name}          Generate Random String          10          [LETTERS]
          Input Text          name=name          ${random_name}
          ${random_email}          Generate Random String          8          [NUMBERS]
          Input Text          name=email          ${random_email}@mailinator.com
          Submit Form
          Wait Until Element Is Visible          class:ShareEmail_congratulationsContainer__2tuWi
          Random Login
          Random Login
          Random Login
          Random Login
          Random Login
          Random Login
          Random Login
          Random Login
