module FunctionExample
function findMax(a::Int, b::Int)
   res::Int = 0
   if a > b
      res = a
   else
      res = b
   end
   return res
end

function findMin(a::Int, b::Int)
   res::Int = 0
   if a < b
      res = a
   else
      res = b
   end
   return res
end

function example1()
   a = 10 ; b = 3
   max = findMax(a, b)
   min = findMin(a, b)
   println("max = $max")
   println("min = $min")
end


end
