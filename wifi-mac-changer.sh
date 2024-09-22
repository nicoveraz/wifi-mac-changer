#!/bin/zsh

# Function to display usage information
usage() {
    echo "Usage: $0 -n <wifi_name> -p <wifi_password> -m <target_mac_address>"
    echo "  -n    Wi-Fi network name"
    echo "  -p    Wi-Fi password"
    echo "  -m    Target MAC address (format: xx:xx:xx:xx:xx:xx or xx-xx-xx-xx-xx-xx)"
    echo "  -h    Display this help message"
    exit 1
}

# Function to validate and sanitize MAC address
sanitize_mac() {
    local mac=$1
    # Remove any characters that aren't hexadecimal digits or colons/hyphens
    mac=$(echo $mac | tr -cd '[:xdigit:]:-')
    # Replace hyphens with colons
    mac=${mac//-/:}
    # Check if the MAC address is in the correct format
    if [[ $mac =~ ^([[:xdigit:]]{2}:){5}[[:xdigit:]]{2}$ ]]; then
        echo $mac
        return 0
    else
        echo "Invalid MAC address format" >&2
        return 1
    fi
}

# Parse command line arguments
while getopts ":n:p:m:h" opt; do
    case ${opt} in
        n )
            WIFI_NAME=$OPTARG
            ;;
        p )
            WIFI_PASSWORD=$OPTARG
            ;;
        m )
            TARGET_MAC_ADDRESS=$(sanitize_mac "$OPTARG")
            if [ $? -ne 0 ]; then
                exit 1
            fi
            ;;
        h )
            usage
            ;;
        \? )
            echo "Invalid option: $OPTARG" 1>&2
            usage
            ;;
        : )
            echo "Invalid option: $OPTARG requires an argument" 1>&2
            usage
            ;;
    esac
done
shift $((OPTIND -1))

# Check if all required arguments are provided
if [ -z "${WIFI_NAME}" ] || [ -z "${WIFI_PASSWORD}" ] || [ -z "${TARGET_MAC_ADDRESS}" ]; then
    echo "Error: Missing required arguments" 1>&2
    usage
fi

# Main script logic
echo "Changing MAC address to ${TARGET_MAC_ADDRESS} and connecting to Wi-Fi ${WIFI_NAME}..."
sudo networksetup -removepreferredwirelessnetwork en0 "${WIFI_NAME}"
sudo networksetup -setairportpower en0 off
sudo networksetup -setairportpower en0 on
sudo ifconfig en0 ether "${TARGET_MAC_ADDRESS}"
sudo networksetup -detectnewhardware
sudo networksetup -setairportnetwork en0 "${WIFI_NAME}" "${WIFI_PASSWORD}"
sudo networksetup -addpreferredwirelessnetworkatindex en0 "${WIFI_NAME}" 0 WPA2 "${WIFI_PASSWORD}"

echo "Operation completed. MAC address changed to ${TARGET_MAC_ADDRESS}, ${WIFI_NAME} removed and re-added to preferred networks, and connected."
