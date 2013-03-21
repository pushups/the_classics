def gnuplot(commands)
	commands.join("\n")
	IO.popen("gnuplot", "w") { |io| io.puts commands }
end

commands = []
commands << "set terminal svg"
commands << "set output \"benchmark.svg\""
commands << "plot \"benchmarks.data\""

gnuplot(commands)