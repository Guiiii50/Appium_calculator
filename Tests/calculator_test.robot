*** Settings ***
Library           AppiumLibrary


Resource      ../Resources/keywords.robot


*** Test Cases ***
Test Open Calculator
    [Documentation]    Ouvrir l'application calculatrice
    
    Given I Open Calculator
    When I wait for the calculator to open
    And I addition 9 + 1
    Then The result should be 10