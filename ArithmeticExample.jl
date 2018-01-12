module ArithmeticExample
# export example1
function example1()
   n1 = 10 ;  n2 = 3
   add = n1 + n2
   subtract = n1 - n2
   multiply = n1 * n2
   divide = n1 / n2
   modulo = n1 % n2
   println("$n1 + $n2 = $add")
   println("$n1 - $n2 = $subtract")
   println("$n1 * $n2 = $multiply")
   println("$n1 / $n2 = $divide")
   println("$n1 % $n2 = $modulo")
   println()
end

function example2()
   n1::Int = 10
   n2::Int = 3
   add::Int = n1 + n2
   sub::Int = n1 - n2
   mul::Int = n1 * n2
   div::Float64 = n1 / n2
   mod::Int = n1 % n2
   println("$n1 + $n2 = $add")
   println("$n1 - $n2 = $sub")
   println("$n1 * $n2 = $mul")
   println("$n1 / $n2 = $div")
   println("$n1 % $n2 = $mod")
end


function example3()
   a = 10
   b = 3
   @printf("%f + %f = %f\n", a , b , (a+b))
   @printf("%f - %f = %f\n", a, b , (a-b))
   @printf("%f * %f = %f\n", a, b , (a*b))
   @printf("%f / %f = %f\n", a, b , (a/b))
   @printf("%f %% %f = %f\n", a, b , (a%b))
end

end
