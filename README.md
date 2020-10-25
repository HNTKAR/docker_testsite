# test Container

## _setting file format_

```
###test###
```

## _up container_

```
sudo mkdir -p -m 777 /home/podman/test_pod/site /home/podman/test_pod/site/log
./script.sh
sudo firewall-cmd --add-forward-port=port=80:proto=tcp:toport=1080 --permanent
sudo firewall-cmd --reload
podman pod create -p 1080:80 -n test_pod
podman run -td --pod test_pod -v /home/podman/test_pod/site:/etc/site -v /home/podman/test_pod/site/log:/var/log --name site site
#podman run -td -v /home/podman/test_pod/site:/etc/site -v /home/podman/test_pod/site/log:/var/log --net slirp4netns:port_handler=slirp4netns -p 1080:80 --name site site
#podman pod rm -f test_pod
#podman exec -it site bash
#sudo firewall-cmd --remove-forward-port=port=80:proto=tcp:toport=1080 --permanent
```

