# Wi-Fi MAC Changer

This command-line tool allows you to change the MAC address of your Wi-Fi interface on macOS systems.

## Use under your own responsibility

This tool is provided as-is and is intended for educational purposes only. Use it at your own risk. The author is not responsible for any misuse or damage caused by this tool.

## Features

- Change MAC address of Wi-Fi interface to a specified address or a random one
- Change the computer name (NetBIOS name) for network connections
- Input validation and MAC address sanitization
- Reset option to restore the original values without reboot

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

To also set a temporary computer name:

```
sudo ./wifi-mac-changer -m "00:11:22:33:44:55" -n "TempComputerName"
```

### Options:

- `-m`: Target MAC address (format: xx:xx:xx:xx:xx:xx or xx-xx-xx-xx-xx-xx)
- `-r`: Use a random MAC address
- `-n`: Set a temporary computer name for network connections
- `-w`: Wait time in seconds between steps (default: 2)
- `-R`: Reset to original MAC address and hostname
- `-h`: Display help message

To see the usage information directly from the command line, you can run:

```
wifi-mac-changer -h
```

### Caveats

- The script requires administrator privileges to run
- MAC changes are reverted upon system reboot or when the script is run with the -R option
- Hostname change is persistent until the script is run again with the -R option

## After Running the Script

### After the script completes:

You'll need to manually connect to your desired Wi-Fi network.
The MAC address change will persist until the next reboot.
If you set a temporary computer name, it will persist until you run the script again without the -n option or until you reboot.

### Reverting Changes

The MAC address change is automatically reverted upon system reboot.
The temporary computer name is automatically reverted when the script exits or when you run the script again without the -n option.

## Caution

Changing MAC addresses may have legal and ethical implications. Only use this tool on networks and devices you have permission to modify.

## License

See LICENSE file in the repository.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.