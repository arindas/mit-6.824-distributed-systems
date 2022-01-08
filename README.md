# MIT 6.824 Distributed Systems
Labs, solutions and related materials from the [MIT 6.824 Distributed Systems](https://pdos.csail.mit.edu/6.824) course.

<p align="center">
    <img src="./assets/logo.png" alt="distributed-systems" width="300" />   
</p> 

<p align="center">
  <a href="https://github.com/arindas/mit-6.824-distributed-systems/actions/workflows/ci-tests.yml"><img src="https://github.com/arindas/mit-6.824-distributed-systems/actions/workflows/ci-tests.yml/badge.svg" alt="ci-tests status"></a>
  <a href="https://app.fossa.com/projects/git%2Bgithub.com%2Farindas%2Fmit-6.824-distributed-systems?ref=badge_shield" alt="FOSSA Status"><img src="https://app.fossa.com/api/projects/git%2Bgithub.com%2Farindas%2Fmit-6.824-distributed-systems.svg?type=shield"/></a> 
</p>

## Overview
From the official [website](https://pdos.csail.mit.edu/6.824):
>### What is 6.824 about?
>6.824 is a core 12-unit graduate subject with lectures, readings, programming labs, an optional project, a mid-term exam,
>and a final exam. It will present abstractions and implementation techniques for engineering distributed systems. Major
>topics include fault tolerance, replication, and consistency. Much of the class consists of studying and discussing case
>studies of distributed systems.

This repository was created to serve as an environment for working on the labs as well as hosting my solutions for them.
It's primary purpose is to serve as learning resource and a pedagogical tool. Each lab will be accompanied with a corresponding
specification and design document to outline the approach used to solve the tasks. Effort will be made to make the solutions
production grade, but at the same time, approachable for any Gopher.

The tests from the original source tree at [git://g.csail.mit.edu/6.824-golabs-2021](git://g.csail.mit.edu/6.824-golabs-2021)
have been preserved to a great extent to ensure the authenticity of the labs. The only changes to the tests are updated paths
for different artefacts due to the changes in the directory structure.

## Organization
The repository is organized as follows:
```
.
├── assets
│   └── logo.png
├── cmd
│   ├── diskvd
│   ├── lockservice
│   ├── mr
│   ├── pbservice
│   └── viewd
├── datasets
│   └── project-gutenberg
├── LICENSE
├── pkg
│   ├── kvraft
│   ├── labgob
│   ├── labrpc
│   ├── models
│   ├── mr
│   ├── porcupine
│   ├── raft
│   ├── shardctrler
│   └── shardkv
└── README.md
```

The core of each module is represented as a package under the `pkg/` subdirectories. Most of these packages are
accompanied by tests in the same directory. The user facing utlitiy command/program binaries are kept under `cmd/`.

## Labs Progress
Each completed checklist item is also a link to its spec and design document.

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
```shell
cd cmd/mr/scripts
bash test-mr.sh  # single trial
bash test-mr-many.sh $N_TRIALS  # multiple trials
```

## Building
Required binaries can be built by running `go build` in the respective `cmd/` subdirectories.

## Attribution
Materials presented in this repository are based on the materials from [MIT 6.824 Distributed Systems](https://pdos.csail.mit.edu/6.824) course, which are distributed under the Creative Commons License, as mentioned on their website. This repository falls under fair use of the Creative Commons License.

In case of any disputes, please contact: Arindam Das <dasarindam.mails@gmail.com>

## License
The solutions presented here are licensed under the MIT License. See [LICENSE](./LICENSE) for full license text.
