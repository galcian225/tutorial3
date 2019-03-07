*** Settings ***
Documentation  Fuctional Testing on RobotFramework
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWeb.robot

#테스트 스위트에서 테스트 케이스를 두개로 나누어 테스트 함
Test Setup  Begin Web Test
Test Teardown  End Web Test

 # 테스트 시행 명령
 # robot -d results Tests/Front_office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  http://www.robotframeworktutorial.com/front-office


*** Test Cases ***
Should be able to access "Team" page
    [Documentation]  This is test 1
    [Tags]  test1
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    # 명시 해줌 어디로 갈지

"Team" page Should match requirements

    [Documentation]  This is test 2
    [Tags]  test2
    FrontOfficeApp.Go to Landing Page
    FrontOfficeApp.Go to "Team" Page
    FrontOfficeApp.Validate "Team" Page

    #전체적인 테스트 케이스를 적어준다

