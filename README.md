# RDMA-toy

This is an RDMA example for two-sided operation SEND/RECEIVE and on-sided operation WRITE by Soft-RoCE.

Server: A simple database for client to query `value` by `key` and set `value` by key.

1.  Setup RDMA resources
2.  Wait for a client to connect
3.  Allocate and pin buffers
4.  Accept the incoming client connection
5.  Send information about database buffer to client.
6.  Wait for new messages and do the operation.
7.  Disconnect



Client: Use SEND/RECEIVE to set/query value by key, and use RDMA WRITE to set value directly.

1.  Setup RDMA resources
2.  Connect to server
3.  Receive database buffer information via send/recv exchange
4.  Set/Query value by send/recv, or set value by RDMA WRITE
5.  Disconnect 

Via two-sided operation can we see the operation in both server and client side. When perform a RDMA WRITE there is nothing to be printed since one-sided operation does not need CPU involvement of another side



Note that it is not recommended to write codes like that in `rdma_write`. First step is to make this toy be able to sing. I will upgrade it that can dance later.

## Prerequest

1. Set up 2 VMs as client and server and a NAT Network.
2. Build RDMA Core Userspace Libraries and Daemons ([rdma-core](https://github.com/linux-rdma/rdma-core/tree/master))
3. Clone this repository.

## How to run

1. Open `CMakeLists.txt` and change the `include_directories` and `link_directories` to the right path.

   ```
   include_directories(/your/rdma-core/location/build/include)
   link_directories(/your/rdma-core/location/build/lib)
   ```

2.  Open `setup.sh` and change `enp0s3` to your device name. You can use `ifconfig` to check that.

3.  Run `bash setup.sh`. You should see 

   ```
   ink rxe_eth/1 state ACTIVE physical_state LINK_UP netdev enp0s3
   ```

   It indicates that Soft-RoCE has started.

4. Run 

   ```
   bash build.sh
   cd build
   ```

   Server: Run `./toy_server`. Support `-p port_number`

   Client:  Run `./toy_client`. Support `-p port_number` and `-s server_address`

## Refs

* rdma-core. https://github.com/linux-rdma/rdma-core/tree/master
* rdma-exmaple. 
  * https://github.com/animeshtrivedi/rdma-example
  * https://github.com/haggaie/rdma-experiment
  * https://github.com/StarryVae/RDMA-tutorial
* `ibv_rc_pingpong` does not work.https://transactional.blog/rdma/soft-roce-requires-ipv6-link-local