*** Settings ***
Library  Selenium2Library

*** Variables ***




*** Keywords ***

Begin Web Test
    open browser  about:black  ${BROWSER}
    #maximize browser window


End Web Test
    close all browsers

    #앱을 열고 닫는 기능, 테스트 시작시 첫구동

