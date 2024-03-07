# Potential ENTITIES:

# => Player
# => Game
# => Question

#--------------------
# ENTITY ROLES:

  # PLAYER:
    # - Represents a singular player. Should hold methods for keeping track of their lives(?)
    # - Properties: "Name", "Lives"

  # GAME:
    # - Represents the game itself. Logic for "turns", as well as keeps track of winner/loser based on score.(?)
    # - Method containing the game loop
    # - Method keeping track of the current player's turn, probably called "current_player"
    # - Properties: current player, players,
    # - Actions: Swap turn, check game state (is the game over?)

  #QUESTION: 
    # - A class for containing individual questions that the game will give players.
    # - Stores logic for generating a question 
    # - Action: Generate question.