targetScope = 'subscription'
param location string
param product_name string
param env string

module myModule '../modules/resource_group.bicep' = {
  name: 'myResourcesModule'
  params: {
    location: location
    product_name: product_name
    env: env
  }
}
