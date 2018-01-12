module IOExample
function example1()
    filename = "file1.tmp"
    fh = open(filename, "w")
    println(fh, "id = 1")
    println(fh, "name = 'foo'")
    println(fh, "age = 10")
    println(fh, "wage = 100.0")
    println(fh, "active = true")
    close(fh)
    open(filename, "r") do fh
        for line in eachline(fh)
            println(line)
        end
    end
    println()
    fh = open(filename, "r")
    lines = readlines(fh)
    for line in lines
        println(line)
    end
    close(fh)
    println()
end # end example1



mutable struct Person
    id::Int64
    name::AbstractString
    age::Int64
    wage::Float64
    active::Bool
end

function str(p::Person)
    return @sprintf("%d,%s,%d,%.2f,%s", p.id, p.name, p.age, p.wage, p.active)
end


function convertStrToPerson(line::AbstractString)
    tokens = split(line, ",")
    # println(tokens)
    id::Int64 = parse(Int64, tokens[1])
    name::AbstractString = tokens[2]
    age::Int64 = parse(Int64, tokens[3])
    wage::Float64 = parse(Float64,tokens[4])
    active::Bool = parse(Bool,tokens[5])
    return Person(id, name, age, wage, active)
end
function example2()
    people = Person[
    Person(1, "foo", 10 , 100.0, true),
    Person(2, "bar", 20, 200.0, false),
    Person(3, "bim", 30, 300.0, true)
    ]
    filename = "people.tmp"
    fh = open(filename, "w")
    for person in people
        println(fh, str(person))
    end
    close(fh)

    open(filename, "r") do fh
        for line in eachline(fh)
            p = convertStrToPerson(line)
            println(str(p))
        end
    end
    println()
end # end example2

end
