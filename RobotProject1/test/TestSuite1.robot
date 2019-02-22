*** settings ***
Library    SeleniumLibrary

Suite Setup    Log    I am inside Test Suite Setup  
Suite Teardown    Log    I am inside Test Suite Teardown
Test Setup    Log    I am inside Test Setup
Test Teardown    Log    I am inside Test Teardown              

Default Tags    Sanity

*** Test Cases ***
MyFirstTest
    [Tags]    Smoke
    log    Am in first test
    
MySecondTest
    log    Am in second test
    Set Tags    Regression1
    
    Remove Tags    Regression1
    
MyThirdTest
    log    Am in third test
    
# MyFirstSeleniumTest
    # open Browser    https://google.com    chrome
    # Set Browser Implicit Wait    5
    # Input Text    name=q    Test automation  
    # Press Keys    name=q    ENTER
    # #Click Button    name=btnK     
    # Sleep    3    
    # Close Browser
    # Log    Test completed
       
# LoginTest_s
    # Open Browser    https://orangehrm-demo-6x.orangehrmlive.com/    chrome
    # Set Browser Implicit Wait    5
    # Input Text    id=txtUsername    admin
    # Input Password    id=txtPassword    admin123
    # Click Button    id=btnLogin
    # Click Element    id=user-dropdown       
    # Click Element    id=logoutLink
    # Sleep    3
    # Close Browser
    # Log    Test completed
    
# LoginTest_s2
    # [Documentation]    This is a sample login test
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5
    # Input Text    id=txtUsername    @{CREDENTIAS}[0]
    # Input Password    id=txtPassword    &{LOGINDATA}[password]
    # Click Button    id=btnLogin
    # Click Element    id=user-dropdown       
    # Click Element    id=logoutLink
    # Sleep    3
    # Close Browser
    # Log    Test completed
    # Log    This test was performed by %{username} on %{os}
     
     
# LoginTest_s3
    # [Documentation]    This is a sample login test
    # Open Browser    ${URL}    chrome
    # Set Browser Implicit Wait    5
    # LOGIN_KW
    # Click Element    id=user-dropdown       
    # Click Element    id=logoutLink
    # Sleep    3
    # Close Browser
    # Log    Test completed
    # Log    This test was performed by %{username} on %{os}   
   
*** Variables ***
${URL}    https://orangehrm-demo-6x.orangehrmlive.com/
@{CREDENTIAS}    admin    admin123
&{LOGINDATA}    username=admin    password=admin123

*** Keywords ***
LOGIN_KW
    Input Text    id=txtUsername    @{CREDENTIAS}[0]
    Input Password    id=txtPassword    &{LOGINDATA}[password]
    Click Button    id=btnLogin
    



                    