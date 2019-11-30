# logic-tables.jl
A tiny [Julia](https://julialang.org/) utility to create truth tables out of simple
propositional logic expressions, inspired by the Logic course.

Really just made to brag about Julia's handling of unicode characters in code as
operators.

## How to run it?

Install [newest version of Julia](https://julialang.org/downloads/) for your operating system.

Note that it is recommended to install it on MacOS using Homebrew: `brew cask install julia`, since it automatically enables the `julia` command. It might be required to open the Julia.app app in the Finder and allow it to be executed, since the developers are not confirmed by Apple.

To run, execute the `julia logic-tables.jl "expression (optional)" "output_name(optional)"` command in your command line.

Both expressuion and output_name are set as optional, since if no expression is provided, the utility will ask user for input and automatically save it in a file called "table". The table there is ready to use in your Latex file. 

## Expressions

The utility does not use mathematical symbols, but uses natural language instead.

List of expressions:

| Expression | Natural language (Julia syntax) |
|:----------:|:-------------------------------:|
| p ∧ q      | `p and q`                       |
| p ∨ q      | `p or q`                        |
| p → q      | `if p then q` / `p implies q`   |
| p ↔ q      | `p iff q`                       |
| ¬p         | `not p`                         |
