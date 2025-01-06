#!/bin/env sh

echo "Starting Zinny Web UI"
echo "After the server starts, the web app"
echo "will be available at http://localhost:7219"
echo
echo "App was packaged with Platypus. https://sveinbjorn.org/platypus"
echo "Binary was built with PyInstaller. https://pyinstaller.org/"
echo
echo "Your ratings are exportable and also stored in:"
echo "~/Library/Application\ Support/zinny/db/zinny-1.0.sqlite'"
echo
echo 'Close the app window to stop the server'
echo 
echo "Launching the app bundle takes several seconds, you will see output"
echo "below when its ready."
echo
echo "You may run the script directly from the terminal or install with pip"
echo "/Applications/Zinny\ Launch\ WebUI.app/Contents/Resources/zinny-webui"
echo
echo "More info at https://github.com/RyLaney/zinny-webui"
echo
echo "Launching server..."
echo 

./zinny-webui
