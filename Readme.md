# TX-PI Ansible

__Ziel__:

* Ansible Skripte zur Erweiterung von TX-PI Image.
* Browserbasierend
	* Jupyter (Python)
	* NodeRed (Javascript)
	* Cockpit (Sysadmintool)
	* Blockly GPIO

* Broserbasierend von TX-PI
	* Brickly FT (Blockly)
	* VNC
	* IDE im Browser Theia (ToDo)

* Ansible Skript zu Erstellung von TX-PI auf anderen OS (Ubuntu, Raspbian)

## Module

* __Update__
	* Update packages
	* Upgrade system
	* Reboot falls notwendig
	* Entfernt alte Pakete

* __Base Module__
	* Installiert Pakete
		* vim
		* screen
		* dphys-swapfile
	* Einrichten von dphy-swapfile mit 1 GB

* __Docker__
	* Falls ein Modul Docker benötigt, wird dies installiert

* __NodeRed__
	* Installiert Docker
	* Installiert Pakete
		* pigpiod
		* sqlite
		* Todo gpiod
	* Einrichten des pigpiod Dienstes
		* Hört auf alle Netzwerke
		* Dienst läuft mit Systemstart
	* Nodered mit Docker-Compose
		* Docker-Compose
			* nodered
			* eclipse-mosquitto
			* mariadb
			* myadmin
			* ToDo homeassistant
		* Neue node-red image erstellen
			* node-red-dashboard
			* node-red-node-mysql
			* node-red-node-openweathermap
			* node-red-contrib-fsm
			* node-red-contrib-persistent-fsm
			* node-red-contrib-finite-statemachine
			* node-red-node-arduino
			* node-red-node-pi-gpiod
			* node-red-contrib-home-assistant-websocket
			* node-red-contrib-i2c
			* node-red-node-sqlite
			* ToDo homeassistant

* __Datenbanken__  
	Mariadb wird in NodeRed mit eingerichtet.

* __Jupyter__
	* ToDo
		* SOS Kernel läuft nicht
		* Rebuild jupyterlab geht nicht
		* Secret oder Token für jupyter lab server setzen
	* Installiert NVM
	* Installiert virtualenv
	* venv für jupyter
		* RPI.GPIO
		* jupyterlab
		* calysto_bash
		* jupyterlab_gitlab
		* jupyterlab-git
		* jupyterlab-spellchecker
		* sos
		* jupyterlab-sos
		* sos-notebook
		* jupyter_micropython_kernel
		* pigpio

* __Blockly-Gpio__
	* Installiert Pakete
		* python3-dev
		* python3-gpiozero
		* python3-pip
		* python3-websocket
	* Pip Pakete
		* websockets

* __Cockpit__
	* Installiert Paket
		* cockpit
		* cockpit-docker
		* screenfetch
* __opencv__
	* Installiert Paket
		* python3-opencv

* __ROS__
	* ToDo
		* Ros als Docker
		* Jupyter Ros
		* Blockly Ros
