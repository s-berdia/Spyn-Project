% Set Color Sensor connected to Port 3 to Color Code Mode
brick.SetColorMode(4, 2);
brick.MoveMotor('BD', 100 );
brick.StopMotor('BD'); 
while 1
%Get the color sensor reading from Port 3
col = brick.ColorCode(1);
% 0 No color (Unknown color) 
% 1 Black 
% 2 Blue 
% 3 Green 
% 4 Yellow 
% 5 Red 
% 6 White 
% 7 Brown
if col == 5
brick.StopMotor('BD');        
break
end
end
% Disconnect the Bluetooth connection. Instead of giving Bluetooth device name, give the connection object 

DisconnectBrick(brick);