# SmartCookieWeb-Desktop
A desktop version of SmartCookieWeb.

# Building
Before you start building, ensure that you have Node.js installed on your machine.

If you use Windows, run the following command in an administrator command prompt to set up the Windows build tools for Node.js:

`npm i -g windows-build-tools`

To build SmartCookieWeb for desktop, run this command in the root folder of the project:

`npm install`

You'll then need to rebuild the native modules in this project. Do this with:

`npm run rebuild`

Finally, run:

`npm run dev`

# Is SmartCookieWeb for Desktop a fork of another browser?
SmartCookieWeb for Desktop is a fork of [Wexond Browser](https://github.com/wexond/desktop). SmartCookieWeb for desktop is currently a work in progress and is currently only designed for users of SmartCookieWeb for Android to use, since it has a modified version of Wexond's interface geared towards similarity with the mobile version of the browser.
