# Wi-Fi MAC Changer

This command-line tool allows you to change the MAC address of your Wi-Fi interface on macOS systems. Changes are not persistent after reboot.

## Use under your own responsibility

This tool is provided as-is and is intended for educational purposes only. Use it at your own risk. The author is not responsible for any misuse or damage caused by this tool.

## Features

- Change MAC address of Wi-Fi interface to a specified address or a random one
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

Before running the script, ensure that you:
1. Disconnect from all Wi-Fi networks
2. Disable Auto-join for all saved networks
3. Close System Preferences / Network Settings

After installation, you can use the tool with one of the following commands:

For a specific MAC address:
```
sudo wifi-mac-changer -m "00:11:22:33:44:55"
```

For a random MAC address:
```
sudo wifi-mac-changer -r
```

### Options:

- `-m`: Target MAC address (format: xx:xx:xx:xx:xx:xx or xx-xx-xx-xx-xx-xx)
- `-r`: Use a random MAC address
- `-w`: Wait time in seconds between steps (default: 2)
- `-h`: Display help message

To see the usage information directly from the command line, you can run:

```
wifi-mac-changer -h
```

### Known Issues

If you encounter an error message stating that the MAC address couldn't be changed, ensure that you've properly disconnected from all networks and disabled Auto-join for all saved networks before running the script again.

## After Running the Script

After the script completes, you'll need to manually connect to your desired Wi-Fi network.

## Caution

Changing MAC addresses may have legal and ethical implications. Only use this tool on networks and devices you have permission to modify.

## License

See LICENSE file in the repository.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.