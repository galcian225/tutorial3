*** Settings ***
Library  Selenium2Library



*** Variables ***
${TEAM_HEADER_LABEL} =  css=#team > div > div:nth-child(1) > div > h2


*** Keywords ***

Verify Page Loaded
    Wait until page contains element  ${TEAM_HEADER_LABEL}

Validate Page Contents
    #this fails in chrome but passes in Edge
    #element text should be  ${TEAM_HEADER_LABEL}  Our Amazing Team
    #크롬에서 uppercase 때문에 fail 처리 됨
    ${ElementText} =  get text  ${TEAM_HEADER_LABEL}
    Should be equal as strings  ${ElementText}  Our Amazing Team  ignore_case=true

    #element text should be  ${TEAM_HEADER_LABEL}  Our Amazing Team
    #${TEAM_HEADER_LABEL} 가 Our Amazing Team 인것을 명시해줘서 리포트에서
    #Our Amazing Team을 확인한 것 처럼 출력해줌.

    #팀 페이지의 변수와 키워드를 저장해준다.