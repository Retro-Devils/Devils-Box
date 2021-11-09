import os

if os.path.exists('/home/pi/PyScripts/DisableMusic'):
	os.rmdir('/home/pi/PyScripts/DisableMusic')
else: os.makedirs('/home/pi/PyScripts/DisableMusic')
