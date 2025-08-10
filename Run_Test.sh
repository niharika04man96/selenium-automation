# Install dependencies
pip install -r requirements.txt

# Run both suites with HTML report
robot -d reports tests

# Override username & password via CLI
robot -v CLI_USERNAME:myuser -v CLI_PASSWORD:mypass -d reports tests
