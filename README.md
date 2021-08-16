# Create repository 


this code for creating ec2 in AWS and add A record to route53


## Getting Started

These instructions will get you a copy of the project up and running on your local machine.

### Prerequisites

Before run you need to create file variables.tf, in repository dir.
In variables.tf, you have to define variables "access_key" "secret_key" "domain".
You can use variables.tf.example file or example:

```
variable "access_key" {
    default = "..."
}

variable "secret_key" {
    default = "..."
}

variable "domain" {
    default = "..."
}
``` 


### Installing 

```
git clone git@github.com:AlexandrVovk/aws-ec2-route53-terraform.git

cd aws-ec2-route53-terraform

terraform init

```

### Deployment

```
terraform plan

terraform apply
```

## Authors

* **Alexandr Vovk** [Gitlab](https://github.com/AlexandrVovk/)
