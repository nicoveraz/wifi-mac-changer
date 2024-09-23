# Wi-Fi MAC Changer

This command-line tool allows you to change the MAC address of your Wi-Fi interface and reconnect to a specified network. It's designed for use on macOS systems.

## Features

- Change MAC address of Wi-Fi interface to a specified address or a random one
- Remove and re-add a Wi-Fi network to preferred networks
- Connect to the specified Wi-Fi network
- Input validation and MAC address sanitization

## Prerequisites

- macOS operating system
- Administrator privileges

## Installation

1. Clone this repository:
   ```
   git clone https://github.com/yourusername/wifi-mac-changer.git
   cd wifi-mac-changer
   ```

2. Install the tool:
   ```
   sudo make install
   ```

## Usage

After installation, you can use the tool with one of the following commands:

For a specific MAC address:
```
sudo wifi-mac-changer -n "YourWiFiName" -p "YourWiFiPassword" -m "00:11:22:33:44:55"
```

For a random MAC address:
```
sudo wifi-mac-changer -n "YourWiFiName" -p "YourWiFiPassword" -r
```

Replace "YourWiFiName" and "YourWiFiPassword" with your actual Wi-Fi details.

### Options:

- `-n`: Wi-Fi network name
- `-p`: Wi-Fi password
- `-m`: Target MAC address (format: xx:xx:xx:xx:xx:xx or xx-xx-xx-xx-xx-xx)
- `-r`: Use a random MAC address
- `-w`: Wait time in seconds between steps (default: 2)
- `-h`: Display help message

To see the usage information directly from the command line, you can run:

```
wifi-mac-changer -h
```

## Uninstallation

To uninstall the tool, run:

```
sudo make uninstall
```

## Caution

Changing MAC addresses may have legal and ethical implications. Only use this tool on networks and devices you have permission to modify.

## License

See LICENSE file in the repository.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.