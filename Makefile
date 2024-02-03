install:
	pip install --upgrade pip && pip install -r requirements/requirements.txt && pip install -r requirements/test_requirements.txt

install-api:
	pip install -r bikeshare_model_api/requirements.txt

train_pipeline:
	python bikeshare_model/train_pipeline.py

format:
	black . *.py

lint:
	pylint --disable=R,C *.py

mypy:
	mypy --implicit-optional bikeshare_model/ tests/

test:
	python -m pytest

build:
	py -m pip install --upgrade build && py -m build

run:
	python bikeshare_model_api/app/main.py

all: install format lint mypy train_pipeline test