# Wi-Fi MAC Changer

This script allows you to change the MAC address of your Wi-Fi interface and reconnect to a specified network. It's designed for use on macOS systems.

## Features

- Change MAC address of Wi-Fi interface
- Remove and re-add a Wi-Fi network to preferred networks
- Connect to the specified Wi-Fi network
- Input validation and MAC address sanitization

## Prerequisites

- macOS operating system
- Administrator privileges

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/nicoveraz/wifi-mac-changer.git
   cd wifi-mac-changer
   ```

2. Install the script:
   ```
   sudo make install
   ```

## Usage

After installation, you can use the script with the following command:

```
sudo wifi-mac-changer -n "YourWiFiName" -p "YourWiFiPassword" -m "00:11:22:33:44:55"
```

Replace "YourWiFiName", "YourWiFiPassword", and the MAC address with your desired values.

### Options:

- `-n`: Wi-Fi network name
- `-p`: Wi-Fi password
- `-m`: Target MAC address (format: xx:xx:xx:xx:xx:xx or xx-xx-xx-xx-xx-xx)
- `-h`: Display help message

## Uninstallation

To uninstall the script, run:

```
sudo make uninstall
```

## Caution

Changing MAC addresses may have legal and ethical implications. Only use this script on networks and devices you have permission to modify.

## License

```
MIT License

Copyright (c) [year] [fullname]

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the "Software"), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all
copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
SOFTWARE.
```

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.
