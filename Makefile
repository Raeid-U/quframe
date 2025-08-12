.PHONY: init venv preview install freeze clean

# Initialize the Python Virtual Environment (venv)
init:
	python3 -m venv ./.quarto-venv

# Activate Python venv
# bash:
# 	$ source ./.quarto-venv/bin/activate

# (With venv activated) Install all necessary packages
install:
	pip install --upgrade pip && pip install -r requirements.txt

# (With venv activated) Update requirements.txt
freeze:
	pip freeze > requirements.txt

# (With venv activated) Preview Quarto Site
preview:
	quarto preview index.qmd

# (With venv activated) Exit Python venv
# bash:
# 	$ deactivate

# clean up all build artifacts
clean:
	rm -rf ./*.html ./_site ./.quarto
