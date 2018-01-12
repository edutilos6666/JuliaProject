module DataFrameExample
using DataFrames
function example1()
    ids = [1, 2,3,4]
    names = ["foo", "bar", "bim", "pako"]
    ages = [10, 20 , 30, 40]
    wages = [100.0, 200.0, 300.0, 400.0]
    actives = [true, false, false, true]
    df = DataFrame(Id = ids, Name = names, Age = ages, Wage = wages, Active= actives)
    show(df)
    println()
    
end
end
