targetScope = 'subscription'
param location string
param env string
param product_name string

resource myResourceGroup 'Microsoft.Resources/resourceGroups@2021-04-01' = {
  name: 'rm-${env}-${product_name}-rg'
  location: location
}

output rgNameOut string = myResourceGroup.name
