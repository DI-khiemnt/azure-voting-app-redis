export subscriptionId=25a2ad04-98f5-442e-b612-800c2d3162cd
export resourceGroupName=KnowhowDBOpenAIRG

az ad sp create-for-rbac --name "ghActionMicrosp" --scope /subscriptions/25a2ad04-98f5-442e-b612-800c2d3162cd/resourceGroups/KnowhowDBOpenAIRG --role Contributor --sdk-auth