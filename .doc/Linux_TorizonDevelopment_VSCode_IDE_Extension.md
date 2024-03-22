# TorizonOS Visual Studio IDE Extension

## Description

Torizon IDE extension for Visual Studio Code is developed by Toradex. It uses the Docker Visual Studio Code extension with your remote BF03 device and simplifies the management of Docker images, containers and volumes during the development cycle.

More detailed information about the extension can be found on Toradex home page:

<https://developer.toradex.com/torizon/application-development/ide-extension/>

The purpose of this document is to give you “jump start” with developing software for BF03 module with Torizon OS installed.

## Requirements

-   BF03 module ( standard version has Torizon OS 6 installed )
-   Ubuntu 22.04 or Debian 11 or Windows via WSL 2
-   Visual Studio Code

## Setting up the environment (Windows Host Machine)

Install Visual Studio Code on the Windows side. Do not install VS Code on WSL. Even with the Windows version of VS Code installed, you can access VS Code from the WSL terminal. Also, with the WSL Extension, VS Code's UI runs on Windows, and all your commands, extensions, and even the terminal, run on Linux.

Install WSL 2 and Linux distribution:

```
wsl --set-default-version 2
wsl --install
```

Make sure that you are running version 2 of WSL:
```
wsl -l –v
```

You should get something like this if all is properly installed:

```
  NAME           STATE      VERSION
* Ubuntu-22.04   Stopped    2
```

## Install Docker Engine

There are two options for managing Docker containers: Docker Engine and Docker Desktop.

Installation of Docker Engine is preferred as it is licenced under Apache Licence, Version 2.0.

Instructions for Docker engine installation on Ubuntu can be found here:

<https://docs.docker.com/engine/install/ubuntu/>

How to set-up Docker to run Docker without root privileges can be found here:

[https://docs.docker.com/engine/install/linux-postinstall/\#manage-docker-as-a-non-root-user](https://docs.docker.com/engine/install/linux-postinstall/#manage-docker-as-a-non-root-user)

Instructions for Docker desktop installation on Windows can be found here:

<https://docs.docker.com/desktop/install/windows-install/>

## Prepare Visual Studio Code

Install WSL extension (from extensions marketplace). The WSL extension lets you use VS Code on Windows to build Linux applications that run on the Windows Subsystem for Linux (WSL). You get all the productivity of Windows while developing with Linux-based tools, runtimes, and utilities.

Connect to WSL in Visual Studio Code:

-   Press F1
-   Type wsl in search
-   Select WSL: Connect to WSL

Install Torizon IDE Extension. The extension must be installed in Linux environment (connected to WSL).

Find the extension in extensions market place (Torizon IDE Extension). Once installed activate the extension by clicking on its icon on the left menu bar.

During the first activation, the extension will check the necessary dependencies. If any missing dependencies are detected, the extension will attempt to install them and prompt you to enter your sudo user password. You should also accept any package installation. At the end another terminal will open and try to install PowerShell. Enter your sudo user password here also. This should conclude the installation of the extension.

In case of any difficulties it helps to close VS Code after each step (after installing the extension, after installing dependencies).