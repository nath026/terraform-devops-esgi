# Créer son infra avec terraform
1. [Installer terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
2. [Récupérer les credentials Scaleway](https://www.scaleway.com/en/docs/deploy-your-first-terraform-infrastructure-on-scaleway/#-Connect-Terraform-to-Scaleway-cloud-by-Creating-API-Key) et les ajouter dans votre environnement. Suivez que les étapes qui permettent de créer les credentials.
    ```
    export SCW_ACCESS_KEY="SCWQM6TE0JTMM4C3XSVF"
    export SCW_SECRET_KEY="3030283d-76b2-4e3c-88fe-a2e6b012a819"
    ```
3. Compléter le fichier variables.tf avec votre `organization_id`
4. Exécutez les commandes suivantes :
    ```
    # installe les dépendances terraforms que vous pourriez utiliser comme le provider scaleway
    terraform init 
    # Affiche ce que terraform va installer / supprimer
    terraform plan
    # Applique le plan
    terraform apply
    ```
5. Essayer de se connecter en ssh à nos machines à l'aide du user `root`
6. Repérer le piège et le corriger

# Détruire son infra avec terraform
```
terraform destroy
```
