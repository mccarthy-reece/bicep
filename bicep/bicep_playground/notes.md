##Template for when creating the pipeline

#what if for RG
az deployment sub what-if \
  --template-file /home/reece/devops/reece-mccarthy/bicep/bicep_playground/bicep/prod/resource_group.bicep \
  --parameters @/home/reece/devops/reece-mccarthy/bicep/bicep_playground/bicep/prod/rg.parameters.json \
  --location 'northeurope'

#######################
#                     #
#  MANUAL VALIDATION  #
#                     #
#######################

#Deployment of RG
az deployment sub create\
  --template-file /home/reece/devops/reece-mccarthy/bicep/bicep_playground/bicep/prod/resource_group.bicep \
  --parameters @/home/reece/devops/reece-mccarthy/bicep/bicep_playground/bicep/prod/rg.parameters.json \
  --location 'northeurope'


#what if for Resources
az deployment group what-if \ 
  --template-file /home/reece/devops/reece-mccarthy/bicep/bicep_playground/bicep/prod/main.bicep
  --parameters @/home/reece/devops/reece-mccarthy/bicep/bicep_playground/bicep/prod/main.parameters.json
  --resource-group 'rm-prod-banka-rg'

#######################
#                     #
#  MANUAL VALIDATION  #
#                     #
#######################

#Deployment of Resources
az deployment group create \
  --template-file /home/reece/devops/reece-mccarthy/bicep/bicep_playground/bicep/prod/main.bicep \
  --parameters @/home/reece/devops/reece-mccarthy/bicep/bicep_playground/bicep/prod/main.parameters.json \
  --resource-group rm-prod-bank_a-rg
