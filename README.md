# logic-tables.jl
A tiny [Julia](https://julialang.org/) utility to create truth tables out of simple
propositional logic expressions, inspired by the Logic course.

Really just made to brag about Julia's handling of unicode characters in code as
operators.

## Requirements
You need to have [Julia](https://julialang.org/) installed on your machine.

## Usage
`julia logic-tables.jl expression(optional) output_file(optional)`

- *expression*: logical expression. If not written when calling the script the user will be prompted to write it. The following syntax is accepted:
  - not a, ¬a
  - a and b, a && b, a ∧ b
  - a or b, a || b, a ∨ b
  - if a then b, a implies b, a ->b, a → b
  - a iff b, a <->, a ↔ b
- *output_file*: path to file to save the output table (LaTeX). File will be overwritten or created if doesn't exist. If not defined will be saved in file "table"

To use the LaTeX table, insert the following in the headers:
```
\usepackage{amstext} % for \text macro
\usepackage{array}   % for \newcolumntype macr
\newcolumntype{L}{>{$}l<{$}} % math-mode version of "l" column type
```

And add the content of the output file inside a table:
```
\begin{table}[]
    \begin{tabular}{|L|L|L|L|L|L|L|}
        \hline
        %your table
        \hline
    \end{tabular}
\end{table}
```

## Examples
`julia logic-tables.jl "if (a and b) then (c implies not a)"`

`julia logic-tables.jl "not (a -> b) or (b <-> a)" "output_table.tex"`
