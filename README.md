# Wi-Fi MAC Changer

This command-line tool allows you to change the MAC address of your Wi-Fi interface and reconnect to a specified network. It's designed for use on macOS systems.

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

2. Install the tool:
   ```
   sudo make install
   ```

## Usage

After installation, you can use the tool with the following command:

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