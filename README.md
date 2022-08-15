# Robot-Framework-Data-driven-style

The test case file communicates with capture software of the PSoC board. The device under test is the 
software on the LPCXpresso board. It is a morse code transmitter software that converts text to morse code 
and transmits them at user specified speed. The morse transmitter accepts commands and text in both 
lower and upper case. Letters from A-Z and numbers 0-9 have a morse code and a space is “transmitted” as 
a pause between words. Characters that don’t have a defined symbol are converted to “X”. For example,
command “text hello, world!” will be received as “HELLOX WORLDX”. Test cases
verify that undefined characters are transmitted as specified above and that text containing multiple words 
are also received correctly.
The capture board runs morse code decoder software that receives and decodes morse codes and 
communicates with a test library written in Python.
The morse code transmitter sources are not of this author and so can't be shared. 
Same with the morse decoder sources.
You need to install pyserial package:
                pip install pyserial
You also need to edit the comport names to match the ports in your system.
If you get an error about non-existing keywords, it means that the MorseDecodeLibrary failed to initialize 
properly. That can happen if pyserial package is not installed or if the comport names don’t match the ports 
in your system.
