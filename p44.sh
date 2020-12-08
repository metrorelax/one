BEGIN
[xmrig-proxy]
sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev uuid-dev libssl-dev -y
git clone https://github.com/xmrig/xmrig-proxy.git
mkdir xmrig-proxy/build
cd xmrig-proxy/build
cmake ..
make

[epic-xmrig-proxy]
sudo apt-get update
sudo apt-get install git build-essential cmake libuv1-dev uuid-dev libssl-dev -y
git clone https://gitlab.com/unitonebeat/epic-xmrig-proxy.git
git clone https://github.com/calccrypto/uint256_t.git
rm -r epic-xmrig-proxy/src/3rdparty/uint256_t
cp -r uint256_t epic-xmrig-proxy/src/3rdparty
mkdir epic-xmrig-proxy/build
cd epic-xmrig-proxy/build
cmake ..
make

END
