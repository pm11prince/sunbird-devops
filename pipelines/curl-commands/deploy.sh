#!/bin/sh
# Build script
# set -o errexit

#!/bin/sh
# Build script
# set -o errexit
set -e
env=${ENV:-null}

ansible-playbook --version
ansible-playbook -i ansible/inventory/$ENV ansible/curl_command.yml --vault-password-file /run/secrets/vault-pass
