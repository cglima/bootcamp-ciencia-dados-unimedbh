# image_processing

## Description

The package image_processing is used to:

- Processing:
  - Histogram matching
  - Structural similarity
  - Resize image
- Utils:
  - Read image
  - Save image
  - Plot image
  - Plor result
  - Plot histogram

## Installation

Use the package manager [pip](https://pip.pypa.io/en/stable/) to install image_processing

```bash
pip install image_processing
```

### Installation commands for creating distributions

- Updating the pip

```shell
python -m pip install --upgrade pip
```

- Installing the twine

```shell
python -m pip install --user twine
```

- Installing the setuptools

```shell
python -m pip install --user setuptools
```

- Creating the distributions sdist and wheel (binary distribution)

```shell
python setup.py sdist bdist_wheel
```

### Command to publish  in the Test Pypi

```shell
python -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
```

```shell
pip install --index-url https://test.pypi.org/simple/image-processing-to-cassiana==0.01
```

### Command to publish in the Pypi

```shell
python -m twine upload --repository-url https://upload.pypi.org/legacy/ dist/*
```

### Command to install the package

```shell
pip install image-processing-to-cassiana==0.0.1
```

## Author

Cassiana Gabriela Lima Barreto

## License

[MIT](https://choosealicense.com/licenses/mit/)