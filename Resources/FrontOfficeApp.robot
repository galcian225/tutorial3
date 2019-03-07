*** Settings ***
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot



*** Variables ***


*** Keywords ***
Go to Landing Page
    Landing.Navigate To
    Landing.Verify Page Loaded

    #확인을 페이즈를 넣어줘서 로그파일에 키워드를 삽입시켜 확인한다

Go to "Team" Page
    TopNav.select "Team" Page
    Landing.Verify Page Loaded

    #확인을 페이즈를 넣어줘서 로그파일에 키워드를 삽입시켜 확인한다

Validate "Team" Page
    Team.Validate Page Contents

    #전체 적인 키워드를 적어 준다