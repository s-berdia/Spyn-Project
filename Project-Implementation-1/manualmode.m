global key
InitKeyboard();
while 1
    pause(0.1);
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
        case 'l'  % pick up
        brick.MoveMotor('C', 15 );
       pause(3);
        case 'd'  % drop off
        brick.StopMotor('C' , -15);
end        
end 
    
CloseKeyboard();