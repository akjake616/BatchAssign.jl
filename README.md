# BatchAssign.jl

[![Build Status](https://github.com/akjake616/BatchAssign.jl/actions/workflows/CI.yml/badge.svg)](https://github.com/akjake616/BatchAssign.jl/actions/workflows/CI.yml)

The `BatchAssign.jl` module provides a convenient way to perform batch assignments in Julia using the macro `@all`. By leveraging metaprogramming techniques in Julia, this macro can assign a single value to multiple variables in one line, making your code cleaner and more concise.

## Installation

To install the `BatchAssign` module, simply download it with the package manager:

```julia
using Pkg
Pkg.add("BatchAssign")
```

## Usage

First, include the module in your script:

```julia
using BatchAssign
```

Then, you can use the `@all` macro for batch assignments:

```julia
@all a b c = 1
```

This line will assign the value `1` to variables `a`, `b`, and `c` simultaneously, and is equivalent to the following:

```julia
a, b, c, = 1, 1, 1 # or, 
a = b = c = 1
```
It is noted that calling the following will assign disctinct random values for the variables:

```julia
@all a b c = rand()
```

<br>

The macro is particularly useful for batch assignment of array to several variables:

```julia
@all A B C = zeros(2, 3) # case A
```

which is ***NOT*** the same as the following:

```julia
A = B = C = zeros(2, 3) # case B
```

since changing the elements in one of the array in case B will affect the others (Julia arrays are assigned by reference).

<br>

The `@all` macro also supports compound assignments such as +=, -=, *=, and /= (and also the broadcasted ones). This allows you to update multiple variables simultaneously:

```julia
@all a b c += 1
```

For more examples, please refer to [`runtest.jl`](./test/runtests.jl) in the test folder.

## Benefits

- **Conciseness:** Reduce multiple lines of assignments to a single line.
- **Readability:** Enhance code readability by minimizing repetitive assignment lines.
- **Efficiency:** Simplify the process of initializing multiple variables to the same value.

Enjoy the simplicity of batch assignments with `@all`!
