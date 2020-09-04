# Blink tutorial for the Longan Nano

![img](http://longan.sipeed.com/assets/longan_nano_pinout_v1.1.0_w5676_h4000_large.png)

Online wiki to install PlatformIO and import the blink project: https://longan.sipeed.com/en/

## Upload through the USB port

By default, the board will try to upload via the serial link (`TX0` and `RX0` in the figure above) but we can also use the USB port powering the board.

`platform.ini` settings:

```ini
[env:sipeed-longan-nano]
platform = gd32v
framework = gd32vf103-sdk
board = sipeed-longan-nano
monitor_speed = 115200
upload_protocol = dfu
```

**Do not forget to get into DFU mode (Section 4.3 in the wiki)**

> Development board hold down the `BOOT` key, then press the `RESET` button to restart development board and then release the `BOOT` button to enter DFU mode.

## Upload log

```
Opening DFU capable USB device...
ID 28e9:0189
Run-time device DFU version 011a
Claiming USB DFU Interface...
Setting Alternate Setting #0 ...
Determining device status: state = dfuIDLE, status = 0
dfuIDLE, continuing
DFU mode device DFU version 011a
Device returned transfer size 2048
DfuSe interface name: "Internal Flash  "
Found GD32VF103, which reports a bad page size and count for its internal memory.
Fixed layout based on part number: page size 1024, count 128.
Downloading to address = 0x08000000, size = 6584

Erase           [                         ]   0%            0 bytes
Erase           [=======                  ]  31%         2048 bytes
Erase           [===============          ]  62%         4096 bytes
Erase           [=======================  ]  93%         6144 bytes
Download        [                         ]   0%            0 bytes
Download        [=======                  ]  31%         2048 bytes
Download        [===============          ]  62%         4096 bytes
Download        [=======================  ]  93%         6144 bytes
Download        [=========================] 100%         6584 bytes
Download done.
File downloaded successfully
dfu-util: Error during download get_status
*** [upload] Error 74
== [FAILED] Took 1.52 seconds ==
```

Even if it failed at the end, the binary has been downloaded to the board.