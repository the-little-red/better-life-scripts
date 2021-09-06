# Docker commands


```
#Build and tag an local image
docker build -t repository/image:2.0 <path-to-dockerfile>

#AWS Docker Login Version
aws ecr get-login-password --region region | docker login --username AWS --password-stdin aws_account_id.dkr.ecr.region.amazonaws.com
```
