ACR_NAME=devmsolaiacr01
RESOURCE_GROUP=msol-ai-dev-rg
LOCATION=japaneast
AKS_NAME=dev-msol-ai-aks01
POOL_NAME1=agentpool

# az acr create -n $ACR_NAME -g $RESOURCE_GROUP --sku basic

az aks create \
-n $AKS_NAME \
-g $RESOURCE_GROUP \
--generate-ssh-keys \
--attach-acr $ACR_NAME \
--enable-private-cluster True \
--nodepool-name $POOL_NAME1 \
--node-count


# subscriptionId=6082af28-a73a-4ffd-85bb-0b9f0694684f
# assigneeObjectId=095a827d-26fe-4a35-9f7d-341c4d460f3f
# resourceGroupName=msol-ai-dev-rg
# az role assignment create --role contributor --subscription $subscriptionId --assignee-object-id  $assigneeObjectId --assignee-principal-type ServicePrincipal --scope /subscriptions/$subscriptionId/resourceGroups/$resourceGroupName

# az ad sp create-for-rbac --name "ghActionMsolAI" --scope /subscriptions/$subscriptionId/resourceGroups/$resourceGroupName --role Contributor --sdk-auth
az aks get-credentials --resource-group msol-ai-dev-rg --name dev-msol-ai-aks01
