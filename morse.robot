*** Settings ***
Documentation     Example of morse transmitter test
...
...               Change this example to use data driven style 
...               Test with different texts and speeds
Test Template     My test
Library           MorseDecoderLibrary.py
Library			  OperatingSystem
Library           String	  

*** Test Cases ***		Speed 			Text
low and short			20				Good day!
high and short			50				Good Night!
low and long			30				Tomorrow is better?
high and long			50				Today is a wonderful day!				


***Keywords***
My test 
	[Arguments]			${arg_speed}      ${arg_text}		
	Set Speed    		${arg_speed}
    Send text    		${arg_text}
	Speed should be     ${arg_speed}
	${text}   	 Replace String Using Regexp    ${arg_text}     [^a-zA-Z0-9 ]    X  
	${expected_text}    Convert to Upper Case   ${text} 
	Text should be    	${expected_text}