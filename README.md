# MIT 6.824 Distributed Systems
Labs, solutions and related materials from the [MIT 6.824 Distributed Systems](https://pdos.csail.mit.edu/github.com/arindas/mit-6.824-distributed-systems/pkg/) course.

<p align="center">
    <img src="./assets/logo.png" alt="distributed-systems" width="300" />   
</p> 

<p align="center">
  <a href="https://github.com/arindas/mit-6.824-distributed-systems/actions/workflows/ci-tests.yml"><img src="https://github.com/arindas/mit-6.824-distributed-systems/actions/workflows/ci-tests.yml/badge.svg" alt="ci-tests status"></a>
</p>

From the official website:
>## What is 6.824 about?
>6.824 is a core 12-unit graduate subject with lectures, readings, programming labs, an optional project, a mid-term exam,
>and a final exam. It will present abstractions and implementation techniques for engineering distributed systems. Major
>topics include fault tolerance, replication, and consistency. Much of the class consists of studying and discussing case
>studies of distributed systems.

*All solutions presented here are my own and are distributed under the MIT License. See below for further details.*

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

## Self study
If you wish to work on the labs on your own, checkout from the tag v0.1.0 into a new branch.
```shell
git checkout v0.1.0
git checkout -b ${branch}
```

In order to use github actions to check your labs, add your branch to the test workflow:
```yml
--- a/.github/workflows/ci-tests.yml
+++ b/.github/workflows/ci-tests.yml
@@ -4,12 +4,14 @@ on:
   push:
     branches:
       - main
+      - ${branch}
     paths:
       - cmd/**
       - pkg/**
   pull_request:
     branches:
       - main
+      - ${branch}
     paths:
       - cmd/**
       - pkg/**
```

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

