module DecisionMakingExample
function example1()
   age = 10
   if age > 0 && age < 10
      println("You are a kid.")
   elseif age >= 10 && age < 20
      println("You are a teenager.")
   elseif age >= 20 && age < 50
      println("You are an adult.")
   else
      println("You are an elderly.")
   end
end
end
