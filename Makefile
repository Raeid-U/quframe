.PHONY: init venv preview install freeze clean

init:
		python3 -m venv ./.quarto-venv

venv: 
		source ./.quarto-venv/bin/activate

preview:
		quarto preview index.qmd
		
install:
		pip install --upgrade pip && pip install -r requirements.txt
		
freeze:
		pip freeze > requirements.txt

clean:
		rm -rf ./*.html ./_site ./.quarto