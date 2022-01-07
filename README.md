# MIT 6.824 Distributed Systems
Labs, solutions and related materials from the [MIT 6.824 Distributed Systems](https://pdos.csail.mit.edu/github.com/arindas/mit-6.824-distributed-systems/pkg/) course.

<p align="center">
    <img src="./assets/logo.jpg" alt="distributed-systems" width="300" />   
</p> 

From the official website:
>## What is 6.824 about?
>6.824 is a core 12-unit graduate subject with lectures, readings, programming labs, an optional project, a mid-term exam,
>and a final exam. It will present abstractions and implementation techniques for engineering distributed systems. Major
>topics include fault tolerance, replication, and consistency. Much of the class consists of studying and discussing case
>studies of distributed systems.

## Labs Progress
- [ ] Lab 1: MapReduce
- [ ] Lab 2: Raft Consensus Algorithm
  - [ ] Lab 2A: Raft Leader Election
  - [ ] Lab 2B: Raft Log Entries Append
  - [ ] Lab 2C: Raft state persistence
- [ ] Lab 3: Fault-tolerant Key/Value Service
  - [ ] Lab 3A: Key/value Service Without Log Compaction
  - [ ] Lab 3B: Key/value Service With Log Compaction
- [ ] Lab 4: Sharded Key/Value Service

## Testing
All of the labs from the original source tree has been migrated to go modules. Except for mapreduce, the tests for all
labs may be run as follows:

```shell
git clone https://github.com/arindas/mit-6.824-distributed-systems.git
cd mit-6.824-distributed-systems
cd pkg/${PACKAGE_TO_TEST}
go test
```

For the mapreduce lab, run the tests as follows:
```
cd cmd/mr/scripts
bash test-mr.sh  # single trial
bash test-mr-many.sh  # multiple trials
```

## Building
Required binaries can be built by running `go build` in the respective `cmd/` subdirectories.

## Attribution
Materials presented here are based on the materials from [MIT 6.824 Distributed Systems](https://pdos.csail.mit.edu/github.com/arindas/mit-6.824-distributed-systems/pkg/) course, which are distributed under the Creative Commons License, as listed on the website. This repository falls under fair use of the Creative Commons License.

In case of any disputes, please contact:

Arindam Das

dasarindam.mails@gmail.com

