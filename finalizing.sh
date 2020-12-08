BEGIN
cd product1
tar czvf kubernetes.tar.gz bash1 bash2
cd ~
cd product2
tar czvf snowbear.tar.gz hug1 hug2

pscp -P 22 -i C:\Users\Administrator\Downloads\key.ppk ubuntu@1.1.1.1:/home/ubuntu/kubernetes.tar.gz C:\Users\Administrator\Documents
pscp -P 22 -i C:\Users\Administrator\Downloads\key.ppk ubuntu@1.1.1.1:/home/ubuntu/snowbear.tar.gz C:\Users\Administrator\Documents

END
