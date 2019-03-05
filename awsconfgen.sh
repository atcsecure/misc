#!/usr/bin/env bash
# simple password generation
myrpcpass=$(date +%s | sha256sum | base64 | head -c 32 ; echo)
# this script expects the servicenodeprivkey to already exist in the conf file (via ansible)
echo "server=1" >> /root/.blocknetdx/blocknetdx.conf
echo "listen=1" >> /root/.blocknetdx/blocknetdx.conf
echo "daemon=1" >> /root/.blocknetdx/blocknetdx.conf
echo "maxconnections=250" >> /root/.blocknetdx/blocknetdx.conf
echo "rpcpassword=${myrpcpass}" >> /root/.blocknetdx/blocknetdx.conf
echo "rpcuser=blocknetdxrpc" >> /root/.blocknetdx/blocknetdx.conf
echo "rpcthreads=8" >> /root/.blocknetdx/blocknetdx.conf

