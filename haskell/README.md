## JSON for Haskell

### To build

```console
$ stack build
```

### To run

```console
$ stack exec haskell-json
```

Then go to [`http://localhost:9292`](http://localhost:9292).

### Comparisons on my laptop

#### Ruby (MRI)

With

```console
$ RACK_ENV=production rackup
```

```console
$ wrk -c 1000 http://localhost:9292
Running 10s test @ http://localhost:9292
  2 threads and 1000 connections
  Thread Stats   Avg      Stdev     Max   +/- Stdev
    Latency   159.56ms   74.74ms   1.15s    79.02%
    Req/Sec   311.83     63.07   460.00     69.00%
  6224 requests in 10.04s, 1.41MB read
  Socket errors: connect 751, read 157, write 64, timeout 0
Requests/sec:    619.91
Transfer/sec:    143.48KB
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
