<img src="https://raw.githubusercontent.com/NormalNed/ToontownStride/master/resources/phase_3/etc/icon.ico" align="right" width="200"/>

# Toontown Stride
September build of Toontown Stride, that just works.

# 🔨 Setting Up

## 💻 Windows

### Installing Panda
To get the source running you need to intsall the [Panda3D](https://github.com/NormalNed/ToontownStride/blob/master/Panda3D-1.11.0.exe) located in this repo.

### Installing Pip Dependenices
The next part is to get our Dependenices. To get them open a Command Prompt Window inside of the Toontown Stride folder and run
```bash
python -m pip install -r requirements.txt
```

### Running the Game
Now Open `dev/win32` and open all Batch Scripts


## 🐧 Linux
### Gathering Basic Dependenices
##### Arch / Manjaro
```yay -S xorg-server  libgl  python  openssl  libjpeg  libpng  freetype2  gtk2  libtiff  nvidia-cg-toolkit  openal  zlib  libxxf86dga  assimp  bullet  eigen  ffmpeg  fmodex  libxcursor  libxrandr  git  opencv  libgles  libegl```

##### Debian / Ubuntu / Linux Mint
```sudo apt-get install build-essential pkg-config fakeroot python-dev libpng-dev libjpeg-dev libtiff-dev zlib1g-dev libssl-dev libx11-dev libgl1-mesa-dev libxrandr-dev libxxf86dga-dev libxcursor-dev bison flex libfreetype6-dev libvorbis-dev libeigen3-dev libopenal-dev libode-dev libbullet-dev nvidia-cg-toolkit libgtk2.0-dev libassimp-dev libopenexr-dev```

### Getting Python

The First step to get this Source running is compiling Python. The Python we use is located [here](https://github.com/NormalNed) but feel free to use the one in your package manager (should be **python2**)

### Installing Pip

Once you get the Python installed you need to type these following commands to install Pip
```bash
curl https://bootstrap.pypa.io/get-pip.py -o get-pip.py
python get-pip.py
```

### Installing Pip Dependenices
The next part is to get our Dependenices. Open a Terminal inside of the Stride Project and follow these instructions below.
```bash
pip2.7 install -r requirements.txt
```

### Installing "our" Panda 3D
We use a version of Astron Panda3D that is upstream code frrom the main repo. To set it up follow these instructions

```bash
git clone https://github.com/NormalNed/panda3d.git
cd panda3d
python2 makepanda/makepanda.py --everything --installer --no-egl --no-gles --no-gles2 --no-opencv --threads=4
sudo python2 makepanda/installpanda.py
sudo ldconfig
```

#### Running the Game
Now Open `dev/linux` and run all the Shell Scripts
