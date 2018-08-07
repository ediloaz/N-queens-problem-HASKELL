# N-queens problem solved in Haskell

This program was created as part of an evaluation of a bachelor course in engineering. Resolves the N-queens problem that basicaly is is to place n queens on a n × n board such that no queen is attacking any other queen. So that no queen is attacked it is required that no queen be in the same row, neither in the same column, nor in the same diagonal.

For example, the following image solves a problem of 8 queens. Note that no queen is attacking others:

![Example of 8-queens problem](https://github.com/ediloaz/n-queens-problem-HASKELL/blob/master/settings/example.png)

## Input

The program only receive a parameter as input, the N. On windows you must open GHCI (consulting [prerequisites](https://github.com/ediloaz/n-queens-problem-HASKELL#prerequisites)) and on Linux you must open terminal and press *ghci*.

When GHCI is running you need write the following commands:
```
Prelude> :cd C:/codes/
Prelude> :load "haskell.hs"
Main> :run main
N:
```

In this point the user must define the parameter N. In the terminal on Linux it looks like this:

![Screenshot of an input](https://github.com/ediloaz/n-queens-problem-HASKELL/blob/master/settings/input.png)


## Output

Is shown from the terminal (or from GHCI on windows), and an example of 4 queens it looks like this:

![Screenshot of an output](https://github.com/ediloaz/n-queens-problem-HASKELL/blob/master/settings/output.png)

The approximate times of this program running (calculations and prints) on a conventional computer are close to those shown in the following table:

| N | miliseconds | 
| :---         |     :---:      | 
| `N=5`   | 292     | 
| `N=6`   | 356     | 
| `N=7`   | 417     | 
| `N=8`   | 819     | 
| `N=9`   | 3481     | 

In a smooth line chart:

![Screenshot of an output](https://github.com/ediloaz/n-queens-problem-HASKELL/blob/master/settings/graphic.png)


## Prerequisites

### Steps to install haskell on Linux
 1. Install haskell from terminal with the command: 
 ```
sudo apt-get install haskell-platform
```
 2. Install GHC (Glasgow Haskell Compiler) on [GHC for linux](https://www.haskell.org/ghc/)

### Steps to install haskell on Windows
 1. Install GHC (Glasgow Haskell Compiler) on [GHC for windows](https://www.haskell.org/ghc/) 


## Running

Is necessary Glasgow Haskell Compiler, is both an interpreter and native-code compiler that runs on most platforms. In [input](https://github.com/ediloaz/n-queens-problem-HASKELL#prerequisites) was showed how running.

## Built With

* [Sublime text](https://www.sublimetext.com/3)


## Authors

* **Edisson López** - *Main developer* - [ediloaz](https://github.com/ediloaz)

See also the list of [repositories](https://github.com/ediloaz?tab=repositories) who I participated/created.

