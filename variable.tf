//définition des variables globales
variable "project_id" {
    default = "crypto-plexus-385512"
}

variable "region" {
    default = "europe-west1"
}

variable "zone" {
    default = "europe-west1-d"
}

variable "username" {
    default = "vzhu1213" //vous pouvez modifier l'username dans le cas d'une erreur de création de bucket, veuillez aussi modifier sur le main.tf la valeur de bucket dans backend
}

variable "zipfile_name" {
    default = "hello.zip" 
}
