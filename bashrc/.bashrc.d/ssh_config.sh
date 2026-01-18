generate_ssh_config() {
	local CONFIG_EXISTED="false"
	local OLD_CONFIG=$(mktemp)
	local CONFIG_FILE="$1"
	local TEMPLATE_FILE="$2"

	trap 'rm -f "$OLD_CONFIG"' EXIT

	if [[ ! -f "$TEMPLATE_FILE" ]]; then
		echo "Error: $TEMPLATE_FILE not found" 1>&2
		return 1
	fi

	if [[ -f "$CONFIG_FILE" ]]; then
		CONFIG_EXISTED="true"
		cp "$CONFIG_FILE" "$OLD_CONFIG"
	fi

	envsubst < "$TEMPLATE_FILE" > "$CONFIG_FILE"
	
	if [[ $CONFIG_EXISTED == "false" ]]; then
		echo "Generated $CONFIG_FILE"
		return 0
	fi

	if diff -q "$OLD_CONFIG" "$CONFIG_FILE" > /dev/null; then
		echo "No changes made to $CONFIG_FILE"
		return 0
	fi

	echo "Updated $CONFIG_FILE"	
}

export HOMELAB_ADDRESS="192.168.0.107"

generate_ssh_config "$HOME/.ssh/config" "$HOME/.ssh/config.tmpl"
if [[ $? -ne 0 ]]; then
	echo "Failed to generate SSH config"
	return 1
fi
