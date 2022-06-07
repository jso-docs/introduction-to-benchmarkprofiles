# This file was generated, do not modify it. # hide
using BenchmarkProfiles, Random, Plots

Random.seed!(0)

T = 10 * rand(25, 3)
performance_profile(PlotsBackend(), T, ["Solver 1", "Solver 2", "Solver 3"])
png(joinpath("__site/assets", "pp1")) # hide