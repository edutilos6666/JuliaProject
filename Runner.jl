include("./ArithmeticExample.jl")
import ArithmeticExample
ArithmeticExample.example1()
println("example2()")
ArithmeticExample.example2()
println("example3()")
ArithmeticExample.example3()



include("./DecisionMakingExample.jl")
import DecisionMakingExample
DecisionMakingExample.example1()

include("./FunctionExample.jl")
import FunctionExample
FunctionExample.example1()


include("./ArrayExample.jl")
import ArrayExample
ArrayExample.example1()
ArrayExample.example2()


include("./DictExample.jl")
import DictExample
DictExample.example1()
println("<<DictExample.example2()>>")
DictExample.example2()


include("./TypeExample.jl")
import TypeExample
p = TypeExample.Person(1, "foo", 10, 100.0, true)
println("p = ", TypeExample.toString(p))
TypeExample.example1()


include("./StructExample.jl")
import StructExample
StructExample.example2()


include("./OperatorsExample.jl")
import OperatorsExample
OperatorsExample.test_ArithmeticOps()
OperatorsExample.test_RelationalOps()
OperatorsExample.test_LogicalOps()
OperatorsExample.test_BitwiseOps()

include("./IOExample.jl")
import IOExample
IOExample.example1()
IOExample.example2()


include("./DataFrameExample.jl")
import DataFrameExample
DataFrameExample.example1()

include("./PlotExample.jl")
import PlotExample
PlotExample.example1()
