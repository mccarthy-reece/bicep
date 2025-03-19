param location string
param product_name string
param env string
param sku_type string

module myModule '../modules/basic_module_a.bicep' = {
  name: 'myResourcesModule'
  params: {
    location: location
    sku_type: sku_type
    product_name: product_name
    env: env
  }
}

