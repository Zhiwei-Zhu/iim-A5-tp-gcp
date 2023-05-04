# tf-gcp-challenge-Vincent-ZH
>## Convention de nommage

### service name:
<strong>"gcp" + service_name + my_name +(use_for)</strong>

### table:
<strong>"gcp" + service_name + "table" + my_name + use_for</strong>

Dans le cas de si il y a plusieurs envirronement :

### service name:
 <strong> "gcp" + env_name + service_name + my_name + (use_for)</strong>

### table name:
 <strong>"gcp" + env_name + service_name + "table"+ my_name + use_for</strong>

>## Avant installation du repo git
### Veuillez posséder un compte GCP et avoir créé un projet GCP.

### Veuillez aussi activer les API:
- Cloud Functions API
- Cloud Run API
- Cloud Storage API
- Cloud Build API

>## Installation du repo git
### Dans le shell/éditeur de la plateforme GCP:
- git clone https://github.com/Zhiwei-Zhu/tf-gcp-challenge-Vincent-ZHU.git
- cd tf-gcp-challenge-Vincent-ZHU/
- change username dans variable.tf si nécessaire ( ne pas oublier de changer la valeur de bucket dans backend de main.tf aussi )
- terraform init
- terraform apply
- dans main.tf, décommenter la partie backend
- terraform init
- terraform apply

>## Structure du projet

- main.tf
- variable.tf
- /modules :
    - /bigquery :
        - bigquery.tf
        - variable.tf
    - /functions :
        - function.tf
        - variable.tf
    - /storage :
        - storage.tf
        - variable.tf




