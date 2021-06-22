*** Settings ***
Suite Setup             Open Testbrowser
Suite Teardown          Close All Browsers
Library                 SeleniumLibrary
Resource                _keywords.txt
Resource                _mysetup.txt
Library                 XvfbRobot

*** Variables ***
${TMP_PATH}             /tmp

*** Test Cases ***
Login
          Maximize Browser Window
          Go To          https://beta.upforjobs.com/admin
          Input Text          id=email          ${adminemail}
          Input Text          id=password          ${adminpassword}
          Submit Form
          Wait Until Element Is Visible          xpath=//body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/ul[1]/a[5]/div[1]/div[1]
          Click Element          xpath=//body/div[@id='root']/div[1]/div[1]/div[2]/div[1]/div[1]/div[2]/ul[1]/a[5]/div[1]/div[1]
          Wait Until Element Is Visible          xpath=//th[contains(text(),'Name')]
          #
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Sleep          1

Go to Profile settings \ page
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]
          Wait Until Element Is Visible          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//tbody/tr[1]/td[2]/button[1]/span[1]/*[1]
          Click Element          xpath=//body/div[@id='simple-menu']/div[3]/ul[1]/li[2]
          Wait Until Element Is Visible          xpath=//p[@id='alert-dialog-slide-description']
          Wait Until Element Is Visible          xpath=//span[contains(text(),'Agree')]
          Click Element          xpath=//span[contains(text(),'Agree')]