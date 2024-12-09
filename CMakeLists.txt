cmake_minimum_required(VERSION 3.10.3)

add_library(common STATIC
  common.c
  )

# Set RDMA-CORE
include_directories(/home/client/Desktop/rdma-core/build/include)
link_directories(/home/client/Desktop/rdma-core/build/lib)
link_libraries(rdmacm ibverbs common)

# Target to build the client program
add_executable(exp_client rdma_client.c)

# Target to build the server program
add_executable(exp_server rdma_server.c database.c)
