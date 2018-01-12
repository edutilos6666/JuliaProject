module ArrayExample
function example1()
    numbers = [1,2,3,4,5]
    println("<<Printing numbers>>")
    for number in numbers
        print(number, ", ")
    end
    println()

    doubles = Float64[1.0, 2.0, 3.0, 4.0, 5.0]
    println("<<Printing doubles>>")
    for d in doubles
        print(d, ", ")
    end
    println()

    names = AbstractString["foo", "bar", "bim", "pako"]
    println("<<Printing names>>")
    for name in names
        print(name, ", ")
    end
    println()

    randNumbers = rand(10)
    println("<<Printing randNumbers>>")
    for number in randNumbers
        print(number, ", ")
    end
    println()
end


function example2()
    m1 = [[1 2 3] [4 5 6] [7 8 9]]
    # m1 = rand(3, 4)
    println("<<Printing m1>>")
    for i = 1:size(m1, 1)
        for j = 1:size(m1, 2)
            print(m1[i,j], ", ")
        end
        println()
    end
    println()
end
end
