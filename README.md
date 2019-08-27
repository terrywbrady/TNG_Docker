# Running TNG with Docker Compose

[The Next Generation of Genealogy Sitebuilding ("TNG")](https://www.tngsitebuilding.com/)

Building the Docker Image Locally

Copy your licensed TNG installation to tng12.1 in this folder.

```
docker-compose -p tng build
```

Start TNG
```
docker-compose -p tng up -d
```

Complete the setup at
- [http://localhost/readme.html](http://localhost/readme.html)

| Setting | Value |
| ------- | ----- |
| Database Host | db |
| Database Name | tngdb |
| Database User | user |
| Database Password | password |

Stop TNG
```
docker-compose -p tng down
```

Your content will be persisted in the docker volume __tng_my-db__.
