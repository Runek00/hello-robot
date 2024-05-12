*** Settings ***
Documentation	Hello Robot Framework!
Library		OperatingSystem


*** Variables ***
${MESSAGGE}		Hello World!

*** Test Cases ***
My Test
	[Documentation]	Example test.
	Log	${MESSAGGE}
	My Keyword	${CURDIR}

Another Test
	Should Be Equal	${MESSAGGE}	Hello World!

*** Keywords ***
My Keyword
	[Arguments]	${path}
	Directory Should Exist	${path}
