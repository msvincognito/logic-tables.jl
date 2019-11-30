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

To use the LaTeX table, insert the following in the headers:
 ```
 \usepackage{amstext} % for \text macro
 \usepackage{array}   % for \newcolumntype macr
 \newcolumntype{L}{>{$}l<{$}} % math-mode version of "l" column type
 ```

## Expressions

The following syntax is accepted:
 - not a, ¬a
 - a and b, a && b, a ∧ b
 - a or b, a || b, a ∨ b
 - if a then b, a implies b, a ->b, a → b
 - a iff b, a <-> b, a ↔ b

## Examples
 `julia logic-tables.jl "if (a and b) then (c implies not a)"`

  `julia logic-tables.jl "not (a -> b) or (b <-> a)" "output_table.tex"`
