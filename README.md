# SmartCookieWeb-Desktop

SmartCookieWeb-Desktop is a web brower for PCs based on Wexond and designed to be as similar to SmartCookieWeb for Android as possible whilst still remaining suited to use with a mouse and keyboard. If you would like an identical experience, including the touchscreen-based UI, your best option is Anbox.
 
# Setup

This project requires NPM and Node.JS to be installed on your machine.

If you're on Windows you'll need to run the following command before building:

> npm i -g windows-build-tools

# Building

To build SmartCookieWeb-Dekstop, run the following commands in the root folder: 

> npm install

> npm run rebuild

and to run the app:

> npm run dev

# Packaging

To generate an executable, run one of the following commands depending on the OS you want to build for:

Windows

> npm run compile-win32

Linux

> npm run compile-linux

MacOS

> npm run compile-darwin

The executable will be created in the dist/ folder
