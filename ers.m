card_scene1 = simpleGameEngine('retro_cards.png', 16, 16, 16, [207,198,184]);
%single deck, not a spread of cards
%2 players

%Rules: Players each have a deck of cards but they don't know what cards
%they have
%They take turns flipping cards onto the one prior until  a match( ie two
%cards of the same value, ex. 2-2) or sandwich(a card, another card, then a third
%card of the same value as the first, ex. 3-7-3)appears. These are
%oppotunities to slap. Who ever slaps first wins the pile and begins a new
%one
%If a face card is flipped then the next player has the following chances
%if Jacks is flipped = 1 chance to reveal another face card
%if Queens is flipped = 2 chances
%Kings = 3
%Ace = 4
%Match and Sandwich rules still apply
%Goal of the game it to win all the cards
