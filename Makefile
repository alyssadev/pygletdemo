dist/demo.app:
	pyinstaller --hidden-import pkg_resources.py2_warn -w demo.py

dist/demo:
	pyinstaller --hidden-import pkg_resources.py2_warn -F -w demo.py

dist/demo.exe:
	pyinstaller -w -F demo.py

windows: clean dist/demo.exe
macos: clean dist/demo.app
linux: clean dist/demo

clean:
	rm -rf ./__pycache__ ./build ./dist ./*.spec
