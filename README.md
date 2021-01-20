# Mastermind

#### The classic board game - now available directly through your command line!

![Mastermind board game](https://i.ebayimg.com/images/g/MNkAAOSwbwlW~qpJ/s-l1600.jpg)

## Objectives of this project
- Build a fully functional command line with Ruby
- Implement thorough unit testing using test driven development
- Apply core principles of object oriented design

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
- The Codemaker chooses a code of four colours. They are allowed to choose any colours as many times as they like, and in any order.
- The Codebreaker tries to crack the code, by their own four colour code as a prediction.
- To crack the code, the codebreaker must guess the correct colours AND the correct order.
- They have 12 turns to crack the code
- There are six possible colours to choose from:
  - Blue
  - Red
  - Yellow
  - Green
  - Orange
  - Black

*The objective of the game:*
- The Codemaker wins if the Codebreaker can't crack the code within 12 turns.
- The Codebreaker wins once they crack the code.

Checkout the [mastermind wikipedia page](https://en.wikipedia.org/wiki/Mastermind_(board_game)) for more info

### Requirements
- Ruby 3.0.0
- Rspec 3.10

### Testing

To run tests in terminal, from the root folder, run:
  - `rspec`

To see full documentation format, including all passing tests, run:
- `rspec -fd`
