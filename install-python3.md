### Python3 dependencies

```bash
sudo apt-get install -y build-essential tk-dev libncurses5-dev libncursesw5-dev \
	 libreadline6-dev libdb5.3-dev libgdbm-dev libsqlite3-dev libssl-dev \
	libbz2-dev libexpat1-dev liblzma-dev zlib1g-dev libffi-dev
```


### Python3 install

```bash
sudo tar zxf Python-3.6.8.tgz
cd Python-3.6.8
./configure
make -j 4
make altinstall
```
