all: dev build

dev:
	pipenv install

open:
	pipenv run jupyter notebook
	pipenv run jupyter-nbextension install rise --py
	pipenv run jupyter-nbextension enable rise --py

build:
	pipenv

slides:
	pipenv run jupyter nbconvert --to slides your_talk.ipynb

slides-serve:
	# use http://127.0.0.1:8000/your_talk.slides.html?print-pdf and then print to PDF
	pipenv run jupyter nbconvert --to slides *.ipynb --post serve

run:
	pipenv run jupyter notebook
