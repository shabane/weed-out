# weed out

![logo](https://s6.uupload.ir/files/thumb_2000_0_0_0_auto_dmfa.jpg)

![Docerkized](https://img.shields.io/badge/-docker-2496ED?logo=docker&logoColor=black&style=for-the-badge)
![Docerkized](https://img.shields.io/badge/-bash-E95420?logo=ubuntu&logoColor=black&style=for-the-badge)
![Docerkized](https://img.shields.io/badge/-bash-4EAA25?logo=gnubash&logoColor=black&style=for-the-badge)
![Docerkized](https://img.shields.io/badge/-Modular-313131?&style=for-the-badge)


### Description

*weed out* is a DOS project which based on varios tools.
this mean it will act differntly with diffrent drivers.
there is a **dirves** directory which contain scripts that the
script will run to take the site down. available scripts for now are: `wget.sh`, `ab.sh`.

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

i made this for Standing with **Ukraine**🇺🇦, and **Irananian Protesters🇮🇷** try to get list of Russian and or Iran government websites
and then set the `URL` variable to theme.   