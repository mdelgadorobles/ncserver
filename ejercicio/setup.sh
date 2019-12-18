# compile the caf program
gcc caf.c -o cap -fno-stack-protector -z execstack -no-pie

# launch server to connect to 
# connect with: nc 127.0.0.1 1337
sudo socat TCP-LISTEN:1337,nodelay,reuseaddr,fork EXEC:"stdbuf -i0 -o0 -e0 ./caf"