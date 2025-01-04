#!/bin/env sh

echo "Starting Zinny Web UI"
echo "After the server starts, the web app"
echo "will be available at http://localhost:5219"
echo
echo 'Close this terminal to stop the server'
echo
echo "For faster launching, run the script directly from the terminal"
echo "/Applications/Zinny\ Launch\ WebUI.app/Contents/Resources/zinny-webui"
echo
echo "More info at https://github.com/RyLaney/zinny-webui"
echo 
echo "App was packaged with Platypus"
echo "Executable was packaged with PyInstaller"
echo

./zinny-webui
