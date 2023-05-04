# tf-gcp-challenge-Vincent-ZH

>## installation projet

- change username in variable.tf in /root
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

>## convention de nommage

### service name:
<strong>"gcp" + service_name + my_name +(use_for)</strong>

### table:
<strong>"gcp" + service_name + "table" + my_name + use_for</strong>

Dans le cas de si il y a plusieurs envirronement :

### service name:
 <strong> "gcp" + env_name + service_name + my_name + (use_for)</strong>

### table name:
 <strong>"gcp" + env_name + service_name + "table"+ my_name + use_for</strong>


