module OperatorsExample
function test_ArithmeticOps()
    x::Int64 = 10
    y::Int = 3
    add = x + y
    sub = x - y
    mul = x * y
    div = x / y
    mod = x % y
    println("<<Arithmetic Operations>>")
    println("$x + $y = $add")
    println("$x - $y = $sub")
    println("$x * $y = $mul")
    println("$x / $y = $div")
    println("$x % $y = $mod")
    println()
end  # end test_ArithmeticOps

function test_RelationalOps()
    x::Int = 10
    y::Int = 3
    eq = x == y
    ne = x != y
    gt = x > y
    gte = x >= y
    lt = x < y
    lte = x <= y
    println("<<Relational Operators>>")
    println("$x == $y = $eq")
    println("$x != $y = $ne")
    println("$x < $y = $lt")
    println("$x <= $y = $lte")
    println("$x > $y = $gt")
    println("$x >= $y = $gte")
    println()
end # end test_RelationalOps


function test_LogicalOps()
    x::Bool = true
    y::Bool = false
    and = x && y
    or = x || y
    not_x = !x
    not_y = !y
    println("<<Logical Operators>>")
    println("$x && $y = $and")
    println("$x || $y = $or")
    println("!$x = $not_x")
    println("!$y = $not_y")
    println()
end # test_LogicalOps


function test_BitwiseOps()
    x::Int = 10
    y::Int = 23
    and  = x & y
    or = x | y
    xor = x $ y
    not_x = ~x
    not_y = ~y
    x_ls_2 = x << 2
    x_rs_2 = x >> 2
    println("<<Bitwise Operators>>")
    println("$x & $y = $and")
    println("$x | $y = $or")
    println("$x \$ $y = $xor")
    println("~$x = $not_x")
    println("~$y = $not_y")
    println("$x << 2 = $x_ls_2")
    println("$x >> 2 = $x_rs_2")
    println()
end
end
