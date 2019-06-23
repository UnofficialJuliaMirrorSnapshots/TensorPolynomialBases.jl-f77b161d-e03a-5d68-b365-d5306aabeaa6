module TensorPolynomialBases

using StaticArrays
using TensorValues
using Test

# TODO to be moved to tensorValues (begin)
#
import Base.length
length(::Type{<: MultiValue{S,T,N,L} where {S,T,N}}  ) where L = L

# (end)

export ScratchData
export TensorPolynomialBasis
export MonomialBasis
export test_polynomial_basis_without_gradient
export test_polynomial_basis
export gradient_type, value_type, point_type
export evaluate, gradient
export evaluate!, gradient!
import Base: length, ndims

include("Utils.jl")

include("Interfaces.jl")

include("MonomialBases.jl")

end # module
