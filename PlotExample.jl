module PlotExample
using Winston
function example1()
    figure(width=500,height=500)
    p1 = plot(cumsum(rand(500)- 0.5), "r", cumsum(rand(500)- 0.5), "b", cumsum(rand(500) - 0.5), "g")
    display(p1)
    # println("ENTER to exit")
    # readline(STDIN)
    savefig("example1.png")
end
end
