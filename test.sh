export py=$(which python3 -1)
echo "Updating Ubuntu and installing python's pip and virtualenv..."
sudo apt-get update && sudo apt-get upgrade && sudo apt-get install python3-pip && sudo apt-get install python3-venv
echo "Creating dbt-projects directory and python virtualenv..."
mkdir ~/dbt-projects && cd ~/dbt-projects
$py -m venv env
echo "Entering virtualenv and installing dbt dependencies..."
~/dbt-projects/env/bin/python3 -m pip install dbt-core dbt-snowflake
cat >> ~/.bashrc <<EOF
alias start_dbt='source ~/dbt-projects/env/bin/python3 && dbt --version && echo dbt is running!'
EOF
echo "Installing VScode extensions and opening VScode"
code --install-extension innoverio.vscode-dbt-power-user
code .
