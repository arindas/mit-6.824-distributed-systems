module github.com/arindas/mit-6.824-distributed-systems/pkg/shardkv

go 1.17

replace 6.824/labrpc => ../labrpc

replace 6.824/labgob => ../labgob

replace 6.824/raft => ../raft

replace 6.824/models => ../models

replace 6.824/porcupine => ../porcupine

replace 6.824/shardctrler => ../shardctrler

require (
	6.824/labgob v0.0.0-00010101000000-000000000000
	6.824/labrpc v0.0.0-00010101000000-000000000000
	6.824/models v0.0.0-00010101000000-000000000000
	6.824/porcupine v0.0.0-00010101000000-000000000000
	6.824/raft v0.0.0-00010101000000-000000000000
	6.824/shardctrler v0.0.0-00010101000000-000000000000
)
