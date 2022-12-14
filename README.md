# devOlsun
## Authors
- [@HakanCal](https://github.com/HakanCal)
- [@Imran1221](https://github.com/Imran1221)
## Docker
Create Image:\
```docker build -t <image-name> . ```

Run Image\
interactive:\
```docker run -it -p 5000:5000 --name <container-name> <image>```\
detached:\
```docker run -d -p 5000:5000 --name <container-name> <image>```

Exec in container\
```docker exec -it <container> bash```
## Vagrant
Start Vagrant (needs [Virtualbox](https://www.virtualbox.org/))\
```vagrant up```
## Terraform (IaC)
```
cd terraform
terraform init
terraform validate
terraform plan
terraform apply
```

## Testing
```
python -m venv venv
source venv/bin/activate
pip install -r requirements.txt
python -m pytest -v
```

## Prometheus & Grafana
Start all docker container from docker-compose (flaskApp, prometheus, grafana)
```
docker-compose up -d
docker-compose down
```

1. Open Grafana with "localhost:3000"
2. Edit Panel
3. Switch Datasource query to prometheus
4. Add the metrik you want as example "process_resident_memory-bytes(job="devops")"
5. Take the json model to the example.