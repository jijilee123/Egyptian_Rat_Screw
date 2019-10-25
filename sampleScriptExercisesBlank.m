clc
clear
close all
warning('off','all');

% NOTE THAT YOU MUST HAVE THE FOLLOWING DOWNLOADED:
%   simpleGameEngine.m
%   retro_cards.png      (retro_images.zip -> extracted)
%   retro_dice.png       (retro_images.zip -> extracted)

% YOU MAY ALSO WANT TO OPEN THE SDP PREP PRESENTATION AND USE AS A RESOURCE


%% SOME TIPS ARE PROVIDED HERE:

%To create a scene and display/draw that scene, you use the following:
    % card_scene1 = simpleGameEngine('retro_cards.png', 16, 16, 5, [207,198,184]);
    % drawScene(card_scene1,[21:33;34:46;47:59;60:72])

%To create backgrounds and foregrounds, you could do something like this:
    % card_scene2 = simpleGameEngine('retro_cards.png', 16, 16, 10, [0,200,0]);
    % bg = [1 2 3 4 5 6 7 8 9 10
    %      1 2 2 2 2 2 2 2 2 2];
    % fg = [1,  12:20
    %      11, 21:6:74];
    % drawScene(card_scene2,bg,fg)
    
%To get user inputs from the mouse and the keyboard, see the following:
    %[r,c,b] = getMouseInput(card_scene1)
    %k = getKeyboardInput(simple_dice_scene)


%% EXERCISE 1
% GOAL: Use card_scene1 to display the backs of all cards in a deck, then let the user flip 5

%First, show what cards are available (fronts), pause, then flip them over 
%so the backs are displayed. To do this, write code for the following:
    
    %Create a matrix containing the values for each card, (retro_cards.png icons 21-72) 
    Cards = [21:33;34:46;47:59;60:72];
    
    %Create a matrix to display from (use simpleGameEngine to create a scene)
    card_scene1 = simpleGameEngine('retro_cards.png', 16, 16, 5, [207,198,184]);

    %Use drawScene to display all the card fronts
    drawScene(card_scene1, Cards)
    
    %Create a matrix of the same size as "Cards" full of just one value for card backs (pick 1 from retro_cards.png icons 3-11)
    Backs = ones(4,13)*5;
    
    %Pause for 2 seconds, then use drawScene to display only card backs
    pause(2);
    drawScene(card_scene1, Backs)
    

%Now to finish the exercise, allow the user to flip 5 cards with the mouse. 
%To do this, write code for the following:      

     %Set up a loop so the user can only flip 5 cards
     
         for i = 1:5
         
         %Allow the user to select a card (get a mouse input)
         [r,c] = getMouseInput(card_scene1);
      
         %Change the clicked sprite (card back) to the card front
         Backs(r,c) = Cards(r,c);
         
         %re-draw the scene to show the flipped card
         drawScene(card_scene1, Backs)
         end


     
%% EXERCISE 2
%GOAL: Roll 5 dice and allow the user to select which to re-roll

simpleDiceScene = simpleGameEngine('retro_simple_dice.png', 16, 16, 10, [0,198,0]);
%Initialize an array to hold rolls and a keyboard input. NOTE: checking 
%inputs from the getKeyboardInput function can throw errors if the input is 
%not initialized to a short string before beginning


k = '6';
rolls = randi(6,1,5);
 
%Roll 5 six-sided dice by coding the following:
%Set a loop

    %fill the rolls array to random numbers 1-6
    


%Draw the rolled dice (set up dice scene and draw the scene)

drawScene(simpleDiceScene, rolls)

%Allow the user to dismiss any die with keys 1-5 by coding the following.
%Note: getKeyboardInput returns 'escape' for the esc key and 'return' for
%enter keys.  Either could be a good choice for ending the loop

while ~isequal(k,'return') && ~isequal(k,'escape')                
    
    %Get a keyboard input from the scene
    
    
    %if the input is '1' - '5', set the value of that die to 10 (empty sprite)
    
        %set the value of that die to 10 (empty sprite)
        
    
   
    %display the dice, minus the missing one
    
    
end
                         
%Re-roll only the removed dice by coding the following:
%Set a loop

    %check whether each die was selected
    
         
        %re-roll if it was
        
     

    %Display the new roll
    
    
    
 %% EXERCISE 3
%GOAL: Use simpleGameEngine and retro_cards.png to create a memory game

%Generate matrix of card fronts and their values
Cards = [21:25; 26:30];
Cards = repelem(Cards,2,1);

%Randomize the card order with randperm
shuffle = randperm(20);                    %create a 1-D array for card order
for r=1:4                                  %using nested loops,
    for c=1:5                              %change the order of the card-front matrix
        Cards(r,c)= mod(shuffle((r-1)*5+c),10)+21; %the first card front is sprite 21
    end
end

%draw the scene and display the scene (cards that are available)



%Generate a matrix for the card backs, pause for 2 seconds, then flip the 
%cards over. This was done in Exercise 1.




%Set a way to store a value, a row, and a column for 2 cards


%Create a matrix of true/false or 0/1 as flags for correctly guessed cards


%Initialize game by setting a flag for both completion AND time limit



%set up a timer (tic)



%Set a main game loop (until game is done or time limit is reached)


    %Allow user to pick two cards by coding the following:
    %set a loop
    
        
        %Allow the user to select a card (get a mouse input)
        

        %Check that input isn't already guessed. If it has been, wait for another mouse input
        %if CorrectGuess(row,column) == 1
            
            %do nothing, just wait
        %else
            %change the selected card to diplay its front
            
            
            %record the card's value and position
            
            
            
            
            %set the first card as guessed
            
            
            %display the new card
            
            
       
    

    %Compare the cards. If pairs, leave displayed. If not, flip back over.
    %if it is a pair...
    
        %set the second card as guessed and move on
        
        
        %set up pair counter
        
        
    %if it is not a pair...
        %clear the guessed flag from both guesses
        
        
        
        %set both cards to display back
        
        
       
        %pause briefly to let the users see the second card
        
        
        %display the cards with backs returned
        
        
    
    
    %check the time
    


%end the game: close the window and say so-long!
close all;
fprintf('Thanks for playing!');