#! /bin/sh

cd rustds
./RustDedicated -batchmode -autoupdate +server.hostname "mariri" +server.port 28482 +server.identity "mariri_server" +server.seed 3298104 -logFile "../output.txt" +server.worldsize 4000
cd ../
