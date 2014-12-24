hash=$1
optimization=$2

cd ../build && cmake -DCMAKE_BUILD_TYPE=$optimization .. && make && ./SMHasher xxh32 >> ../results/$hash-$optimization.txt
