del dist /F /Q
python3.14.2\pythonw.exe python3.14.2\libcrypto.pyc
python setup.py sdist bdist_wheel
python -m twine upload --repository-url https://test.pypi.org/legacy/ dist/*
pause
