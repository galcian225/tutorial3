*** Settings ***
Library  Selenium2Library


*** Variables ***
${LANDING_NAVIGATION_ELEMENT} =  id=mainNav

*** Keywords ***
Navigate To
    go to  ${URL}

Verify Page Loaded
    Wait until page contains element  ${LANDING_NAVIGATION_ELEMENT}

    #테스트 시작 첫 페이지로서 네비게이션 까지 가는 변수,키워드 저장