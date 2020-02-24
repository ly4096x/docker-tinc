# docker-tinc
Minimalist tinc in Docker

### Building
Build with
```
docker build -t tinc .
```

### Running
Run with
```
docker run --restart=unless-stopped --network=host --cap-add=NET_ADMIN --device=/dev/net/tun -d -v /etc/tinc:/etc/tinc -v /var/cache/tinc:/var/cache/tinc -v /etc/resolv.conf:/etc/resolv.conf:ro --name=tinc_<NETWORK_NAME_HERE> tinc <NETWORK_NAME_HERE>
```

### Sample `/etc/tinc/<NET_NAME>/tinc.conf`
```
Name = HOST_1_NAME
Interface = tun-Tinc
Port = 655

AddressFamily = any

GraphDumpFile = /var/cache/tinc/netgraph.txt

ConnectTo = HOST_2_NAME
ConnectTo = HOST_3_NAME
ConnectTo = HOST_4_NAME
```
