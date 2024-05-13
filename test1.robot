*** Test Cases ***
Valid Register And Login
	Open Register Page
	Input Username	 ${USERNAME}
	Input Password	 ${PASSWORD}
	Input Confirm Password	 ${PASSWORD}
	Click Register
	Open Login Page
	Input Username	 ${USERNAME}
	Input Password	 ${PASSWORD}
	Click Login

*** Keywords ***
Open Register Page
	Open	https://localhost:4200/register
	Wait Until Element Is Visible	//input[@id='login']

Open Login Page
	Open	https://localhost:4200/login
	Wait Until Element Is Visible	//input[@id='login']

Input Username
	Input Text	//input[@id='login']	${username}
Input Password
	Input Text	//input[@id='password']	${password}
Input Confirm Password
	Input Text	//input[@id='repassword']	${password}
