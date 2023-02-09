sudo apt-get update && sudo apt-get upgrade && sudo apt-get install python3-pip && sudo apt-get install python3-venv
mkdir ~/dbt-projects && cd ~/dbt-projects
python3 -m venv env && source env/bin/activate && pip install dbt-core dbt-snowflake dbt-databricks dbt-bigquery dbt-redshift
code --install-extension innoverio.vscode-dbt-power-user
code .
