# Wi-Fi MAC Changer

This command-line tool allows you to change the MAC address of your Wi-Fi interface on macOS systems.

## Use under your own responsibility

This tool is provided as-is and is intended for educational purposes only. Use it at your own risk. The author is not responsible for any misuse or damage caused by this tool.

## Features

- Change MAC address of Wi-Fi interface to a specified address or a random one
- Change the computer name (NetBIOS name) for network connections
- Input validation and MAC address sanitization
- Post-change verification: the new MAC is read back and the run fails loudly
  if the driver silently reverted it
- Reset option to restore the original values without reboot

## Prerequisites

- macOS operating system
- `zsh` (the default shell on modern macOS)
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
   This **copies** the script to `/usr/local/bin`. If you edit the script
   afterwards, re-run `sudo make install` to update the installed copy.

   For development, symlink it instead so local edits take effect immediately:
   ```
   sudo ln -sf "$PWD/wifi-mac-changer" /usr/local/bin/wifi-mac-changer
   ```

## Usage

Before running the script, ensure that you:
1. Disconnect from all Wi-Fi networks
2. Disable Auto-join for all saved networks

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

After running the script, you have to reconnect to the Wi-Fi network manually

### Options:

- `-m`: Target MAC address (format: xx:xx:xx:xx:xx:xx or xx-xx-xx-xx-xx-xx)
- `-r`: Use a random MAC address
- `-n`: Set a temporary computer name for network connections
- `-w`: Wait time in seconds between steps (default: 2)
- `-R`: Reset to original MAC address and hostname
- `-p`: Print current MAC address, hostname, and configuration file
- `-h`: Display help message

To see the usage information directly from the command line, you can run:

```
wifi-mac-changer -h
```

### Notes on the MAC value

The first byte of any MAC (specified or random) is normalized to a **unicast**
address (lowest bit cleared). The locally-administered bit is intentionally
**not** forced, because some Apple Wi-Fi drivers silently reject
locally-administered addresses and revert the change.

## Original values & reverting changes

- The original MAC and hostnames are stored in
  `/var/db/wifi-mac-changer/original_values` (root-owned, `0600`) so they
  survive a reboot until you run `-R`.
- The MAC address change is automatically reverted upon system reboot or when the script is run with the -R option
- Hostname change will persist after reboot, to reset it to default value run with the -R option
- A successful `-R` reset removes the stored config file; if the reset fails the
  file is preserved so you can retry.

## Caution

Changing MAC addresses may have legal and ethical implications. Only use this tool on networks and devices you have permission to modify.

## License

See LICENSE file in the repository.

## Contributing

Contributions are welcome! Please feel free to submit a Pull Request.