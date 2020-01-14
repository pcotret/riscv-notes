# "Hzllo world" example for a K210-based board such as the Maixduino from Sipeed
## Installation
- Visual Studio Code: https://code.visualstudio.com/
- PlatformIO plugin: https://marketplace.visualstudio.com/items?itemName=platformio.platformio-ide

## Open a project example
- Open `project examples` in platform.io welcome screen.
- Select `kendryte-standalone-sdk_hello`
- Platform.io download a toolchain and everythin to get it working!
- Do not forget to modify `platform.ini` to keep only the Mainduino settings:
```bash
[env:sipeed-maixduino]
platform = kendryte210
framework = kendryte-standalone-sdk
board = sipeed-maixduino
monitor_speed = 115200s
```
# Create a new project
- Create a new project.
- Select the Maiduino board.
- Kendryte has some releases of a compatible cross-compiler (should be in your PATH): https://github.com/kendryte/kendryte-gnu-toolchain/releases
