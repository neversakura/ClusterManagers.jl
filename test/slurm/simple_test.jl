using Logging, Distributed

using ClusterManagers, Distributed
np=2
addprocs(SlurmManager(np), t="00:01:00")

hosts = []
pids = []
println("We are all connected and ready.")
for i in workers()
	host, pid = fetch(@spawnat i (gethostname(), getpid()))
	println(host, pid)
	push!(hosts, host)
	push!(pids, pid)
end

# The Slurm resource allocation is released when all the workers have
# exited
for i in workers()
	rmprocs(i)
end