project(SMHasher)

cmake_minimum_required(VERSION 2.4)

set(CMAKE_BUILD_TYPE MAX)
set(CMAKE_CXX_FLAGS_O2 "-O2")
set(CMAKE_C_FLAGS_O2 "-O2")
set(CMAKE_CXX_FLAGS_O3 "-O3")
set(CMAKE_C_FLAGS_O3 "-O3")
set(CMAKE_CXX_FLAGS_643 "-O3 -m64")
set(CMAKE_C_FLAGS_643 "-O3 -m64")
set(CMAKE_CXX_FLAGS_642 "-O2 -m64")
set(CMAKE_C_FLAGS_642 "-O2 -m64")
set(CMAKE_CXX_FLAGS_NATIVE "-O3 -m64 -march=native")
set(CMAKE_C_FLAGS_NATIVE "-O3 -m64 -march=native")
set(CMAKE_CXX_FLAGS_SSE "-O3 -mmmx -msse -msse2 -msse3 -m3dnow")
set(CMAKE_C_FLAGS_SSE "-O3 -mmmx -msse -msse2 -msse3 -m3dnow")
set(CMAKE_CXX_FLAGS_MAX "-O3 -mmmx -msse -msse2 -msse3 -m3dnow -m64 -march=native")
set(CMAKE_C_FLAGS_MAX "-O3 -mmmx -msse -msse2 -msse3 -m3dnow -m64 -march=native")

add_library(
  SMHasherSupport
  AvalancheTest.cpp
  Bitslice.cpp
  Bitvec.cpp
  CityTest.cpp
  City.cpp
  crc.cpp
  DifferentialTest.cpp
  Hashes.cpp
  KeysetTest.cpp
  lookup3.cpp
  md5.cpp
  MurmurHash1.cpp
  MurmurHash2.cpp
  MurmurHash3.cpp
  Platform.cpp
  Random.cpp
  sha1.cpp
  SpeedTest.cpp
  Spooky.cpp
  SpookyTest.cpp
  Stats.cpp
  SuperFastHash.cpp
  Types.cpp
  PMurHash.c
  xxhash.c
)

add_executable(
  SMHasher
  main.cpp
)

target_link_libraries(
  SMHasher
  SMHasherSupport
)
