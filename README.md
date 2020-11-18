# Créer son infra avec terraform
1. [Installer terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli)
2. [Récupérer les credentials Scaleway](https://www.scaleway.com/en/docs/deploy-your-first-terraform-infrastructure-on-scaleway/#-Connect-Terraform-to-Scaleway-cloud-by-Creating-API-Key) et les ajouter dans votre environnement. Suivez que les étapes qui permettent de créer les credentials.
    ```
    export SCW_ACCESS_KEY="SCW5DGN478H5D39AZB11"
    export SCW_SECRET_KEY="85c0f5dd-610c-4520-9b8e-f1f5861da5a0"
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
