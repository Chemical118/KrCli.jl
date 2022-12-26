using KrCli, Test

@test KrCli.test() == Threads.nthreads()