# This file was generated, do not modify it.

using BenchmarkProfiles, Random, Plots

Random.seed!(0)

T = 10 * rand(25, 3)
performance_profile(PlotsBackend(), T, ["Solver 1", "Solver 2", "Solver 3"])

T[2:20,1] .= Inf
performance_profile(PlotsBackend(), T, ["Solver 1", "Solver 2", "Solver 3"])

T[:,2] = 100T[:,3]
performance_profile(PlotsBackend(), T, ["Solver 1", "Solver 2", "Solver 3"])

using Plots

T = 10 * rand(25, 3)
performance_profile(PlotsBackend(), T, ["Solver 1", "Solver 2", "Solver 3"],
      lw=2, c=:black, linestyles=[:solid, :dash, :dot], xlabel="\\tau")
ylabel!("\\rho(\\tau)")

