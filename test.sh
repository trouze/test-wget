echo "Updating Ubuntu and installing python's pip and virtualenv..."
sudo apt-get update && sudo apt-get upgrade && sudo apt-get install python3-pip && sudo apt-get install python3-venv
echo "Creating dbt-projects directory and python virtualenv..."
mkdir ~/dbt-projects && cd ~/dbt-projects && python3 -m venv env
echo "Entering virtualenv and installing dbt dependencies..."
source env/bin/activate && pip install dbt-core dbt-snowflake dbt-databricks dbt-bigquery dbt-redshift
echo "Installing VScode extensions and opening VScode"
code --install-extension innoverio.vscode-dbt-power-user
code .
