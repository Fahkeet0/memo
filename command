gcc -mtune=native -flto -march=native -Ofast f21_trade.c -lm -lpthread -Wall -Wextra -mcmodel=large


sudo apt update ; sudo apt upgrade ; sudo snap refresh ; sudo snap refresh --edge --devmode anbox ; sudo flatpak update ; sudo snap set system refresh.hold=2119-04-23T17:22:54+01:00

gcc -fPIC -Wall -c -I/usr/local/include/python3.8 test_wrap.c

gcc -mtune=native -flto -march=native -Ofast f17_float.c -lm -lpthread -Wall -Wextra -mcmodel=large

sudo snap set system refresh.hold=2119-04-23T17:22:54+01:00
sudo snap get system refresh.hold

nice time python | tee log1

nvcc -O2  main.cu --default-stream per-thread
nvcc --generate-code arch=compute_75,code=sm_75 -O2 f3gpu_1231.cu

ulimit -s unlimited

antimicro

sudo update-alternatives --config gcc

gcc -fexcess-precision=fast -ffast-math -funroll-loops -flto -Ofast -mtune=native -march=native -mfpmath=both faster.c -lm -lpthread -Wall -Wextra

gcc -mtune=native -flto -march=native -O2 f3_1229.c -lm -lpthread -Wall -Wextra -mcmodel=large
nice ./cpu0101.out 2>&1 | tee log_cpu0101.txt

gcc -static

sudo nvme smart-log /dev/nvme0 | grep "temperature"
while true; do sudo nvme smart-log /dev/nvme0 | grep "temperature"; sleep 5s; done

while true; do lscpu | grep "CPU MHz:"; sleep 5s; done

python -u apdqn1009.py | tee log2

sudo apt clean ;

LD_PRELOAD=/usr/local/lib/spotify-adblock.so spotify

pip install -U pip six numpy wheel setuptools mock 'future>=0.17.1' ; pip install -U  keras_applications --no-deps ; pip install -U keras_preprocessing --no-deps

/usr/include/linux/,

rikuo@vvv-desktop:~/Downloads$ sudo sh cuda_11.0.2_450.51.05_linux.run
===========
= Summary =
===========

Driver:   Not Selected
Toolkit:  Installed in /usr/local/cuda-11.0/
Samples:  Installed in /home/rikuo/, but missing recommended libraries

Please make sure that
 -   PATH includes /usr/local/cuda-11.0/bin
 -   LD_LIBRARY_PATH includes /usr/local/cuda-11.0/lib64, or, add /usr/local/cuda-11.0/lib64 to /etc/ld.so.conf and run ldconfig as root

To uninstall the CUDA Toolkit, run cuda-uninstaller in /usr/local/cuda-11.0/bin

Please see CUDA_Installation_Guide_Linux.pdf in /usr/local/cuda-11.0/doc/pdf for detailed information on setting up CUDA.
***WARNING: Incomplete installation! This installation did not install the CUDA Driver. A driver of version at least .00 is required for CUDA 11.0 functionality to work.
To install the driver using this installer, run the following command, replacing <CudaInstaller> with the name of this run file:
    sudo <CudaInstaller>.run --silent --driver

Logfile is /var/log/cuda-installer.log



echo performance | sudo tee /sys/devices/system/cpu/cpu*/cpufreq/scaling_governor

docker run -it --gpus all --name opt_stable0805 -e HOST_PERMS="$(id -u):$(id -g)"  -v /home/rikuo/Downloads/dockermount/:/home/dockermount/  182b13b4a8e6

docker start -i Stable0730

export PATH=$PATH:/root/.local/bin

snap refresh --beta --devmode anbox

snap info anbox  ::eage

whereis

sudo nautilus


===========
= Summary =
===========

Driver:   Not Selected
Toolkit:  Installed in /usr/local/cuda-10.2/
Samples:  Installed in /home/rikuo/, but missing recommended libraries

Please make sure that
 -   PATH includes /usr/local/cuda-10.2/bin
 -   LD_LIBRARY_PATH includes /usr/local/cuda-10.2/lib64, or, add /usr/local/cuda-10.2/lib64 to /etc/ld.so.conf and run ldconfig as root

To uninstall the CUDA Toolkit, run cuda-uninstaller in /usr/local/cuda-10.2/bin

Please see CUDA_Installation_Guide_Linux.pdf in /usr/local/cuda-10.2/doc/pdf for detailed information on setting up CUDA.
***WARNING: Incomplete installation! This installation did not install the CUDA Driver. A driver of version at least 440.00 is required for CUDA 10.2 functionality to work.
To install the driver using this installer, run the following command, replacing <CudaInstaller> with the name of this run file:
    sudo <CudaInstaller>.run --silent --driver

Logfile is /var/log/cuda-installer.log



04:07:53@~/Downloads$ sudo sh cuda_11.1.0_455.23.05_linux.run --toolkit --toolkitpath=/usr/local/cuda-11.1
===========
= Summary =
===========

Driver:   Not Selected
Toolkit:  Installed in /usr/local/cuda-11.1/
Samples:  Installed in /home/rikuo/, but missing recommended libraries

Please make sure that
 -   PATH includes /usr/local/cuda-11.1/bin
 -   LD_LIBRARY_PATH includes /usr/local/cuda-11.1/lib64, or, add /usr/local/cuda-11.1/lib64 to /etc/ld.so.conf and run ldconfig as root

To uninstall the CUDA Toolkit, run cuda-uninstaller in /usr/local/cuda-11.1/bin
***WARNING: Incomplete installation! This installation did not install the CUDA Driver. A driver of version at least .00 is required for CUDA 11.1 functionality to work.
To install the driver using this installer, run the following command, replacing <CudaInstaller> with the name of this run file:
    sudo <CudaInstaller>.run --silent --driver

Logfile is /var/log/cuda-installer.log


