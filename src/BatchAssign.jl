module BatchAssign

export @all

macro all(args...)
    vars = args[1:end-1]
    last = args[end]
    ex = Expr(:block)
    for var in vars
        push!(ex.args, Expr(last.head, var, last.args[end]))
    end
    push!(ex.args, last)
    return esc(ex)
end

end
