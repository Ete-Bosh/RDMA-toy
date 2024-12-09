#!/bin/bash

#Activate rxe module
sudo modprobe rdma_rxe
sudo rdma link add rxe_eth type rxe netdev enp0s3
rdma link
