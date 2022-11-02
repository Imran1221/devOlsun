# devOlsun

Create Image:\
```docker build -t <image-name> . ```

Run Image:\
```docker run -it -p 5000:5000 --name <container-name> <image>```\
```docker run -d -p 5000:5000 --name <container-name> <image>```

Exec in container\
```docker exec -it <container> bash```

Vagrant needs virtualbox use \
```vagrant up```