# relibc-docker-env

To compile relibc:
1. git clone <repo>
2. git submodule update --init --recursive
3. (this is the tricky part, env needs setting. use the following line)
 
env HOST_CC="gcc" CC_x86_64-unknown-linux-gnu="gcc" CC_x86_64-linux-gnu="gcc" HOST_AR="ar" AR_x86_64-unknown-linux-gnu="ar" AR_x86_64-linux-gnu="ar" make all

4. Profit
