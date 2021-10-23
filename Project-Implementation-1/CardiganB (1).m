global key
%!!!! IMPORTANT. For each session, just run the following line once

%Initialize the keyboard key detection function in MATLAB
InitKeyboard();

% We choose to use a while loop the keep detecting input, and use switch
% statement to check which key is pressed
while 1 
    pause(0.1)
    switch key  
        case 'uparrow'
            % code to make the robot do something….
            brick.MoveMotor('BD', -200 ); 
            pause(5)
            brick.StopAllMotors();

        case 'downarrow'
          brick.MoveMotor ('BD' , 200) ; 
           pause(5)
            brick.StopAllMotors();
            
            
        case 'leftarrow'
         brick.MoveMotor ('D' , 200) ; 
           pause(10)
            brick.StopAllMotors();
       
        
        case 'rightarrow'
          brick.MoveMotor ('B' , 200) ; 
           pause(10)
            brick.StopAllMotors();
            
        % When 'q' is pressed, we jump out of the while loop and leave the
        % remot control mode
        case 'q'
            break;
    end
end

%Close the keyboard key detection function in MATLAB
CloseKeyboard();
DisconnectBrick(brick);