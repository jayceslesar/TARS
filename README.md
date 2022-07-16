# Making TARS robot with 4 RPI Pico W


# MicroPython Setup
1. `brew install micropython`
2. `brew install minicom`
3. `python3 -m venv venv`
4. `pip3 install --upgrade pip`
5. `pip3 intsall rshell`


# To connect with rshell
1. `grep ls /dev/cu.* | grep cu.us` this will gives you the name of the device
2. `rshell -p  /dev/cu.usbmodem1424301 --buffer-size 512` or just `rshell`
3. to flash a file: `rshell cp test.py /pyboard/test.py`