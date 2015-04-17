## JSON for Haskell

### To run

```console
$ cabal configure
$ cabal build
$ cabal run
```

Then go to [`http://localhost:9292`](http://localhost:9292).

### Comparisons on my laptop

#### Ruby (MRI)

```console
$ wrk -c 1000 http://localhost:9292
Running 10s test @ http://localhost:9292
  2 threads and 1000 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   204.85ms  110.45ms   1.79s    83.74%
    Req/Sec   242.38    138.88   525.00     58.50%
  4840 requests in 10.08s, 1.09MB read
  Socket errors: connect 751, read 98, write 4, timeout 0
Requests/sec:    480.14
Transfer/sec:    111.13KB
```

#### Rust

```console
$ wrk -c 1000 http://localhost:9292
Running 10s test @ http://localhost:9292
  2 threads and 1000 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   160.79us  186.40us  39.44ms   98.10%
    Req/Sec    13.71k     7.66k   25.79k    59.50%
  272819 requests in 10.01s, 49.17MB read
  Socket errors: connect 751, read 215, write 72, timeout 0
Requests/sec:  27247.13
Transfer/sec:      4.91MB
```

#### Haskell

```console
$ wrk -c 1000 http://localhost:9292
Running 10s test @ http://localhost:9292
  2 threads and 1000 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency     9.28ms    7.30ms 380.45ms   99.67%
    Req/Sec    13.76k     4.46k   22.34k    55.50%
  273682 requests in 10.02s, 49.85MB read
  Socket errors: connect 751, read 27, write 0, timeout 0
Requests/sec:  27309.61
Transfer/sec:      4.97MB
```
