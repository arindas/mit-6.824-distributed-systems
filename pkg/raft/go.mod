module github.com/arindas/mit-6.824-distributed-systems/pkg/raft

go 1.17

replace 6.824/labgob => ../labgob

replace 6.824/labrpc => ../labrpc

require (
	6.824/labgob v0.0.0-00010101000000-000000000000
	6.824/labrpc v0.0.0-00010101000000-000000000000
)
