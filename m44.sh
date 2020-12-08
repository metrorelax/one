BEGIN
[xmrig]
sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev -y
git clone https://github.com/xmrig/xmrig.git
cd xmrig
mkdir build
cd build
cmake .. -DWITH_TLS=OFF -DWITH_HTTP=OFF -DWITH_HWLOC=OFF
make

[epic-xmrig]
sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev -y
git clone https://gitlab.com/unitonebeat/epic-xmrig.git
git clone https://github.com/calccrypto/uint256_t.git
rm -r epic-xmrig/src/3rdparty/uint256_t
cp -r uint256_t epic-xmrig/src/3rdparty
cd epic-xmrig
mkdir build
cd build
cmake .. -DWITH_TLS=OFF -DWITH_HTTP=OFF -DWITH_HWLOC=OFF
make

END
