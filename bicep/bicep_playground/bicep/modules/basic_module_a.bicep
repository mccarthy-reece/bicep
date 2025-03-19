param location string
param sku_type string
param product_name string
param env string

resource storageaccount 'Microsoft.Storage/storageAccounts@2021-02-01' = {
  name: 'rm${env}${replace(product_name, '_', '')}sa'
  location: location
  kind: 'StorageV2'
  sku: {
    name: sku_type
  }
}

resource keyVault 'Microsoft.KeyVault/vaults@2021-10-01' = {
  name: 'rm-${env}-${product_name}-kv'
  location: location
  properties: {
    tenantId: subscription().tenantId
    sku: {
      family: 'A'
      name: 'standard'
    }
    enableRbacAuthorization: true
  }
}



