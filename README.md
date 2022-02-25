# Deploy a consul cluster with 3 servers and 2 clients

This code will deploy consul cluster of 3 servers and 2 clients using docker-compose in vagrant box.

## Prerequisite
Download and install vagrant according to your OS from https://www.vagrantup.com/downloads

## Usage

From the directory containing `Vagrantfile` run the following command:

```
vagrant up
```
 When the deploy is ready you can check if everything is ok by logging into the VM and listing of members that a Consul agent:
 
 ```
vagrant ssh
docker exec -it server-1 /bin/consul members
 ```


## License
[MIT](https://choosealicense.com/licenses/mit/)