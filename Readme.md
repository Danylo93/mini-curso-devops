Documentation Terraform :

-  Site Terraform --> Browse Providers -- > AWS /AZURE/ ETC 
 - Documentation:
 https://registry.terraform.io/providers/hashicorp/aws/latest/docs


 - SQS 
  https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/sqs_queue

  - Naming Conventions 

  https://www.terraform-best-practices.com/naming

  usar sempre underscore (_) , nunca hífen (-)

 - Remote Backend
   Terraform state --> S3 

- Workspaces 
terraform workspace select default
terraform workspace new (nome do ambiente)
terraform workspace list

----------------------------

Aula 2 


CIDR BLOCK 

Calculo de IPs

2ˆ(32 - 24{pode ser 30, 31}) = quantidade de ips nesse caso 256 IPs

O Internet Gateway é o Portão da VPC.
Antes de criar uma sub-net eu tenho que escolher uma zona de disponibilidade.


https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc
