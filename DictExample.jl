module DictExample
function example1()
    d1 = Dict("foo"=> 10 , "bar"=>20, "bim"=>30)
    println("d1 = ", d1)
    println("<<d1 second print method>>")
    for k in keys(d1)
        println("$k => $(d1[k])")
    end
    println()
    println("<<d1 third print method>>")
    for (k,v) in enumerate(d1)
        println("$k => $v")
    end
    println()

end

function example2()
    d1 = Dict{AbstractString, Int}()
    d1["foo"] = 10
    d1["bar"] = 20
    d1["bim"] = 30
    for k in sort(collect(keys(d1)))
        println("$k => $(d1[k])")
    end
    println("keys = $(keys(d1))")
    println("values = $(values(d1))")

end
end
