# \wedge is ∧ and \vee is ∨

¬(p::Bool) = !p
∧(p::Bool, q::Bool) = p && q
∨(p::Bool, q::Bool) = p || q
→(p::Bool, q::Bool) = (p ∧ q) || ¬p

operators = Set([:¬, :∧, :∨, :→])

is_operator(x) = x in operators

function dissect_expression(expression)
    argument_symbols = Set{Symbol}()
    for symbol = expression.args
        if typeof(symbol) == Symbol
            if !is_operator(symbol)
                push!(argument_symbols, symbol)
            end
        elseif typeof(symbol) == Expr
            argument_symbols = union!(argument_symbols, dissect_expression(symbol))
        end
    end
    return argument_symbols
end

function eval_statement(statement)
    parameters = sort(collect(dissect_expression(statement)))

    for param = parameters
        print("$(param)\t")
    end
    print("$(statement)")
    println()

    for i = 0:2^length(parameters) - 1
        digs = digits(i, base=2, pad=length(parameters))
        for j = 1:length(parameters)
            param = parameters[j]
            value = Bool(digs[j])
            eval(:($param = $value))
            print("$(value)\t")
        end
        print("$(eval(statement))")
        println()
    end
end

st = :(k ∨ (p ∧ q) → (z ∨ q))
eval_statement(st)

