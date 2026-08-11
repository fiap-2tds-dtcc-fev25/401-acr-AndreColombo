RG_NAME=rg-rm563112-acr
LOCATION=eastus2

az group create --name $RG_NAME --location $LOCATION

# az provider register --namespace Microsoft.ContainerRegistry

az acr create \
    --resource-group $RG_NAME \
    --name 2tdsarm563112 \
    --sku Basic \
    --location $LOCATION \
    --public-network-enabled true \
    --admin-enabled true