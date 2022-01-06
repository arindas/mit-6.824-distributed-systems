module github.com/arindas/mit-6.824-distributed-systems/pkg/shardkv

go 1.17

replace github.com/arindas/mit-6.824-distributed-systems/pkg/labrpc => ../labrpc

replace github.com/arindas/mit-6.824-distributed-systems/pkg/labgob => ../labgob

replace github.com/arindas/mit-6.824-distributed-systems/pkg/raft => ../raft

replace github.com/arindas/mit-6.824-distributed-systems/pkg/models => ../models

replace github.com/arindas/mit-6.824-distributed-systems/pkg/porcupine => ../porcupine

replace github.com/arindas/mit-6.824-distributed-systems/pkg/shardctrler => ../shardctrler

require (
	github.com/arindas/mit-6.824-distributed-systems/pkg/labgob v0.0.0-00010101000000-000000000000
	github.com/arindas/mit-6.824-distributed-systems/pkg/labrpc v0.0.0-00010101000000-000000000000
	github.com/arindas/mit-6.824-distributed-systems/pkg/models v0.0.0-00010101000000-000000000000
	github.com/arindas/mit-6.824-distributed-systems/pkg/porcupine v0.0.0-00010101000000-000000000000
	github.com/arindas/mit-6.824-distributed-systems/pkg/raft v0.0.0-00010101000000-000000000000
	github.com/arindas/mit-6.824-distributed-systems/pkg/shardctrler v0.0.0-00010101000000-000000000000
)
