module StructExample
struct Person
    id::Int64
    name::AbstractString
    age::Int32
    wage::Float64
    active::Bool
end

function setId(p::Person, id::Int64)
    p.id = id
end
function setName(p::Person, name::AbstractString)
    p.name = name
end
function setAge(p::Person, age::Int32)
    p.age = age
end
function setWage(p::Person, wage::Float64)
    p.wage = wage
end
function setActive(p::Person, active::Bool)
    p.active = active
end
function getId(p::Person)
    return p.id
end
function getName(p::Person)
    return p.name
end
function getAge(p::Person)
    return p.age
end
function isActive(p::Person)
    return p.active
end
function str(p::Person)
    return @sprintf("Person(%d,%s,%d,%.2f,%s)", p.id, p.name, p.age, p.wage, p.active)
end


struct Worker
    id::Int64
    name::AbstractString
    age::Int32
    wage::Float64
    active::Bool

    Worker() = new(0 , "default name", 0, 0.0, false)
    Worker(id::Int64) = new(id, "default name", 0, 0.0, false)
    Worker(id::Int64, name::AbstractString) = new(id, name, 0, 0.0, false)
    Worker(id::Int64, name::AbstractString, age::Int32) = new(id, name, age, 0.0, false)
    Worker(id::Int64, name::AbstractString, age::Int32, wage::Float64) = new(id, name, age, wage, false)
    Worker(id::Int64, name::AbstractString, age::Int32, wage::Float64, active::Bool) = new(id, name,age,wage,active)
end

function setId(p::Worker, id::Int64)
    p.id = id
end
function setName(p::Worker, name::AbstractString)
    p.name = name
end
function setAge(p::Worker, age::Int32)
    p.age = age
end
function setWage(p::Worker, wage::Float64)
    p.wage = wage
end
function setActive(p::Worker, active::Bool)
    p.active = active
end
function getId(p::Worker)
    return p.id
end
function getName(p::Worker)
    return p.name
end
function getAge(p::Worker)
    return p.age
end
function isActive(p::Worker)
    return p.active
end
function str(p::Worker)
    return @sprintf("Worker(%d,%s,%d,%.2f,%s)", p.id, p.name, p.age, p.wage, p.active)
end




function example1()
    p1 = Worker()
    p2 = Worker(1)
    p3 = Worker(1, "foo")
    p4 = Worker(1, "foo", Int32(10))
    p5 = Worker(1, "foo", Int32(10), 100.0)
    p6 = Worker(1, "foo", Int32(10), 100.0, true)
    println("<<all people>>")
    println("p1 = ", str(p1))
    println("p2 = ", str(p2))
    println("p3 = ", str(p3))
    println("p4 = ", str(p4))
    println("p5 = ", str(p5))
    println("p6 = ", str(p6))
end # end example1



struct Box
    width::Float64
    height::Float64
    depth::Float64
    Box() = new(0.0, 0.0, 0.0)
    Box(size::Float64) = new(size, size, size)
    # Box(width::Float64, height::Float64, depth::Float64) = new (width, height, depth)
    function Box(width::Float64, height::Float64, depth::Float64)
        return new(width, height, depth)
    end
end

function volume(b::Box)
    return b.width*b.height*b.depth
end
function gt(b1::Box, b2::Box)
    return volume(b1) > volume(b2)
end
function gte(b1::Box, b2::Box)
    return volume(b1) >= volume(b2)
end
function lt(b1::Box, b2::Box)
    return volume(b1) < volume(b2)
end
function lte(b1::Box, b2::Box)
    return volume(b1) <= volume(b2)
end
function str(b::Box)
    return @sprintf("Box(%.2f,%.2f,%.2f)", b.width, b.height, b.depth)
end



function example2()
    b1 = Box(10.0, 10.0, 10.0)
    b2 = Box(3.0, 3.0, 3.0)
    println("b1 = ", str(b1))
    println("b2 = ", str(b2))
    println("b1 < b2 = ", lt(b1, b2))
    println("b1 <= b2 = ", lte(b1, b2))
    println("b1 > b2 = ", gt(b1, b2))
    println("b1 >= b2 = ", gte(b1, b2))
end # end example2

end
