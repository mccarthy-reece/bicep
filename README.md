# Bicep Playground

This repo is for experimenting with **Bicep modules, parameters**, and testing out best practices for Infrastructure as Code (IaC) in Azure.

## Features
- Try out different **Bicep modules**
- Test various **module parameters and configurations**
- Validate **deployment best practices**

## Pipelines Workflow
There are two separate pipelines:

1. **Resource Group Pipeline**  
   Creates RGs by passing parameters from the Bicep module call.  
   ![RG Pipeline - What-If](bicep/bicep_playground/image-3.png)  

2. **Resource Deployment Pipeline**  
   Deploys resources into the RG. Currently, you need to manually enter the RG name (see Tech Debt section).  
   ![RG deployment based on product name and env params](bicep/bicep_playground/image-2.png)  

**What-If example run:**  
![What-If Pipeline Run](bicep/bicep_playground/image-1.png)  

**Deployed resources in Azure:**  
![Resources Deployed in Azure](bicep/bicep_playground/image.png)  

## Tech Debt / Improvements if I had more time
- Pass the RG name as an output, then feed this into the resource deployment stage so manual input isn’t needed  
- Enable SFTP on the Storage Account (skipped due to cost)  
- Pull SSH keys from a Key Vault and set up SSH access automatically  
