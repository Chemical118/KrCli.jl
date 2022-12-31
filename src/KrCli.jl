module KrCli

using Comonicon

"""
test for number of threads
"""
@cast function test()
    println(Threads.nthreads())
    return Threads.nthreads()
end

"""
sum two numbers.

# Args

- `a`: first number
- `b`: second number

# Options

- `--front, -f <value>`: front output.

# Flags

- `--minus, -m`: multiply minus.

"""
@cast function print_sum(a::Int, b::Int; front::String="Output : ", minus::Bool=false)
    t = (minus ? -1 : 1) * (a + b)
    println(front * string(t))
    return t
end

@main

end # module end