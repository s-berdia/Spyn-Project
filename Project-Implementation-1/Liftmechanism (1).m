% Build Bluetooth connection. 
% !!!! IMPORTANT. For each session, just run the following line once


% Set Color Sensor connected to Port 3 to Color Code Mode
brick.SetColorMode(3, 2);
  
brick.MoveMotor('BD', -100 );
while 5
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
    if col== 2
       brick.playTone(100, 800, 500);
 
    elseif col == 3
      brick.MoveMotor('BD', -50 );
        
    elseif col == 4
        brick.playTone(500, 1000, 500);
       brick.MoveMotor('C', 15 );
       pause(3);
       brick.StopMotor('BCD');
    elseif col == 5
        brick.StopMotor('BCD');        
      
    
    end
end

% Disconnect the Bluetooth connection. Instead of giving Bluetooth device name, 
give the connection object name. In this case: brick
