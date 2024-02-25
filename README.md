# Running 
Navigate to the root folder and run the comman:  `docker compose up -d`

---

# Pending/ TODO
<ul>
<li>Create tables for Database With DB Initialized (Post Initializer)</li>
<li>Maybe create a Global .gitignore file to be maintained outside of the project</li>
</ul>

___

## Guides on how to update Docker and commit it to git
[How to add folders to SFTP](sftp/README.md)

[How to add topics to Kafka](kafka/README.md)

---

## Tools to use locally and connect to the services:

### Docker UI
<ul>
<li><strong>Tool Name:</strong> Portainer</li>
<li><strong>Note:</strong> Setup user/pass on firts login </li>
<li><strong>Online URL:</strong> https://localhost:9443/ </li>
</ul>

### Kafka
<ul>
<li><strong>Tool Name:</strong> akhq - Kafka UI</li>
<li><strong>Requirement:</strong> Running akhq in the docker-compose.yaml </li>
<li><strong>Online URL:</strong> http://localhost:8080/ </li>
</ul>

### Redis
<ul>
<li><strong>Tool Name:</strong> RedisInsight</li>
<li><strong>Online URL:</strong> http://localhost:8001/ </li>
</ul>

### SFTP
<ul>
<li><strong>Tool Name:</strong> Cyberduck</li>
<li><strong>Download Link:</strong> https://cyberduck.io/download/ </li>
<li><strong>Connection Type:</strong> SFTP</li>
<li><strong>Server:</strong> localhost</li>
<li><strong>Port:</strong> 22</li>
<li><strong>Username:</strong> rootuser</li>
<li><strong>Password:</strong> password</li>
</ul>

#### MySQL
<ul>
<li><strong>Tool Name:</strong> DBeaver</li>
<li><strong>Download Link:</strong> https://dbeaver.io/download/</li>
<li><strong>Name</strong> Local Postgres</li>
<li><strong>Host:</strong> localhost</li>
<li><strong>Port:</strong> 5432</li>
<li><strong>Connection Type:</strong> default</li>
<li><strong>Driver:</strong> PostgreSQL</li>
<li><strong>User:</strong> **Set in your .env file** </li>
<li><strong>Passoword:</strong> **Set in your .env file**  </li>
</ul>


___

# Installing Docker
## Mac Apple Silicon
<ol>
<li>
Run the following command
    
    $ softwareupdate --install-rosetta
</li>
<li>
Download Docker Desktop: https://docs.docker.com/desktop/install/mac-install/
</li>

<li>
Open Docker Desktop from the Applications folder.
- Install it using the suggested settings.
</li>

<li>
In the Docker Desktop app, go to the Settings -> Features in Development and enable: `Use Rosetta for x86/amd64 emulation on Apple Silicon`
</li>

<li>
Check if docker compose is installed by running `$ docker compose version` in your terminal.
<ol>
<li>
If you get an error saying compose is not a docker command, you need to install docker compose
</li>

<li>
Run the following commands to install the compose plugin 

    $ sudo apt-get update
    $ sudo apt-get install docker-compose-plugin
</li>
</ol>
</li>

<li>
Open the terminal and change to the directory where this README.md file is. For example:

    $ cd /Users/kisdev/Documents/projects/cdpna-ingest/src/docker/README.md
</li>

<li>
Run the command below and make sure you can see the file "docker-compose.yaml". If you can't it means you are not in the correct folder, go back to step 6.
    
    $ ls -l
    total 16
    -rw-r--r--@ 1 kisdev  staff  2243 May  8 11:25 README.md
    -rw-r--r--  1 kisdev  staff  3518 May  8 10:42 docker-compose.yaml
    drwxr-xr-x  5 kisdev  staff   160 May  7 17:29 kafka
    drwxr-xr-x  5 kisdev  staff   160 May  7 20:00 mysql
    drwxr-xr-x  3 kisdev  staff    96 May  7 20:08 redis
    drwxr-xr-x  5 kisdev  staff   160 May  8 05:55 sftp
    drwxr-xr-x  6 kisdev  staff   192 May  8 09:45 sqlserver

</li>

<li>
From the folder you just moved to, run the command below to start the docker:

    $ docker compose up -d
</li>

</ol>

From now on, you can simply open the docker application, go to the Container tab and click the "Play" action to start the container.

---
## Linux - Ubuntu
<ol>
<li>
Run the following command. This will detect your Linux version and install all the required packages as described here: https://docs.docker.com/engine/install/ubuntu/#install-using-the-convenience-script
    
    $ curl -fsSL https://get.docker.com -o get-docker.sh
    $ sudo sh ./get-docker.sh --dry-run
</li>

<li>
Check if docker compose is installed by running `$ docker compose version` in your terminal.
<ol>
<li>
If you get an error saying compose is not a docker command, you need to install docker compose
</li>

<li>
Run the following commands to install the compose plugin 

    $ sudo apt-get update
    $ sudo apt-get install docker-compose-plugin
</li>
</ol>
</li>

<li>
Open the terminal and change to the directory where this README.md file is. For example:

    $ cd /Users/YOURUSER/documents/projects/generic-backbone-for-testing/README.md
</li>

<li>
Run the command below and make sure you can see the file "docker-compose.yaml". If you can't it means you are not in the correct folder, go back to step above.
    
    $ ls -l
    total 16
    -rw-r--r--@ 1 YOURUSER  staff  2243 May  8 11:25 README.md
    -rw-r--r--  1 YOURUSER  staff  3518 May  8 10:42 docker-compose.yaml
    drwxr-xr-x  5 YOURUSER  staff   160 May  7 17:29 kafka
    drwxr-xr-x  5 YOURUSER  staff   160 May  7 20:00 postgres
    drwxr-xr-x  3 YOURUSER  staff    96 May  7 20:08 redis
    drwxr-xr-x  5 YOURUSER  staff   160 May  8 05:55 sftp

</li>

<li>
From the folder you just moved to, run the command below to start the docker:

    $ docker compose up -d
</li>

</ol>

---