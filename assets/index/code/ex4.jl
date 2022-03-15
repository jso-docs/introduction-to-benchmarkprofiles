# This file was generated, do not modify it. # hide
using Plots

T = 10 * rand(25, 3)
performance_profile(PlotsBackend(), T, ["Solver 1", "Solver 2", "Solver 3"],
      lw=2, c=:black, linestyles=[:solid, :dash, :dot], xlabel="\\tau")
ylabel!("\\rho(\\tau)")