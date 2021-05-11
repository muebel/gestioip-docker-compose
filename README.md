# Gesti&oacute;IP IPAM Docker Compose 

Gesti&oacute;IP v3.5.6 deployment with Docker Compose.

Gesti&oacute;IP is powerful free IP address management (IPAM) software. See https://www.gestioip.net for further details.


## Requirements

Docker and Docker Compose


## Installation

* Clone this repository or download and unpack the zip file

```
$ git clone https://github.com/muebel/gestioip-docker-compose
```
or
```
$ wget https://github.com/muebel/gestioip-docker-compose/archive/main.zip
$ unzip main.zip
$ mv gestioip-docker-compose-main gestioip-docker-compose
```

* Change to the new directory

```
$ cd gestioip-docker-compose
```

* Edit the .env file

* Deploy with docker-compose

```bash
$ docker-compose up -d
```

Expected result:

```
$ docker ps
CONTAINER ID   IMAGE                    COMMAND                  CREATED       STATUS       PORTS                  NAMES
88b10cf6ffb8   gestioip/gestioip:3555   "/gestioip_install/s…"   2 hours ago   Up 2 hours   0.0.0.0:8080->80/tcp   gip
0d5efce2dfa7   mysql:5                  "docker-entrypoint.s…"   2 hours ago   Up 2 hours   3306/tcp, 33060/tcp    gip-mysql
```


## Usage
Access to the Gesti&oacute;IP installation by pointing your browser to

```
http://IP_DOCKER_HOST
```

Username: gipadmin  
Password: PASSWORD

Change the password after login from "manage > Users".


## Contributing
Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change.


## License
[MIT](https://choosealicense.com/licenses/mit/)
