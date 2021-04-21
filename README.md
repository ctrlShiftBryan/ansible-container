# ansible-container 
## An docker container with ansible and docker inside of it. So you can run ansible inside a container in your CI.

## How to run the playbook using this container.
```
docker run --rm -ti -v "${PWD}":/work:ro --rm bryanarendt/ansible-container ansible-playbook playbook.yml
```



