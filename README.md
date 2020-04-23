# Kubernetes (kubectl) and Helm Docker Container

This is a containerized Kubernetes CLI (`kubectl`) and Helm based on `thinkwrap/docker-kubernetes-cli`.

> This container includes the AWS CLI, Terraform v0.12.x binary and Helm.

[![DockerHub Badge](http://dockeri.co/image/thinkwrap/docker-kubernetes-cli-helm)](https://hub.docker.com/r/thinkwrap/docker-kubernetes-cli-helm/)

## Example build

```
docker build -t thinkwrap/docker-kubernetes-cli-helm .
```

## Example usage

> The example below (keys) assumes an existing AWS account.


**Ensure the following are set**

```
export AWS_ACCESS_KEY_ID="<aws_access_key_id>"
export AWS_SECRET_ACCESS_KEY="<aws_secret_access_key>"
export AWS_DEFAULT_REGION="<aws_default_region>"
```

**Run the container detatched**
```
docker run --name docker-kubernetes-cli-helm \
    --rm \
    --detach \
    --tty \
    --env "AWS_ACCESS_KEY_ID=${AWS_ACCESS_KEY_ID}" \
    --env "AWS_SECRET_ACCESS_KEY=${AWS_SECRET_ACCESS_KEY}" \
    --env "AWS_DEFAULT_REGION=${AWS_DEFAULT_REGION}" \
    thinkwrap/docker-kubernetes-cli-helm
```

**Run a command**

> While this is obviously a very simple example, more complex usage, particularly in a CI/CD pipeline, is possible.

```
docker exec -it docker-kubernetes-cli-helm kubectl version 
docker exec -it docker-kubernetes-cli-helm helm version 
```

> Ensure `export USER=argocd` to run `argocd` successfully.

## References

[Overview of kubectl](https://kubernetes.io/docs/reference/kubectl/overview/)
[Amazon EKS User Guide](https://docs.aws.amazon.com/eks/latest/userguide/what-is-eks.html)
[Helm Documentation](https://helm.sh/docs/)

# License

Licensed under the Apache License, Version 2.0 (the "License").

This repository and its contents are licensed under the terms detailed in the [LICENSE file](./LICENSE).
