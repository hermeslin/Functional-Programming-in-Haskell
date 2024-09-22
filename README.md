# Functional-Programming-in-Haskell
Exercises prictice within Haskell

## Course resource
[Functional Programming in Haskell](https://www.youtube.com/playlist?list=PLF1Z-APd9zK7usPMx3LGMZEHrECUGodd3) by [Graham Hutton](https://www.nottingham.ac.uk/computerscience/people/graham.hutton)

## Installation
Before build the Docker environment, copy `.env.example` and rename it to `.env`.

To set up the environment using Docker, run the following commands:
```
docker compose build
dokcer compose up -d
```

## VsCode Remote Container
This Dokcer image includes Haskell Language Server already. For an enhanced coding experience, install [Haskell extentions](https://marketplace.visualstudio.com/items?itemName=haskell.haskell) in the container.

## Write the exercise and test it
In the container's terminal
```shell
// Change the directory of the main.ts, and execute the ghci command
root@0e19734a29ac:/workspace/exercises/FP5-Types-and-Classes# ghci

// Load the main.ts in the ghci
ghci> :load main.hs

// Execute the function
ghci> pair 1 2

// If you make changes to main.hs, reload it
ghci> :load main.hs

// Run your updated functions
ghci> twice tail [1,2,3]
```