ceph 101
=======

This is where to start learning ceph.

FROM   [ceph video URL]()

TOPICS
------

1. What Ceph Is
2. Ceph Installation Steps
3. Ceph History Highlights
4. Ceph Concepts
5. Ceph Diagrams
6. Ceph Exercises
7. Ceph Workflows

### 1 - What Ceph Is

Ceph is ....

[Inktank]() is the team of engineers who support and customize ceph.

    ceph

### 4 - Ceph Concepts
    - open source code benefits
    - file system concepts
      - local file systems
      - network file systems
      - file system struct
    - local storage:
      - boot local
      - data
      - logs
    - network storage:
      - pxeboot
      - data
      - logs
    - logical storage diagrams
    - logical storage data life cycle
    - physical storage diagrams
    - physical storage device life cycle
    - scale up (vertically)
    - scale out (horizontally)
    - disk
    - GB TB PB EB
    - volume
    - inode
    - block
    - node
    - path
    - read patterns
    - write patterns
    - read-write ratios
    - rate-determining-step
    - raid
    - striped
    - mirrored
    - single-point-of-failure
    - replication architectures
        - methods
        - problems
        - solutions
    - clustered architectures
        - methods
        - problems
        - solutions
    - storage size capacity
    - storage bandwidth capacity
    - size:bandwidth as data:process as noun:verb
    - types of scale
    - object storage
    - block storage
    - RESTful S3 and Swift API Object Store
    - posix filesystem
    - ethernet fabric
    - network-attached storage
    - rados: distributed object store subsystem
    - librados: app
    - radosgw: app
    - rbd: host/vm
    - cephfs client
    - FUSE
    - hash
    - ring
    - hash vs ring
    - s3 verbs
    - copy-on-write
    - snapshots
    - recursive statistical accounting
    - metadata aggregations
    - Lookup Tables
    - Hash Functions
    - CRUSH Algorithm
        - object name
        - hash into placement group: hash(object) % num pg
        - pool shard targeting: CRUSH(pg, cluster state, rule set)
    - data centers
    - storage pools
    - storage pool performance classing
    - storage chunk
    - replicas
      - static primary
      - nomadic primary
    - Redundancy
      - parity
      - controller replication: no
      - Clients
      - Peering
      - OSD Nodes: Manage data consistency
      - Monitor Nodes:  Produce OSD Map
      - Monitor Nodes:  Node Fail-Else-Change OSD Map Updates
    - RADOS Cluster: client access is via monitors AND direct to storage
    - librados api
    - Recovery
      - Parallelized Restores

### 5. Ceph Diagrams
    - Logical Models For Distributed Storage
      - Elements
      - Connectors
    - Physical Models For Distributed Storage
      - Elements
      - Connectors

License
-------
[MIT License](https://github.com/hanula/resume/blob/master/LICENSE)
