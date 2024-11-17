# COD Lab: Setting up the tool chain

Hello, welcome to COD lab! Please follow the instructions below. 
In case of mistakes, reach out to [alfadelta10010](https://wa.me/919967058974)
### Tool chains
- [RISC-V GCC](inst_macOS_AppSili.md#RISC-V-GCC)
- [Spike](inst_macOS_AppSili.md#Spike)
- [RISC-V Proxy Kernel](inst_macOS_AppSili.md#Proxy-kernel)
- [RIPES](inst_macOS_AppSili.md#RIPES)

### Prerequisites
- Install Developer tool + Brew package manager by running the following
```bash
sudo xcode-select --install
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
brew install wget
```

### Installation steps
##### RISC-V GCC
1. Install RISC-V GCC from Homebrew
```bash
brew install riscv64-elf-gcc
```

##### Proxy Kernel
2. Go to `/tmp`, we're building `pk`, the [RISC-V proxy kernel](https://github.com/riscv-software-src/riscv-pk)
```bash
brew install dtc
cd /tmp
git clone https://github.com/riscv-software-src/riscv-pk.git
cd riscv-pk
mkdir build
cd build
../configure --prefix=/opt/homebrew --host=riscv64-unknown-elf
make -j$(nproc)
sudo make install
```

##### Spike
3. Again, go to `/tmp`, we're building `spike`, the [RISC-V ISA simulator](https://github.com/riscv-software-src/riscv-isa-sim)
```bash
cd /tmp
git clone https://github.com/riscv-software-src/riscv-isa-sim
cd riscv-isa-sim
mkdir build
cd build
../configure --prefix=/opt/homebrew
make -j$(nproc)
sudo make install
```

##### RIPES
4. Now, we download [RIPES](https://github.com/mortbopet/Ripes)
```bash
cd ~/Downloads/
wget https://github.com/alfadelta10010/COD-Lab/releases/download/RIPES-v2.2.6/RIPES.app.zip
unzip RIPES.app.zip
sudo mv RIPES.app.zip /Applications/
```

- To run RIPES on MacOS, go to the launchpad and click to run, in case you get a warning for unsigned applications, go to System Preferences -> Privacy & Security. 
- Depending on the version, you may have a General tab, where you will see a button informing you that the app is unsigned. No tension, click on Allow Anyway
