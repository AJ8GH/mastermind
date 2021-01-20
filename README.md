# Mastermind

[![Maintainability badge](https://api.codeclimate.com/v1/badges/59ba167857b8f91cf7f8/maintainability)](https://codeclimate.com/github/AJ8GH/mastermind/maintainability)


## The classic board game - now available directly through your command line!

![Mastermind board game](https://i.ebayimg.com/images/g/MNkAAOSwbwlW~qpJ/s-l1600.jpg)

## Objectives of this project
- Build a fully functional command line with Ruby
- Implement thorough unit testing using test driven development
- Ensure the app is easy to maintain and change in the future, by applying core principles of object oriented design

## How to play

#### Clone the mastermind repository:

- SSH: `git@github.com:AJ8GH/mastermind.git`
- HTTPS: `https://github.com/AJ8GH/mastermind.git`

#### Navigate to the root folder of the repository:
- `cd mastermind`(your path will depend on which directory you clone the repository to)

#### Begin a new game by running the play_mastermind.rb file through the command line:
- `ruby play_mastermind.rb`

## Rules of the game
Mastermind is a 2 player game. One player will be designated as the Codemaker, the other as the Codebreaker.

- The game chooses a Codemaker and Codebreaker at random from the 2 players.
- The Codemaker chooses a code of four colours. They are allowed to choose any colours, including duplicates, and in any order.
- To crack the code, the codebreaker must predict the correct colours AND the correct order.
- The Codebreaker tries to crack the code by submitting their own four colour code as a prediction.
- They have 12 turns to crack the code.
- Each turn the Codebreaker is told how many matches their prediction has. The colour and the position must both be correct to count as a match.
- There are six possible colours to choose from:
  - Blue
  - Red
  - Yellow
  - Green
  - Orange
  - Black

*Objective of the game:*
- The Codemaker wins if the Codebreaker can't crack the code within 12 turns
- The Codebreaker wins once they crack the code

Checkout the [mastermind wikipedia page](https://en.wikipedia.org/wiki/Mastermind_(board_game)) for more info

### Requirements
- Ruby 3.0.0
- Rspec 3.10

### Testing

To run tests in terminal, from the root folder, run:
- `rspec`

To see full documentation format, including all passing tests, run:
- `rspec -fd`
