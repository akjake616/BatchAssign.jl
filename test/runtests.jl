using BatchAssign
using Test

@testset "BatchAssign.jl" begin
    # Test simple assignment
    @testset "Simple Assignment" begin
        @all a b c = 5
        @test a == 5
        @test b == 5
        @test c == 5
    end

    # Test addition assignment
    @testset "Addition Assignment" begin
        a, b, c = 1, 2, 3
        @all a b c += 2
        @test a == 3
        @test b == 4
        @test c == 5
    end

    # Test subtraction assignment
    @testset "Subtraction Assignment" begin
        a, b, c = 5, 6, 7
        @all a b c -= 2
        @test a == 3
        @test b == 4
        @test c == 5
    end

    # Test multiplication assignment
    @testset "Multiplication Assignment" begin
        a, b, c = 1, 2, 3
        @all a b c *= 2
        @test a == 2
        @test b == 4
        @test c == 6
    end

    # Test division assignment
    @testset "Division Assignment" begin
        a, b, c = 10, 20, 30
        @all a b c /= 2
        @test a == 5
        @test b == 10
        @test c == 15
    end

    # Test modulo assignment
    @testset "Modulo Assignment" begin
        a, b, c = 10, 20, 30
        @all a b c %= 3
        @test a == 1
        @test b == 2
        @test c == 0
    end

    # Test simple matrix assignment
    @testset "Matrix Assignment" begin
        M = [1 2; 3 4]
        @all A B C = M
        @test A == M
        @test B == M
        @test C == M
    end

    # Test element-wise matrix addition
    @testset "Element-wise Matrix Addition" begin
        A = [1 2; 3 4]
        B = [1 2; 3 4]
        C = [1 2; 3 4]
        @all A B C .+= 1
        @test A == [2 3; 4 5]
        @test B == [2 3; 4 5]
        @test C == [2 3; 4 5]
    end

    # Test element-wise matrix multiplication
    @testset "Element-wise Matrix Multiplication" begin
        A = [1 2; 3 4]
        B = [1 2; 3 4]
        C = [1 2; 3 4]
        @all A B C .*= 2
        @test A == [2 4; 6 8]
        @test B == [2 4; 6 8]
        @test C == [2 4; 6 8]
    end
end