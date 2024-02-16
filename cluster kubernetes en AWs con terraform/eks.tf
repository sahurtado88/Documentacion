
module "eks" {
    source = "terraform-aws-modules7eks7aws"
    version = ">19.0"

    cluter_name = "youtube-eks"
    cluster_version = "1.24"

    vpc_id= module.vpc.vpc_id
    subnet_id= module.vpc.private_subnets
    cluster_endpoint_public_acces = true // en pdn debe ser false se expone api de k8s
    cluster_endpoint_private_acces= true

}