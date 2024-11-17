# Setting up the tool chain on Ubuntu/WSL

Hello, welcome to COD lab! Please follow the instructions below. 
In case of mistakes, reach out to [alfadelta10010](https://wa.me/919967058974)
### Tool chains
- [RISC-V GCC](inst_Ubuntu-WSL.md#RISC-V-GCC)
- [Spike](inst_Ubuntu-WSL.md#Spike)
- [RISC-V Proxy Kernel](inst_Ubuntu-WSL.md#Proxy-kernel)
- [RIPES](inst_Ubuntu-WSL.md#RIPES)
- [GitHub-CLI](inst_Ubuntu-WSL.md#setting-up-github)

### Prerequisites
- For Windows users:
	- Install Windows Subsystem for Linux - Ubuntu by opening Powershell and running the following command:
```bash
wsl --update
wsl --shutdown
wsl --install -d Ubuntu-24.04
```
:warning: Run all following commands in the **Ubuntu** terminal from the drop down option 

- Ensure the following system utilities are installed
```bash
sudo apt update
sudo apt install libboost-dev make device-tree-compiler gcc g++ libboost-regex-dev libboost-system-dev autoconf automake autotools-dev curl python3 python3-pip libmpc-dev libmpfr-dev libgmp-dev gawk build-essential bison flex texinfo gperf libtool patchutils bc zlib1g-dev libexpat-dev ninja-build git cmake libglib2.0-dev libslirp-dev libfuse2 libxcb-xinerama0 libqt5x11extras5 -y
```

### Installation steps
1. Create a folder for your tools to sit in, take ownership of that folder and add it to `$PATH`
```bash
sudo mkdir /opt/riscv
sudo chown -R $USER:$GROUPS /opt/riscv
echo $"export PATH=\$PATH:/opt/riscv/bin/" >> ~/.bashrc
```

##### RISC-V GCC
2. Download the pre-built `riscv64-gcc.tar.gz` 
```bash
wget https://github.com/alfadelta10010/COD-Lab/releases/download/RISC-V_GCC/riscv64_gcc.tar.gz
mv riscv64_gcc.tar.gz /opt/riscv
cd /opt/riscv
tar -xvzf riscv64_gcc.tar.gz
```

##### Proxy Kernel
3. Go to `/tmp`, we're building `pk`, the [RISC-V proxy kernel](https://github.com/riscv-software-src/riscv-pk)
```bash
cd /tmp
git clone https://github.com/riscv-software-src/riscv-pk.git
cd riscv-pk
mkdir build
cd build
../configure --prefix=/opt/riscv --host=riscv64-unknown-elf
make -j$(nproc)
sudo make install
```

##### Spike
4. Again, go to `/tmp`, we're building `spike`, the RISC-V ISA simulator
```bash
cd /tmp
git clone https://github.com/riscv-software-src/riscv-isa-sim
cd riscv-isa-sim
mkdir build
cd build
../configure --prefix=/opt/riscv
make -j$(nproc)
sudo make install
```

##### RIPES
5. Now, we download RIPES
```bash
cd ~
wget https://github.com/mortbopet/Ripes/releases/download/v2.2.6/Ripes-v2.2.6-linux-x86_64.AppImage -O ripes.AppImage
chmod +x ripes.AppImage
```

- To run RIPES on WSL/Ubuntu, use the following command
```bash
./ripes.AppImage
```
