
# install different distros, say arch linux, manjaro KDE plasma, Fedora, Kali, Ubuntu on a single computer over VM

    - Install a virtualization software like Oracle VirtualBox, VMware Workstation, or KVM on Manjaro system.

    - Download the Arch Linux ISO from the Arch Linux Downloads page.

    - Create a new virtual machine and configure its settings, such as CPU, memory, storage, and network.

    - Mount the Arch Linux ISO in the virtual machine's virtual CD/DVD drive.

    - Start the virtual machine and boot from the Arch Linux ISO.

    - Follow the Arch Linux Installation Guide to install Arch Linux on the virtual machine. Make sure to create a new partition for the virtual machine's virtual hard drive and do not overwrite or modify the partitions of your Manjaro Linux system.

    - Once the installation is complete, shutdown the virtual machine and remove the Arch Linux ISO from the virtual CD/DVD drive.

    - Start the virtual machine and login to your new Arch Linux system.


# Benchmark latency across different linux instances ander WSL2

   1.  Install the necessary benchmarking tools on each Linux instance we want to test. Some popular benchmarking tools include:

    * UnixBench
    * Geekbench
    * Phoronix Test Suite

One can install these tools using the package manager of each Linux instance (e.g. pacman for Arch, apt for Ubuntu, dnf for Fedora, etc.)

    * Configure WSL2 machine to allocate enough resources to each Linux instance for the benchmarking tests. This can be done in the WSL2 configuration file (`/etc/wsl.conf`). For example, we can allocate more memory by adding the following lines to the file:

    ```
    [WSL2]
    memory=8GB
    swap=8GB
    ```

2. Set up a script to automate the benchmarking tests. One can use a script to run the benchmarking tools on each Linux instance and collect the results. Here's an example script that uses UnixBench:

```
#!/bin/zsh

# Run UnixBench on Ubuntu
echo "Running UnixBench on Ubuntu..."
sudo apt-get install -y build-essential
wget https://byte-unixbench.googlecode.com/files/UnixBench5.1.3.tgz
tar xvfz UnixBench5.1.3.tgz
cd UnixBench
./Run

# Run UnixBench on Arch
echo "Running UnixBench on Arch..."
sudo pacman -S --noconfirm gcc make
wget https://byte-unixbench.googlecode.com/files/UnixBench5.1.3.tgz
tar xvfz UnixBench5.1.3.tgz
cd UnixBench
./Run

# Run UnixBench on Kali
echo "Running UnixBench on Kali..."
sudo apt-get install -y build-essential
wget https://byte-unixbench.googlecode.com/files/UnixBench5.1.3.tgz
tar xvfz UnixBench5.1.3.tgz
cd UnixBench
./Run

# Run UnixBench on Fedora
echo "Running UnixBench on Fedora..."
sudo dnf install -y gcc make
wget https://byte-unixbench.googlecode.com/files/UnixBench5.1.3.tgz
tar xvfz UnixBench5.1.3.tgz
cd UnixBench
./Run

```
