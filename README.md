# Mastermind
[![Maintainability](https://api.codeclimate.com/v1/badges/59ba167857b8f91cf7f8/maintainability)](https://codeclimate.com/github/AJ8GH/mastermind/maintainability)

[![Build Status](https://travis-ci.com/AJ8GH/mastermind.svg?branch=master)](https://travis-ci.com/AJ8GH/mastermind)


## The classic board game - now available directly through your command line!

![Mastermind board game](https://i.ebayimg.com/images/g/MNkAAOSwbwlW~qpJ/s-l1600.jpg)

## Objectives of this project
- Build a fully functional command line game with Ruby
- Implement thorough unit testing using test driven development
- Ensure the app is easily maintainable by applying core principles of object oriented design

## How to play

#### Clone the mastermind repository:

- SSH: `git@github.com:AJ8GH/mastermind.git`
- HTTPS: `https://github.com/AJ8GH/mastermind.git`

#### Navigate to the root folder of the repository:
- `cd mastermind`

(precise path will depend on which directory you clone the repository to)

#### Begin a new game by running the play_mastermind.rb script through the command line:
- `ruby play_mastermind.rb`

## Rules of the game
Mastermind is a 2 player game. One player is the ***Codemaker***, the other is the ***Codebreaker***.

- The game chooses a codemaker and codebreaker at random from the 2 players.
- The codemaker ***sets a code*** by choosing any four colours from the following 6 (duplicates are allowed):
  - Blue
  - Red
  - Yellow
  - Green
  - Orange
  - Black
- The codebreaker attempts to crack the code by submitting their own four colour code as a prediction.
- They must choose all of the ***correct colours*** in the ***correct order*** to crack the code ***within 12 turns***.
- Each turn the codebreaker finds ***how many matches*** their prediction scored. The colour and the position ***must both be correct*** to count as a match.


###### Objective of the game:
- The codemaker wins if the codebreaker can't crack the code within 12 turns
- The codebreaker wins once they crack the code

Checkout the [mastermind wikipedia page](https://en.wikipedia.org/wiki/Mastermind_(board_game)) for more info

### Requirements
- Ruby 3.0.0
- Rspec 3.10

### Testing

To run tests in terminal, from the root folder, run:
- `rspec`

To see full documentation format, including all passing tests, run:
- `rspec -fd`
