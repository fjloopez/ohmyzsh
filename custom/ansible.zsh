# Ansible custom

# Autocomplete vault commands
autoload -U +X bashcompinit && bashcompinit
complete -o nospace -C /usr/local/bin/vault vault
