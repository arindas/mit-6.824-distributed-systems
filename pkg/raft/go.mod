module github.com/arindas/mit-6.824-distributed-systems/pkg/raft

go 1.17

replace github.com/arindas/mit-6.824-distributed-systems/pkg/labgob => ../labgob

replace github.com/arindas/mit-6.824-distributed-systems/pkg/labrpc => ../labrpc

require (
	github.com/arindas/mit-6.824-distributed-systems/pkg/labgob v0.0.0-00010101000000-000000000000
	github.com/arindas/mit-6.824-distributed-systems/pkg/labrpc v0.0.0-00010101000000-000000000000
)
