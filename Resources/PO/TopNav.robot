*** Settings ***
Library  Selenium2Library


*** Variables ***
${TOP_NAV_TEAM_LINK} =  css=#bs-example-navbar-collapse-1 > ul > li:nth-child(5) > a


*** Keywords ***
Select "Team" Page
    #click link  Team
    click element  ${TOP_NAV_TEAM_LINK}
    Sleep  3s

    #네비게이션바 에 대한 변수,키워드 저장