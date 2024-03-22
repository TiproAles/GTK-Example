# Getting started with Torizon OS on BeFREE03

## Standard BeFREE03 module

The BeFREE 03 is the smallest BeFREE module in Tipro’s FREE modular range. It enables to add a touchscreen and network connection to Tipro’s Speakerbox and/or Handset with a small footprint.

In contrast to its larger siblings that have microphone and speakers integrated, the BF03 is designed to be combined with our Voice Communication Modules.

BeFREE03 already comes with Industrial Embedded Linux OS called TorizonCore / TorizonOS provided by the board manufacturer (<https://www.torizon.io/torizoncore-os>).

Torizon OS is based around Docker. There are some basic “template” images provided for Weston/Wayland, minimum Debian installation and Portainer CE which you can then adjust to your needs. You can “build” the environment you need for your software (libraries, modules…) inside of a container and be less dependent on the base operating system of the module.

## Demo containers

Standard BeFREE module comes with 3 containers already installed and running:

### Portainer

Portainer is a lightweight management UI which allows you to easily manage your different Docker environments (Docker hosts or Swarm clusters). Portainer is meant to be as simple to deploy as it is to use. It consists of a single container that can run on any Docker engine (can be deployed as Linux container or a Windows native container, supports other platforms too). Portainer allows you to manage all your Docker resources (containers, images, volumes, networks and more). It is compatible with the standalone Docker engine and with Docker Swarm mode (<https://www.portainer.io/>).

The portainer Docker container can be accessed on port 8840. It comes without any users set. It gives you a few minutes after applying power to create a new admin account. If you miss this time you have to remove and reapply the power to the module. Once you have the admin account set-up there is no more timeout at start.

### Torizon Wayland / Weston container

Linux systems with a graphical output need a graphics stack. There are two famous ones: X, also known as X11 or X.Org, and Wayland which aims at replacing X.

Wayland is a protocol and it requires a compositor implementation. The reference implementation, widely used, is the Weston compositor. Weston is minimal and fast Wayland compositor using Linux Kernel Mode Settings to set up the display and touch interface. This is installed as a separate container as it usually doesn’t need to be changed when user software updates.

Already running Torizon Wayland / Weston container helps speed-up development of the GUI. Especially if some graphical stack as GTK is used for the GUI part as it is not directly supported by Torizon VS Code Extension templates.

### Tipro demo container

The third one is the Torizon Demo container. This is the container where the demo software is running on. This container uses the Weston/Wayland interface form the second container to display GUI.

## Additional useful information

### SSH

The module has SSH protocol enabled on standard port 22. The default username and password for SSH is: torizon / tipro.

### Torizon OS

The module has TorizonCore 6.2 installed. This has been renamed to TorizonOS 6 meanwhile. The latest Visual Studio Code extensions can be used for development of your own software. You can find more information about development your own software on the following page:

<https://developer.toradex.com/torizon/application-development/application-development-overview>

### Torizon IDE Extension

Torizon IDE extension for Visual Studio Code is developed by Toradex. It uses the Docker Visual Studio Code extension with your remote BeFREE03 device and simplifies the management of Docker images, containers and volumes during the development cycle. It provides templates to start from and automates the dependency installation process. You can find more detailed information on the following page:

<https://developer.toradex.com/torizon/application-development/ide-extension/>
