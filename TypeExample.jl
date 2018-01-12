module TypeExample
type Person
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
function toString(p::Person)
    return @sprintf("Person(%d,%s,%d,%.2f,%s)", p.id, p.name, p.age, p.wage, p.active)
end


type Worker
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
function toString(p::Worker)
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
    println("p1 = ", toString(p1))
    println("p2 = ", toString(p2))
    println("p3 = ", toString(p3))
    println("p4 = ", toString(p4))
    println("p5 = ", toString(p5))
    println("p6 = ", toString(p6))
end # end example1

end
