# Monodevelop

## Build from source and run

----

### From GitHub:
````
sudo docker build -t monodevelop https://github.com/logicethos/monodevelop
sudo docker run -v /tmp:/tmp -v /home/$USER:/HOME monodevelop $DISPLAY $USER
````

### From DockerHub

````
sudo docker run -v /tmp:/tmp -v /home/$USER:/HOME logicethos/monodevelop $DISPLAY $USER
````
