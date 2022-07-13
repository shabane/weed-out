# weed out

<meta property="og:image" content="https://s6.uupload.ir/files/thumb_2000_0_0_0_auto_dmfa.jpg" />

![weed-out](https://s6.uupload.ir/files/thumb_2000_0_0_0_auto_dmfa.jpg)


![Docerkized](https://img.shields.io/badge/-docker-2496ED?logo=docker&logoColor=black&style=for-the-badge)
![Docerkized](https://img.shields.io/badge/-bash-E95420?logo=ubuntu&logoColor=black&style=for-the-badge)
![Docerkized](https://img.shields.io/badge/-bash-4EAA25?logo=gnubash&logoColor=black&style=for-the-badge)
![Docerkized](https://img.shields.io/badge/-Modular-313131?&style=for-the-badge)


### Description

*weed out* is a DOS project which based on site mirroring.
this mean it will download the entire of a web site with all its
files including images, java scripts, styles, medias and etc.
when mirroring get completed all files will remove and
mirroring will start over!

there is a **dirves** directory which contain scripts which that
script will run to download the site. available scripts for now are: `wget.sh`.  

### Usage

there is two *Environment Variable* which you should set before runing: `$URL` and `$DRIVER`.

|   Env |Purpose|
|:-----:|:-----:|
|`$URL` | url of the site which you want to take down!|
|`$DRIVER`| driver to use |


### Example

- build

```bash
export URL=<site url here>
git clone https://github.com/shabane/weed-out.git && cd weed-out

docker build . -t weed-out
docker run -e URL=$URL -e DRIVER=wget weed-out
```

- or pull from docker hub

```bash
export URL=<site url here>
export DRIVER=<driver name here>

docker pull mshabane/weed-out:latest # Download image from docker hub
docker run -e URL=$URL -e DRIVER=$URL mshabane/weed-out # run a container
```

- and or without docker

```bash
git clone https://github.com/shabane/weed-out.git && cd weed-out
export URL=<site url here>
export DRIVER=<driver name here>
bash ./main.sh
```

### Disclaimer

Yes of course DOS is not legal, this tool is educational purpose,
use this to test your site *tolerance*.

i made this for Standing with **Ukraine**🇺🇦, try to get list of Russian government websites
and then set the `URL` variable to theme.   