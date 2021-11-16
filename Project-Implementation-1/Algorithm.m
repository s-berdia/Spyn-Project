% ports 
% ultrasonic 3
% color 1
% left Motor D
% right Motor B
% touch 2
% Gyro 4


threshold = 50 ;
brick.SetColorMode(1, 2);

while 1 
    
    brick.MoveMotor('BD', -50);
    touch = brick.TouchPressed(2);
    color = brick.ColorCode(1);
    distance = brick.UltrasonicDist(3);
    
    if color == 2 || color == 3 % Blue or Green 
        run('manualmode');
         brick.MoveMotor('BD', -50);
         pause(5); 
    else if color == 5 % red 
            brick.StopMotor('BD', 'Brake');
            pause(4);
            brick.MoveMotor('BD', -50);
            pause (1);
            
         
    end 
    
    if distance > threshold 
        pause(1); 
        brick.StopMotor('BD', 'Brake'); 
        brick.MoveMotor('D', -30);
        pause(2) ;
        brick.StopMotor('D', 'Brake') ; 
        brick.MoveMotor('BD' , -50 ) ;
        pause (2) ;
    end 
    if touch 
        pause (1);
        brick.StopMotor('BD');
        dis = brick.UltrasonicDist(3);
        brick.MoveMotor('BD' , -50) ;
        pause(4); 
        brick.StopMotor('BD', 'Brake') ; 
        
    if distance < threshold 
        brick.MoveMotor('B' , -50 ) ;
        pause (3); 
        brick.StopMotor('B', 'Brake');
        brick.MoveMotor('BD' , -50) ;
        pause (2); 
    else 
        brick.moveMotor('D', -50) ; 
        pause (3);
        brick.StopMotor('D', 'Brake') ;
        brick.MoveMotor('BD', -50) ;
        pause(2); 
        
    end 
    end 
    end 
 end