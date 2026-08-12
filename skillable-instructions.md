# Create Microsoft Foundry Project

## Introduction 

This lab will walk you through the steps to create a **Microsoft Foundry** resource using the **Azure Portal**. This is a required setup step before proceeding with lab exercises involving AI Foundry capabilities.

### 💡 What is Microsoft Foundry
Microsoft Foundry is a unified platform for building, deploying, and managing enterprise-grade AI applications and agents—combining powerful tools, models, and infrastructure with built-in governance and scalability.

## Objectives 
In this lab we will:
- Create Microsoft Foundry Resource and project	

## Estimated Time 

2- 10 minutes 

## Scenario
You are creating a Microsoft Foundry project that will be utilized later in the labs for several modules in this workshop.

## Pre-requisites
No pre-requisites

## 🛠️ Tasks

### 1. Sign in to Azure Portal

Go to +++https://portal.azure.com+++ and sign in with your Azure credentials. These credentials are present on the right hand side under resources tab below **Azure Portal**.

After you enter the password, Azure will prompt you for a **Temporary Access Pass (TAP)** as a mandatory second sign-in step -- this prompt cannot be skipped. The Resources tab that supplies your password also lists a separate Temporary Access Pass value; enter that value when prompted to complete sign-in.
![Azure Credentials](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/azurecredentials.png)

### 2. Search for "Microsoft Foundry"

- [ ] In the top search bar, type **"Microsoft Foundry"**
- [ ] Select **Microsoft Foundry** from the search results

![Search Microsoft Foundry](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/search_ai_foundry.png)

### 3. Create "Microsoft Foundry"

- [ ] Under Overview, click **Create a resource**

![Create Microsoft Foundry](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/ai_foundry_create.png)

### 4. Fill in the details and deploy

- [ ] Choose the Subscription if not filled in automatically
- [ ] In the **Resource group** field, select the existing resource group that is provided as part of this lab machine instance: **azureaiworkshoprg**
![Fill in Details](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/airg.png)  
- [ ] In the **Name** field, enter +++**ai-foundry-@lab.LabInstance.Id**+++ (eg ai-foundry-53439517).The screen shot provided here is just for reference, do not use the name provided in the screenshot below
- [ ] Choose a Region (e.g. East US 2)

> ⚠️ **Note:** Make sure the selected Azure region supports model GPT-5.1. You may check the **[Region availability for Foundry Models site](https://learn.microsoft.com/en-us/azure/foundry/foundry-models/concepts/models-sold-directly-by-azure-region-availability?tabs=az-americas&pivots=standard#global-standard)**.

- [ ] In the **Default project name** field, delete the default value (if there is one) and enter +++**firstProject**+++. The lab environment will not let you use another name.

- [ ] Click **Next** button. Use this as a reference image for details but choose the existing resource group and fill in the rest of the details

![Fill in Details](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/fill_in_details_for_ai_foundry_resource.png)


- [ ] For this exercise, we will keep all default values for all the subsequent tabs (Storage, Inbound Networking, Outbound Networking). Review the values in each tab page and Click the **Next** button until you reach the **Review + create** tab.
- [ ] Click the **Create** button
- [ ] Deployment time varies; the deployment blade can remain "in progress" for 15 minutes or more even after the underlying resources are actually ready. Verify completion by checking the resource group's **Resources** list rather than waiting on the deployment blade alone.

![Deploy](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/deployaifoundryresource.png)


### 5. Verify Deployment, and Go to Microsoft Foundry portal

- [ ] When your deployment is complete, click **Go to resource**

![Go to resource](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/aifoundrydeployed.png)
  
- [ ] Review the **Overview** details for the Microsoft Foundry resource you just created.
- [ ] Click **Go to Foundry Portal**

![Go to resource](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/aifoundryportal.png)






===
# Deploy models into the Microsoft Foundry Project

## Introduction 

This lab walks you through the steps to deploy various models into the **Microsoft Foundry** project.

## Objectives 

In this lab we will deploy the following models:

- text-embedding-3-large
- GPT-5.1
- GPT-5-mini	
- text-embedding-ada-002

## Estimated Time 

5 - 10 minutes 

## Scenario

You are deploying models that will be utilized later in the labs for several modules in this workshop.

## Pre-requisites

Make sure you are using the legacy Microsoft Foundry UI.

- If this is the first Portal view in the **Foundry Portal**, then click **firstProject** inside the **All resources** section.
    ![New Foundry UI](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/ai_foundry_new_ui_3.png)

- If the following Microsoft Foundry UI(User Interface) is shown:
    ![New Foundry UI](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/ai_foundry_new_ui.png)

- Change the UI to the legacy UI by clicking the **New Foundry** switch:
    ![New Foundry UI](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/ai_foundry_new_ui_2.png)

- If the feedback popups is displayed, click **Continue without feedback**.

## 🛠️ Tasks

### 1. Ensure that you are on the Microsoft Foundry – Overview page

### 2. Deploy gpt-5.1 model

- [ ] In the left side menu, Click **Model catalog**
- [ ] At the center, scroll down and search +++gpt-5.1+++
- [ ] Right Click on **gpt-5.1** and click **Open link in new tab**
![Find gpt-4o models](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/findgpt4omodels.png)

- [ ] Go to the newly opened tab for gpt-5.1
- [ ] Click **Use this model** button
![Use this model](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/usethismodel.png)

- [ ] For this lab, keep all defaults
- [ ] (Optional) Click **Customize** to review additional details
- [ ] Click **Deploy** button 
![Deploy gpt-4o](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/deploygpt4o.png)

- [ ] After deployment completes, close the browser tab.

### 3. Deploy gpt-5-mini model

- [ ] Repeat the steps above to deploy the +++**gpt-5-mini**+++ model.

### 4. Deploy embedding model

- [ ] Repeat the steps above to deploy the +++**text-embedding-3-large**+++ model.

### 5. Deploy text-embedding-ada-002 model

- [ ] Repeat the steps above to deploy the +++**text-embedding-ada-002**+++ model.

## ✅ Completed. Verify models deployment

- [ ] In the left side menu, scroll down to the bottom, Click **Models + endpoints**
- [ ] You can see list of models deployed

![List models deployed](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/msfoundry_listofmodelsdeployed.png)

===
# Create connections to Bing Resources at Azure AI Foundry resource level

## Introduction 

This lab walks you through the steps to connect the Grounding with Bing Search resource to the Azure AI Foundry resource.

## Objectives 

In this lab we will:

- Connect the Grounding with Bing Search resource to the Azure AI Foundry resource.	

## Estimated Time 

5 minutes 

## Scenario

Connect the Grounding with Bing Search resource to the Azure AI Foundry resource.	

## Pre-requisites

No pre-requisites

## 🛠️ Tasks

### 1. Go to the Connected Resources section

- [ ] Login to Azure AI Foundry: +++https://ai.azure.com/+++
- [ ] Left side, in the **Management center**, in the Resource section, Click **Connected resources**
![Foundry connected resources](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/foundryconnectedresources.png)

- [ ] Click **+New connection**
- [ ] Search **bing**
- [ ] Click **Grounding with Bing Search**

![Foundry connected resources](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/newconnbing1.png)

- [ ] Review the name of the bing resource
- [ ] Click **Add connection** on the right

![Foundry connected resources](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/gwbingaddconn.png)

- [ ] You can see the green tick at the right with Connected label
- [ ] Click **Close** button

![List models deployed](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/gwbingconnected.png)

## ✅ Completed. 

- [ ] Left side, in the **Management center**, in the Resource section, Click **Connected resources**
- [ ] You can see list of connected resources

![List models deployed](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/gwbingconnectedinlist.png)

===
# Create connections to Azure AI Search at AI Foundry resource level

## Introduction 

This lab walks you through the steps to connect the Azure AI Search to the AI Foundry resource.

## Objectives 

In this lab we will:

-	Connect the Azure AI Search to the AI Foundry resource.

## Estimated Time 

5 minutes 

## Scenario

Connect the Azure AI Search to the AI Foundry resource.

## Pre-requisites

No Pre-requisites

## 🛠️ Tasks

### 1. Go to the Connected Resources section

 _Note: Skip this step if you are already in the Management center_

- [ ] Login to Azure AI Foundry: +++https://ai.azure.com/+++
- [ ] Left side, in the **Management center**, in the Resource section, Click **Connected resources**

![Foundry connected resources](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/foundryconnectedresources.png)

- [ ] Click **+New connection**
- [ ] Click **Azure AI Search**

![Foundry connected resources](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/newconnaisearch.png)

- [ ] Review the name of the AI Search service
- [ ] Click **Add connection** on the right

![Foundry connected resources](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/aisearchaddconn.png)

- [ ] You can see the green tick at the right with Connected label
- [ ] Click **Close** button

![List models deployed](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/aisearchconnected.png)

## ✅ Completed. 

- [ ] Left side, in the **Management center**, in the Resource section, Click **Connected resources**
- [ ] You can see list of connected resources

![List models deployed](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/aisearchconnectedinlist.png)

===
# Setup .env file

## Introduction

This lab walks you through the steps to setup the .env file as a mandatory step for getting ready for executing the LAB exercises. Note that while this .env file can be setup in a code-first approach using REST API or SDKS, this LAB wants you to do the setup in an interactive way for a learning experiece.

## Objectives

In this lab we will:

- Setup the .env file that will be leveraged to execute the lab exercises

## Estimated Time

15 minutes

## Scenario

Setup the .env file that will be leveraged to execute the lab exercises as an interactive way for a learning experience

## Pre-requisites

Complete the prerequisites Lab exercises

- [Create Azure AI Foundry Project](#create-microsoft-foundry-project)
- [Deploy models into the Azure AI Foundry Project](#deploy-models-into-the-microsoft-foundry-project)
- [Create connections to Bing Resources at Azure AI Foundry resource level](#create-connections-to-bing-resources-at-azure-ai-foundry-resource-level)
- [Create connections to Azure AI Search at AI Foundry resource level](#create-connections-to-azure-ai-search-at-ai-foundry-resource-level)

## 🛠️ Tasks

### 1. Copy .env.example as .env

- [ ] Find the .env.example file that is supplied as the template. You can find it in the root folder provided within the lab VM
![Go to resource](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/Envfile_location.png)

- [ ] Copy .env.example to save as .env in the same folder location
- [ ] Edit .env to provide the actual value from your environment by following the steps
- [ ] Do not modify the section that is marked for not to modify

### 2. Go to the Microsoft Foundry – Overview page

- [ ] Go to [https://ai.azure.com](https://ai.azure.com/) 
- [ ] Sign in with your Azure credentials (if requested)

### 3. Set the values for the AI_FOUNDRY_PROJECT_ENDPOINT and AZURE_PROJECT_NAME variables

- [ ] At  the center of the **Overview** section, you can find the Azure AI Foundry project endpoint as shown below
- [ ] Copy and paste into .env file as the value for AI_FOUNDRY_PROJECT_ENDPOINT
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/AZURE_AI_FOUNDRY_PROJECT_ENDPOINT.png)

- [ ] Copy and paste into .env file the AZURE_PROJECT_NAME value. 
  - The "AZURE_PROJECT_NAME" value is the last part of the endpoint string after the "/" (eg. firstProject)

### 4. Set the values for the AZURE_OPENAI_ENDPOINT and AZURE_OPENAI_API_KEY variables

- [ ] Scroll to the bottom on the left side menu
- [ ] Click **Models + endpoints** in the My assets section
- [ ] You can view list of Model deployments on the right side
- [ ] Right click on each name to open in a new browser tab and to get details
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/modelapikey1.png)

- [ ] As shown in the screenshot Copy Endpoint Target URI and paste into .env file as the value for AZURE_OPENAI_ENDPOINT
- [ ] Copy the Model Name and Key and paste into .env file as the value for MODEL_DEPLOYMENT_NAME and AZURE_OPENAI_API_KEY respectively.
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/modelapikey2.png)
  - The Model Name is the first box string.

- [ ] The gpt-5.1 chat model is served on the newer Responses API surface: its Endpoint Target URI is in the form of https://_AI-FOUNDRY-NAME_.cognitiveservices.azure.com/openai/responses?api-version=_MODEL-API-VERSION_ -- there is no `/deployments/_MODEL-DEPLOYMENT-NAME_/chat/completions` path segment for this model. The Model Name still comes from the separate **Deployment info** box shown above, not from the URI path.
- [ ] Copy the last section from the URI (date) and paste into .env file as the value for MODEL_API_VERSION
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/modelapikey3.png)

### 5. Set the values for the AZURE_OPENAI_EMBEDDING_ENDPOINT and AZURE_OPENAI_EMBEDDING_API_KEY variables

- [ ] Similar steps as above. Follow for both text-embedding-3-large and text-embedding-ada-002 models
- [ ] Click on embeddding model name to get details
- [ ] As shown in the screenshot Copy Endpoint Target URI and paste into .env file as the value for AZURE_OPENAI_ENDPOINT
- [ ] Copy Key and paste into .env file as the value for AZURE_OPENAI_EMBEDDING_API_KEY
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/modelapikey2e.png)

- [ ] The Endpoint Target URI is in the form of https://_AI-FOUNDRY-NAME_.cognitiveservices.azure.com/openai/deployments/_MODEL-DEPLOYMENT-NAME_/chat/completions?api-version=_MODEL-API-VERSION_
- [ ] Copy corresponding string from the URI and paste into .env file as the value for EMBEDDING_MODEL_DEPLOYMENT_NAME and EMBEDDING_MODEL_API_VERSION

### 6. Set the value for the GROUNDING_WITH_BING_CONNECTION_NAME variable

#### Go to the Connected Resources section

- [ ] Left side, in the **Management center**, in the Resource section, Click **Connected resources**
- [ ] You can see list of connected resources
![List models deployed](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/gwbingconnectedinlist.png)

- [ ] Copy the "Name" of the "Grounding with Bing Search" connection (Corresponding Target columns is https://api.bing.microsoft.com/) and paste into .env file as the value for GROUNDING_WITH_BING_CONNECTION_NAME

### 7. Set the values for the TENANT_ID, AZURE_RESOURCE_GROUP and AZURE_SUBSCRIPTION_ID variables

- [ ] Go to [https://portal.azure.com](https://portal.azure.com) and sign into the Azure portal with your Azure credentials.
- [ ] In the top search bar, type **entra id**
- [ ] Select **Microsoft Entra ID** from the search results
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/tenantid1.png)

- [ ] In the Overview section, find **Tenant ID** as shown in the screenshot
- [ ] Copy Tenant ID and paste into .env file as the value for TENANT_ID
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/tenantid2.png)

- [ ] In the top search bar, type **resource groups**
- [ ] Select **Resource groups** from the search results
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/rg1.png)

- [ ] Copy the resource group name (eg azureaiworkshoprg) and paste into .env file as the value for AZURE_RESOURCE_GROUP
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/rg2.png)

- [ ] Click the resource group name to go to the next page and Overview section
- [ ] Copy the Subscription ID as shown in the screeshot and paste into .env file as the value for
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/sub1.png)

### 8. Set the values for the AZURE_AI_SEARCH_ENDPOINT and AZURE_AI_SEARCH_API_KEY variables

- [ ] In the top search bar, type **ai search**
- [ ] Select **AI Search** from the search results
- [ ] You will see the AI Search service that you have created (eg ai-search-53439517)
- [ ] Click on the name
- [ ] Next screen, In the Overview section, find the **Url** as shown in below screenshot
- [ ] Copy and paste into .env file as the value for AZURE_AI_SEARCH_ENDPOINT
  ![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/aisearchurl.png)
- [ ] On the left side Menu, expand **Security + networking**
- [ ] Click **Keys**
- [ ] Copy the key as shown in the screenshot for this Lab, and paste into .env file as the value for AZURE_AI_SEARCH_API_KEY
  ![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/aisearchapikey.png)

### 9. Set the values for the COSMOS_ENDPOINT and COSMOS_KEY variables

- [ ] In the top search bar, type **cosmos**
- [ ] Select **Azure Cosmos DB** from the search results
- [ ] You will see the Azure Cosmos DB that you have created (eg cosmos-53439517)
- [ ] Click on the name
- [ ] Next screen, at the left side, expand **Settings**, Click **Keys**
- [ ] Copy **URI** and paste into .env file as the value for COSMOS_ENDPOINT
- [ ] Toggle the eye icon at the far right of **PRIMARY KEY**, Copy the key and paste into .env file as the value for COSMOS_KEY
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/cosmos_ep_key.png)

### 10. Set the value for the SQL_SERVER variable

- [ ] In the top search bar, type **sql**
- [ ] Select **SQL Servers** from the search results
- [ ] You will see the SQL Server that you have created (eg sqlserver-53439517)
- [ ] Click on the name
- [ ] Next screen, in the **Overview** section, Copy **Server Name** and paste into .env file as the value for SQL_SERVER
![Go to project](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/sqlserver.png)

### 11. Set additional Microsoft Foundry Values (for Advance Fine-Tuning Lab)

- [ ] Go to your Microsoft Foundry resource in the Azure portal
- [ ] In the **Overview** section, copy and save the following values:
  - Microsoft Foundry Resource Name

    ![Screenshot of the Azure OpenAI resource management pane](Lab%2005%20-%20Fine-Tuning/Advance%20Fine-Tuning/images/screenshot-foundry-overview-1.png)

- [ ] Go to **Resource Management** section, click **Keys and Endpoint** sub-section
- [ ] Click **OpenAI**
- [ ] Copy and save the following values:
  - **Endpoint URL**.
    - Select this endpoint URL: **Language APIs**

    ![Screenshot of the Azure OpenAI resource management pane.](Lab%2005%20-%20Fine-Tuning/Advance%20Fine-Tuning/images/screenshot-foundry-keys-and-endpoint.png)

- [ ] Open the **.env** file located in the root folder.
- [ ] Paste saved values to the variables in the file **.env**:
  - AZURE_OPENAI_BASE_URL_ENDPOINT = "_<Foundry_Endpoint_URL>_"
  - AI_FOUNDRY_NAME = "_<Foundry_Name>_"
- [ ] Save the file and close it.

## ✅ Completed

- [ ] You should have the .env setup complete.

===
# Run requirements file to install the relevant packages

## Introduction 

This lab walks you through the installation of the required packages needed to run the rest of the lab

## Objectives 
In this lab we will:
-	Install the required packages needed to run the rest of the lab.


## Estimated Time 

5 minutes 

## Scenario
Install the required packages needed to run the rest of the lab.

## Pre-requisites
No Pre-requisites

## 🛠️ Tasks

### 1. Launch the Visual Studio Code
- [ ] Launch the Visual Studio Code in the LAB VM.
- [ ] Open the LABS folder, if not opened already
- [ ] Select **06-pip-install-requirements.ipynb** to open the notebook
- [ ] **Select kernel** on the right top side of the notebook
- [ ] Select **Python 3.12.10** for this LAB
![Go to resource](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/py31210.png)
- [ ] run the contents of the file. 

===
# Quick Start Guide - Azure AI Foundry

## Introduction 

This lab provides a hands-on introduction to Azure AI Foundry. You'll learn the fundamentals of working with Azure AI projects, from authentication to creating intelligent agents with computational capabilities.

## Objectives 
In this lab we will:
- Initialize the AI Project client with proper authentication
- List available models in your Azure AI project
- Create simple chat completion requests
- Create a basic AI agent with code interpreter capabilities
- Handle basic error scenarios and troubleshooting

## Estimated Time 

30 minutes 

## Scenario

You are a developer getting started with Azure AI Foundry. You need to establish connectivity, understand the basic SDK usage patterns, and create your first intelligent agent that can perform calculations and generate visualizations.

## Pre-requisites

- Completed environment setup from previous notebook
- Azure credentials configured
- **azure-ai-projects** package version 1.0.0b12 or greater (`azure-ai-projects>=1.0.0b12`)
- **Azure AI User role** assigned to your account for the Azure AI Foundry project
  - See [Azure AI Foundry RBAC documentation](https://learn.microsoft.com/en-us/azure/ai-foundry/concepts/rbac-azure-ai-foundry?pivots=fdp-project) for more details on role assignments
- `.env` file configured with AI_FOUNDRY_PROJECT_ENDPOINT and MODEL_DEPLOYMENT_NAME
- Azure AI Foundry project already provisioned

## Tasks





### Task 1 - Import Required Libraries and Setup

Configure authentication and import necessary Azure SDK libraries:
- [ ] Import Azure SDK libraries (azure.identity, azure.ai.projects)
- [ ] Import standard Python libraries for environment variables and JSON handling
- [ ] Initialize Azure credentials using DefaultAzureCredential with tenant-specific authentication
- [ ] Create a robust credential chain with fallbacks for authentication
- [ ] Load environment variables from `.env` file

### Task 2 - Initialize AI Project Client

Create and configure the AI Project client:
- [ ] Load project connection string from environment variables
- [ ] Create AIProjectClient using the connection string and credentials
- [ ] Establish connection to your Azure AI Foundry project
- [ ] Handle authentication errors and provide troubleshooting guidance

Key steps:
- [ ] Copy `.env.example` file to `.env` in the root directory
- [ ] Update the project connection string in your `.env` file
- [ ] Ensure you have a Foundry Project already provisioned in Azure AI Foundry
- [ ] Find your project connection string in [Azure AI Foundry](https://ai.azure.com) under project settings

### Task 3 - Create a Simple Completion

Make your first chat completion request:
- [ ] Get Azure OpenAI client from the AI Project client
- [ ] Use the MODEL_DEPLOYMENT_NAME from your `.env` file
- [ ] Create a simple chat completion request
- [ ] Handle responses and error scenarios
- [ ] Understand the difference between different model providers (Azure OpenAI, Microsoft models, etc.)

The example demonstrates:
- Basic message structure with user role
- Simple health-related question for testing
- Error handling and troubleshooting tips

### Task 4 - Create a Simple Agent

Explore Azure AI Agent Service capabilities:
- [ ] Learn about Azure AI Agent Service as a fully managed service
- [ ] Create an agent with code interpreter tool capabilities
- [ ] Configure agent instructions and behaviors
- [ ] Create conversation threads for multi-turn interactions
- [ ] Process agent requests and handle responses

Agent capabilities demonstrated:
- BMI calculation using US metrics
- Data visualization creation
- File generation and saving
- Agent cleanup and resource management

The example shows how agents can:
- Answer questions using natural language understanding
- Perform computational tasks through code interpreter
- Generate visualizations and save them as files
- Combine language understanding with computational capabilities

### Laboratory Features

**Authentication Patterns:**
- Tenant-specific authentication setup
- Credential chain creation with fallbacks
- Azure CLI and Interactive Browser authentication
- Environment variable management

**Error Handling:**
- Comprehensive error messages and troubleshooting guidance
- Authentication failure recovery
- Missing configuration detection
- Model deployment verification

**Resource Management:**
- Proper agent cleanup after use
- File saving and management
- Thread and message handling
- Connection string validation

## Execution Instructions

1. **Initial Setup**:
   - [ ] Ensure you have completed the environment setup from the previous notebook
   - [ ] Configure environment variables in the `.env` file at repository root
   - [ ] Verify your Azure AI User role assignment

2. **Execution**:
   - [ ] Open the `setup and quick_start.ipynb` notebook in Azure AI Foundry or VS Code
   - [ ] Execute cells sequentially, following the authentication flow
   - [ ] Test the simple completion example
   - [ ] Create and interact with the BMI calculator agent

3. **Troubleshooting**:
   - [ ] Verify your AI_FOUNDRY_PROJECT_ENDPOINT is correctly set
   - [ ] Ensure MODEL_DEPLOYMENT_NAME matches your deployed model
   - [ ] Check your Azure AI User role permissions
   - [ ] Review authentication error messages for guidance

## Expected Results

Upon completing this laboratory, you will:
- Successfully authenticate with Azure AI Foundry
- Understand the AI Project client initialization patterns
- Make basic chat completion requests
- Create and interact with AI agents
- Handle common error scenarios
- Save generated files and visualizations locally

## Additional Resources

- [Azure AI Foundry Documentation](https://learn.microsoft.com/azure/ai-foundry/)
- [Azure AI Foundry RBAC](https://learn.microsoft.com/en-us/azure/ai-foundry/concepts/rbac-azure-ai-foundry)
- [Azure AI Projects SDK](https://learn.microsoft.com/python/api/azure-ai-projects/)
- [Azure AI Agent Service](https://learn.microsoft.com/azure/ai-foundry/concepts/ai-agents)
- [Authentication with Azure SDK](https://learn.microsoft.com/python/api/azure-identity/)

## Next Steps

After completing this laboratory, you will be prepared to advance to more specialized Azure AI Foundry labs, including advanced agent scenarios, tool integration, and multi-modal capabilities.

===
# Evaluations with Azure AI Foundry

## Introduction 

This lab provides hands-on experience with Azure AI Foundry's evaluation capabilities. You'll learn how to evaluate model performance using both local and cloud-based evaluators with health & fitness themed examples.

## Objectives 
In this lab we will:
- Perform local evaluations using F1 Score and AI-assisted evaluators
- Submit evaluation jobs to Azure AI Foundry for scalable processing
- Analyze evaluation results and metrics in the Azure AI Foundry portal

## Estimated Time 

45 minutes 

## Scenario

You are an AI developer responsible for evaluating AI applications in production. You need to ensure quality through systematic evaluation of model outputs using health and fitness domain examples.

## Pre-requisites

- Completed environment setup from previous notebook
- Azure credentials configured
- **azure-ai-projects** package version 1.1.0b2 or greater (`azure-ai-projects>=1.1.0b2`)
- **Azure AI User role** assigned to your account for the Azure AI Foundry project
  - See [Azure AI Foundry RBAC documentation](https://learn.microsoft.com/en-us/azure/ai-foundry/concepts/rbac-azure-ai-foundry?pivots=fdp-project) for more details on role assignments
- `.env` file configured with AI_FOUNDRY_PROJECT_ENDPOINT and MODEL_DEPLOYMENT_NAME
- Azure AI Foundry project already provisioned

## Tasks

### Task 1 - Environment Setup and Basic Configuration

Configure evaluation environment and test basic AI operations:
- [ ] Load environment variables and initialize AIProjectClient with browser-based authentication
- [ ] Perform basic LLM calls using Azure OpenAI client
- [ ] List and inspect project connections (Azure OpenAI, Azure AI Services)
- [ ] Verify model deployments and connectivity

Key components:
- Azure CLI credential authentication
- Project client initialization with health & fitness themed examples
- Connection validation and troubleshooting

### Task 2 - Local Evaluation Setup

Perform local model evaluations using built-in metrics:
- [ ] Create synthetic health & fitness Q&A evaluation data
- [ ] Configure F1Score evaluator for precision-recall analysis
- [ ] Set up AI-assisted Relevance evaluator (when Azure OpenAI is available)
- [ ] Run local evaluations with error handling and fallbacks
- [ ] Generate comprehensive evaluation reports

Evaluation features:
- NLP-based metrics (F1 Score) for basic quality assessment
- AI-assisted evaluators for relevance and coherence
- Robust error handling for missing dependencies
- Health and fitness domain-specific test data

### Task 3 - Cloud-based Evaluation

Submit evaluations to Azure AI Foundry for scalable processing:
- [ ] Configure Azure AI Project client for cloud evaluations
- [ ] Upload evaluation data and results to Azure AI Foundry
- [ ] Monitor evaluation jobs in the Azure AI Foundry portal
- [ ] Access advanced metrics and visualization capabilities
- [ ] Compare local vs. cloud evaluation results

Cloud evaluation advantages:
- Scalability for large datasets
- Advanced visualization in Azure AI Foundry portal
- Support for all built-in and custom evaluators
- Integration with Azure AI Foundry project workflows

### Laboratory Features

**Evaluation Framework:**
- Multiple evaluation types: NLP metrics and AI-assisted evaluators
- Quality metrics: F1 Score, Relevance, Groundedness, Coherence, Fluency
- Risk and safety evaluators for responsible AI practices
- Local and cloud evaluation workflows

**Error Handling and Resilience:**
- Comprehensive error handling for authentication failures
- Fallback mechanisms for missing services or credentials
- Clear troubleshooting guidance and status reporting
- Graceful degradation when cloud services are unavailable

## Execution Instructions

1. **Initial Setup**:
   - [ ] Ensure you have completed the environment setup from previous notebooks
   - [ ] Configure environment variables in the `.env` file at repository root
   - [ ] Verify your Azure AI User role assignment

2. **Evaluation Execution**:
   - [ ] Open the `1-evaluation.ipynb` notebook in Azure AI Foundry or VS Code
   - [ ] Execute data creation and local evaluation cells
   - [ ] Test cloud evaluation submission (requires proper Azure AI Foundry setup)
   - [ ] Review evaluation results and metrics

3. **Troubleshooting**:
   - [ ] Verify your AI_FOUNDRY_PROJECT_ENDPOINT is correctly set
   - [ ] Check Azure AI User role permissions for evaluation operations
   - [ ] Review authentication error messages for guidance

## Expected Results

Upon completing this laboratory, you will:
- Perform both local and cloud-based evaluations of AI models
- Analyze evaluation metrics and interpret quality assessments
- Implement production-ready evaluation workflows

## Additional Resources

- [Azure AI Evaluation SDK](https://learn.microsoft.com/python/api/azure-ai-evaluation/azure.ai.evaluation)
- [Evaluating Generative AI Applications](https://learn.microsoft.com/azure/ai-foundry/how-to/evaluate-generative-ai-app)

## Next Steps

After completing this laboratory, you will be prepared to implement production-ready evaluation systems for AI applications, including custom evaluators and enterprise-scale evaluation workflows.

===
# Azure AI Agents Tutorial Collection

## Introduction 

This lab provides a comprehensive hands-on introduction to Azure AI Agents using Azure AI Foundry SDKs. You'll learn how to build, deploy, and manage intelligent agents that can perform various tasks from basic conversations to complex multi-agent orchestration systems with health and fitness themed examples.

## Objectives 
In this lab we will:
- Initialize Azure AI projects and create specialized health and fitness advisor agents
- Implement agents with computational capabilities using code interpreter tools
- Enable document search and knowledge retrieval through file search
- Connect agents to real-time web information using Bing Search integration
- Integrate agents with enterprise search using Azure AI Search
- Build sophisticated multi-agent systems for ticket triage and orchestration
- Implement comprehensive observability and tracing for multi-agent workflows

## Estimated Time 

120 minutes (2 hours)

## Scenario

You are an AI developer tasked with building a comprehensive agent ecosystem for a health and fitness platform. Starting with basic conversational agents, you'll progressively add computational capabilities, knowledge retrieval, real-time information access, and finally orchestrate multiple agents to work together in complex workflows.

## Pre-requisites

- Azure subscription with Azure AI services enabled
- Python 3.8 or higher
- VS Code or Jupyter Notebook environment
- **azure-ai-projects** package version 1.0.0b12 or greater (`azure-ai-projects>=1.0.0b12`)
- **Azure AI User role** assigned to your account for the Azure AI Foundry project
  - See [Azure AI Foundry RBAC documentation](https://learn.microsoft.com/en-us/azure/ai-foundry/concepts/rbac-azure-ai-foundry?pivots=fdp-project) for more details on role assignments
- `.env` file configured with AI_FOUNDRY_PROJECT_ENDPOINT and MODEL_DEPLOYMENT_NAME
- Azure AI Foundry project already provisioned

## Tasks

---

## Exercise 1: Agent Basics
**Learn the fundamentals of Azure AI Agents using [1-basics.ipynb](Lab%2002%20-%20Agents/1-basics.ipynb)**

1. [ ] Initialize Azure AI projects using `azure-ai-projects` SDK
2. [ ] Create a specialized health and fitness advisor agent with safety disclaimers
3. [ ] Manage conversation threads and message handling
4. [ ] Implement OpenTelemetry logging and tracing for monitoring
5. [ ] Apply best practices for agent creation and configuration

**Key Learning Outcomes:**
- Agent creation and configuration patterns
- Thread management for multi-turn conversations
- Basic interaction patterns and message handling
- Telemetry and monitoring implementation

---

## Exercise 2: Code Interpreter Integration
**Add computational capabilities to your agents using [2-code_interpreter.ipynb](Lab%2002%20-%20Agents/2-code_interpreter.ipynb)**

1. [ ] Create agents with code interpreter tools for mathematical computations
2. [ ] Upload and process files for complex health and fitness calculations
3. [ ] Handle BMI calculations, nutritional analysis, and fitness metrics
4. [ ] Manage file attachments at message level for data processing
5. [ ] Demonstrate mathematical analysis capabilities with visualizations

**Key Learning Outcomes:**
- Code interpreter tool integration and configuration
- File upload and processing workflows
- Mathematical computations and data analysis
- Error handling in code execution environments

---

## Exercise 3: File Search and Knowledge Retrieval
**Enable document search and knowledge retrieval using [3-file-search.ipynb](Lab%2002%20-%20Agents/3-file-search.ipynb)**

1. [ ] Upload health and nutrition documents to Azure AI Agent service
2. [ ] Create agents with file search capabilities for knowledge retrieval
3. [ ] Search through uploaded health resources with semantic queries
4. [ ] Implement citation and reference systems for source tracking
5. [ ] Clean up resources and manage file lifecycle effectively

**Key Learning Outcomes:**
- File upload for agent knowledge base creation
- Document search and retrieval mechanisms
- Citation management and source tracking
- Resource cleanup patterns and lifecycle management

---

## Exercise 4: Bing Search Grounding
**Connect agents to real-time web information using [4-bing_grounding.ipynb](Lab%2002%20-%20Agents/4-bing_grounding.ipynb)**

1. [ ] Configure Bing Search integration for real-time information access
2. [ ] Create web-grounded health and fitness agents with current data
3. [ ] Access current health trends, research, and fitness information
4. [ ] Handle real-time queries with web context and fact-checking
5. [ ] Compare responses with and without grounding to understand benefits

**Key Learning Outcomes:**
- Bing Search integration and configuration
- Real-time information retrieval patterns
- Grounding vs. non-grounded response comparison
- External data source integration strategies

---

## Exercise 5: Azure AI Search Integration
**Advanced search integration with Azure AI Search using [5-agents-aisearch.ipynb](Lab%2002%20-%20Agents/5-agents-aisearch.ipynb)**

1. [ ] Set up Azure AI Search indexes for enterprise knowledge bases
2. [ ] Create agents with Azure AI Search tool integration
3. [ ] Implement sophisticated search queries for fitness equipment and knowledge
4. [ ] Handle complex search scenarios with filtering and ranking
5. [ ] Demonstrate enterprise search patterns and best practices

**Key Learning Outcomes:**
- Azure AI Search integration and configuration
- Custom search tool creation and deployment
- Enterprise knowledge base queries and management
- Advanced search patterns and optimization techniques

---

## Exercise 6: Multi-Agent Solution
**Build sophisticated multi-agent systems using [6-multi-agent-solution.ipynb](Lab%2002%20-%20Agents/6-multi-agent-solution.ipynb)**

1. [ ] Design and implement a multi-agent ticket triage system
2. [ ] Create three specialist agents for priority, team assignment, and effort estimation
3. [ ] Build an orchestrator agent that coordinates specialist agents
4. [ ] Use connected agent tools for seamless agent-to-agent communication
5. [ ] Process complex support tickets through automated triage workflows

**Key Learning Outcomes:**
- Multi-agent system architecture and design
- Agent specialization and role definition
- Agent orchestration and coordination patterns
- Connected agent tools implementation

## 🔗 Additional Resources

For more examples, please visit:
**[Azure AI Agents Labs](https://github.com/Azure/azure-ai-agents-labs)**

For pro-code advanced scenarios, explore the `agents-with-mcp/` directory for Model Context Protocol integration examples.

===
# AI Language Service with Agents Lab

## Introduction 

In this lab you will interact with the Azure AI language cognitive service API using the Logic App low code workflow designer. 
You will create 2 low code Logic Apps:

(1) for PII removal

(2) for Language detection and translation

For advanced/bonus content you will use these Logic Apps to create AI agents that work together to prepare data. 


## Objectives 

The objectives in this lab we will be:

-	Learn how to call the Azure AI langugage cognitive service API for different tasks 
- Process data via the API as part of a business workflow

## Estimated Time 

60 minutes 

## Scenario

You work for Contoso, a multinational e-commerce company that receives thousands of customer feedback messages daily in various languages. These messages often contain sensitive personal identifying information (PII) and your company wants to ensure all messages have the language detected, PII removed to ensure privacy compliance, translation to English for centralized analytics. 

## Pre-requisites

Note: This Low Code lab requires access to:

- Azure subscription
- A Microsoft Foundry Project
-	The AI Language Service in Azure AI Foundry
-	Access to provision Logic Apps and resources in Azure
-	Azure OpenAI (bonus/advanced only for Agent creation)

_Note: See [Prequisite - AI Foundry Resource Creation](#create-microsoft-foundry-project) folder to ensure Microsoft Foundry Project is correctly set up._

## Overview

In this lab, you will interact with the Azure AI language cognitive service API using the Logic App low code workflow designer.  
You will create **2 low code Logic Apps**:

1. **PII removal**
1. **Language detection and translation**

For advanced/bonus content, you can use these Logic Apps to create AI agents.

## Copy the Access Language API Key and Endpoint URL

1. [ ] Login to Azure AI Foundry: https://ai.azure.com/. 

  _Note: Make sure you are logged in the MS Foundry project created in the prereqs_
  
1. [ ] Go to the Overview page, check the **API Key** and **Azure AI Services** endpoint URL.
![Alt text](Lab%2003%20-%20AI-Language/Images/SaveEndpointAPIKey.png)

1. [ ] Store these values:  
   - [ ] **API Key**
   - [ ] **Azure AI Services endpoint**
1. [ ] You will use these details to connect to the Language Service.

---

## Create a PII Redaction Logic App

This Logic App receives text input and outputs the text with PII redacted. It creates an endpoint callable from other applications.

1. [ ] In https://portal.azure.com/, navigate to **+ Create a resource** and search for _Logic App_, then click **Add**. 
1. [ ] Under plan, choose **Multi-tenant** under Consumption, then click **Select**.
1. [ ] Select the same Resource Group as your AI Foundry project and follow the prompts to create a Logic App resource. For name for the Azure Logic App resource. Please use this name as the lab environment will not let you use another name - +++**logiapp1-@lab.LabInstance.Id**+++ (eg logiapp1-53439517).![Alt text](Lab%2003%20-%20AI-Language/Images/CreateLogicApp.png). 
1. [ ] Once provisioned, select **Go to Resource** in the Azure Portal to open the new Logic App.
1. [ ] Expand Development tools and open **Logic App Designer**. Select **Add a trigger**.

 ![Alt text](Lab%2003%20-%20AI-Language/Images/AddTrigger.png)
 ![Alt text](Lab%2003%20-%20AI-Language/Images/RequestIsReceived.png)

1. [ ] Search triggers for “When an HTTP request is received” and select it.
1. [ ] Under Request Body JSON Schema, add:
   
 ```json
    {
      "type": "object",
      "properties": {
        "HTTP_URI": {
          "description": "URI for HTTP Request",
          "type": "string"
        },
        "HTTP_request_content": {
          "description": "Content or Body of the HTTP Request",
          "type": "string"
        }
      }
    }
  ```
    
1. [ ] In the description field, add:  
   _When a request is received, review the message for PII data and redact it with ******._
   ![Alt text](Lab%2003%20-%20AI-Language/Images/DescFieldRequestRecieved.png)
1. [ ] Click the plus sign to add an action, then **select Add an action**. 

![Alt text](Lab%2003%20-%20AI-Language/Images/AddAnAction.png)

1. [ ] Search for _Parse JSON_ and select the option under Data operations. 

![Alt text](Lab%2003%20-%20AI-Language/Images/ParseJSON.png)

1. [ ] Under Content, select the Dynamic content lightning bolt, and under When a HTTP request is received, select Body.

![Alt text](Lab%2003%20-%20AI-Language/Images/DynamicContentLightningBolt.png)
![Alt text](Lab%2003%20-%20AI-Language/Images/SelectBody.png)

1. [ ] Under the Schema box, paste in:

    ```json
    {
      "type": "object",
      "properties": {
        "description": {
          "type": "string"
        }
      }
    }
    ```

1. [ ] The final screen should look like the screenshot below:

![Alt text](Lab%2003%20-%20AI-Language/Images/FinalScreenshot.png)  

1. [ ] Select **Save** on the canvas.
1. [ ] Click the plus sign to add an action, then **select Add an action**.

![Alt text](Lab%2003%20-%20AI-Language/Images/AddAnAction2.png)

1. [ ] Search for _Azure Language_ and then click **See more**.

![Alt text](Lab%2003%20-%20AI-Language/Images/Seemore.png)

1. [ ] Select **Detect Personal Information (V3.1)**.

![Alt text](Lab%2003%20-%20AI-Language/Images/DetectPersonalInformation.png)

1. [ ] Select Authentication Type as **Api Key** and add the API Key and Endpoint (Target) you saved earlier.
![Alt text](Lab%2003%20-%20AI-Language/Images/SaveEndpointAPIKey.png)
![Alt text](Lab%2003%20-%20AI-Language/Images/AfterDetectPersonalInformation.png)

1. [ ] Select the Detect Personal Information action. 
Under Parameters, search for the Documents heading. Select **+ Add new item**.  

![Alt text](Lab%2003%20-%20AI-Language/Images/AddaNewItem.png)

Insert:
- [ ] Id-1 = 1
- [ ] Text-1 = Insert expression (fx)

![Alt text](Lab%2003%20-%20AI-Language/Images/InsertExpression.png)

1. [ ] In the pop-up expression window, paste:  
    ```
    body('Parse_JSON')['description']
    ```
![Alt text](Lab%2003%20-%20AI-Language/Images/BodyParseJSONDesc.png)
    Click Add

1. [ ] Click the plus sign to add the final action, then **select Add an action**.

![Alt text](Lab%2003%20-%20AI-Language/Images/AddAnAction.png)

1. [ ] Search for _Response_ and select the option under Request.

![Alt text](Lab%2003%20-%20AI-Language/Images/RequestResponse.png)

1. [ ] Fill in the parameters for the Response, leaving Status Code as 200.
1. [ ] In the Body, select the expression using the fx icon and paste:
    ```
    body('Detect_Personal_Information_(V3.1)')['documents'][0]['redactedText']
    ```
    Click Add
![Alt text](Lab%2003%20-%20AI-Language/Images/fx.png)

![Alt text](Lab%2003%20-%20AI-Language/Images/PasteExpression.png)

1. [ ] Save your Logic App.

1. [ ] Select the arrow next to Run, then **Run with payload**.

![Alt text](Lab%2003%20-%20AI-Language/Images/RunwithPayload.png)

1. [ ] In the Body of the Run with payload pane, paste:
    ```json
    {
      "description": "My phone number is (04) 12 345 678"
    }
    ```

1. [ ] Confirm that the output displays the redacted phone number.

![Alt text](Lab%2003%20-%20AI-Language/Images/RunwithPayloadoutput.png)

1. [ ] The final completed flow should look like the image below:

![Alt text](Lab%2003%20-%20AI-Language/Images/PIIRedactionFlow.png)

---

## Create a Translation Logic App

This Logic App receives text, detects the language, and outputs the text in English.

1. [ ] In https://portal.azure.com/, search for _Logic Apps_ and select the option.

![Alt text](Lab%2003%20-%20AI-Language/Images/LogicApp.png)

![Alt text](Lab%2003%20-%20AI-Language/Images/LogicAppsAdd.png)

1. [ ] Click **+ Add** to add a new Logic App and choose Multi-tenant under Consumption, then click **Select**.
1. [ ] Ensure you are selecting the same region and resource group as your Foundry project. Name your Logic App `EnglishTranslation`.
1. [ ] Review and create the Logic App, then select **Go to resource** once provisioned.
1. [ ] Under development tools, select **Logic app designer** and then **Add a trigger**.

![Alt text](Lab%2003%20-%20AI-Language/Images/AddaTrigger2.png)

1. [ ] Search triggers for “When an HTTP request is received” and select it.
1. [ ] Under Request Body JSON Schema, add:

```json
{
    "type": "object",
    "properties": {
      "HTTP_URI": {
        "description": "URI for HTTP Request",
        "type": "string"
      },
      "HTTP_request_content": {
        "description": "Content or Body of the HTTP Request",
        "type": "string"
      }
    }
}
```

1. [ ] In the description field, add:  
   _Receives an HTTP request in the description field of some text. Then translates that text to English._

![Alt text](Lab%2003%20-%20AI-Language/Images/DescFieldRequestRecieved2.png)

1. [ ] Select **Save**.
1. [ ] Click the plus sign to add an action, then **select Add an action**.

![Alt text](Lab%2003%20-%20AI-Language/Images/AddAnAction.png)

1. [ ] Search for _Parse JSON_ and select the option under Data operations.

![Alt text](Lab%2003%20-%20AI-Language/Images/ParseJSON.png)

1. [ ] Under Content, select the Dynamic content lightning bolt, and under When a HTTP request is received, select Body.

![Alt text](Lab%2003%20-%20AI-Language/Images/DynamicContentLightningBolt.png)

![Alt text](Lab%2003%20-%20AI-Language/Images/SelectBody.png)

1. [ ] Under the Schema box, paste in:

```json
{
    "type": "object",
    "properties": {
        "description": {
          "type": "string"
        }
    }
}
```

1. [ ] The final screen should look like the screenshot below:

![Alt text](Lab%2003%20-%20AI-Language/Images/FinalScreenshot2.png)

1. [ ] Select **Save** on the canvas.
        
1. [ ] Click the plus sign to add an action, then **select Add an action**.

![Alt text](Lab%2003%20-%20AI-Language/Images/AddAnAction.png)

1. [ ] Search for _Azure Language_ and then click **See more**.(This step is to understand what is available). Once reviewed, go back to main search and follow the steps below.
1. [ ] Search for _Microsoft Translator V3_ and then click **See more**.
1. [ ] Select **Translate Text**. Create the connection using the same API Key and Resource name (not the full Endpoint) from Foundry.

![Alt text](Lab%2003%20-%20AI-Language/Images/TranslateText.png)

Note that the Translator Resource Name must be the part highlighted in the screenshot below:

![Alt text](Lab%2003%20-%20AI-Language/Images/TranslatorConnectionTranslatorResourceName.png)


1. [ ] Under Parameters, set:
    - [ ] **Source Language:** Auto-detect
    - [ ] **Target Language:** English
    - [ ] **Body Text-1:** Choose expression (fx)  

![Alt text](Lab%2003%20-%20AI-Language/Images/TranslateTextfx.png)

In the expression field, paste:  

```
body('Parse_JSON')['description']
```

Then click **Add**

![Alt text](Lab%2003%20-%20AI-Language/Images/TranslateTextfx1.png)


1. [ ] Click **Save**.
1. [ ] Click the plus sign to add the final action, then **select Add an action**.

![Alt text](Lab%2003%20-%20AI-Language/Images/AddAnAction2.png)

1. [ ] Search for _Response_ and select the option under Request.

![Alt text](Lab%2003%20-%20AI-Language/Images/RequestResponse.png)

1. [ ] Fill in the parameters for the Response, leaving Status Code as 200.
1. [ ] In the Body, select the expression using the fx icon and paste:
![Alt text](Lab%2003%20-%20AI-Language/Images/fx.png)
    ```
    body('Translate_text')[0]['TranslatedText']
    ```
![Alt text](Lab%2003%20-%20AI-Language/Images/TranslateTextfx3.png)
![Alt text](Lab%2003%20-%20AI-Language/Images/Response.png)

1. [ ] Save your Logic App.
1. [ ] Select the arrow next to Run, then **Run with payload**.
![Alt text](Lab%2003%20-%20AI-Language/Images/run.png)

1. [ ] In the Body of the Run with payload pane, paste:
```json
    {
       "description" : "Mi número de teléfono es (04) 12 345 678"
    }
    {
       "HTTP_request_content" : "Mi número de teléfono es (04) 12 345 678"
    }
```

1. [ ] Confirm the output displays the translated text.

![Alt text](Lab%2003%20-%20AI-Language/Images/RunwithPayload2.png)

1. [ ] The final completed flow should look like the image below:

![Alt text](Lab%2003%20-%20AI-Language/Images/EnglishTranslationFlow.png)

---

## Advanced / Bonus Content

You work for Contoso, a multinational e-commerce company that receives thousands of customer feedback messages daily in various languages. These messages often contain sensitive PII. Your company wants to ensure all messages have the language detected, PII removed, and are translated to English for centralized analytics.

You will create **2 agents** using Azure AI Foundry:

1. **Translation Agent**
1. **PII Redaction Agent**

---

### Update your Logic App flows to accept the format from AI Foundry

1. [ ] In the Azure Portal (https://portal.azure.com/) first open your EnglishTranslation flow, in edit mode click on the **Translate Text** box and click the cross next to the dynamic input, _Body Description_ to remove it.

![Alt text](Lab%2003%20-%20AI-Language/Images/ChangeInputEnglishTranslationBefore.png)

1. [ ] Put the cursor after the "Text": and then click on the _fx_ function option that appears. In the Dynamic Content box select Http_request_content then click Add. Click outside of the flow and press save. Ensure you have saved the changes to the flow. 

![Alt text](Lab%2003%20-%20AI-Language/Images/ChangeInputEnglishTranslationAfter.png)

1. [ ] Repeat this step for your PII Redaction flow , in edit mode click on the **Detect Personal Information (V3.1)** box and click the cross next to the dynamic input, _Body Description_ to remove it.

![Alt text](Lab%2003%20-%20AI-Language/Images/PIIRedactionFlowBefore.png)

1. [ ] Put the cursor after the "Text": and then click on the _fx_ function option that appears. In the Dynamic Content box select Http_request_content then click Add. Click outside of the flow and press save. Ensure you have saved the changes to the flow. 

![Alt text](Lab%2003%20-%20AI-Language/Images/PIIRedactionFlowAfter.png)

---

### Deploy an Azure OpenAI Resource for Your Project

1. [ ] In your Azure AI Foundry (https://ai.azure.com/) project, click on **Agents**.

![Alt text](Lab%2003%20-%20AI-Language/Images/Agents.png)

1. [ ] If the Deploy a Model doesn’t pop up, select **Deploy model**.
1. [ ] Ensure you select a model that supports agents in your region:  
   https://learn.microsoft.com/en-us/azure/ai-services/agents/concepts/model-region-support
1. [ ] Search for **gpt-4.1** and select **Confirm**.
![Alt text](Lab%2003%20-%20AI-Language/Images/confirmgpt4.1.png)
1. [ ] The Agent screen should open with your first agent automatically created.
![Alt text](Lab%2003%20-%20AI-Language/Images/createdagent.png)

---

### Create a Translation Agent

> **Note:** When starting agent creation you may see an **Agent Deprecation Notice** dialog stating that Agents (classic) are being retired. Choose **Create agent (classic)** and confirm the legacy-agent warning to follow the steps below, which describe the classic Setup panel (rename / Instructions / Description / Actions).

1. [ ] Select the Agent checkbox and rename the Agent to **EnglishTranslationAgent**.
![Alt text](Lab%2003%20-%20AI-Language/Images/TranslationAgent.png)
1. [ ] In the Instructions, paste:
    > Send all incoming messages that are not in English to the EnglishTranslation action. If the entry is already in English, return the original text unchanged. Ensure the output maintains the structure and formatting of the input data.
1. [ ] In the Description, paste:
    > This agent uses the AI Language Services to translate incoming information to English for downstream analytics.
1. [ ] Next to Actions, select **+ Add**.

1. [ ] In the pop-up modal window, select **Azure Logic Apps Your Actions**.

![Alt text](Lab%2003%20-%20AI-Language/Images/AddAction.png)

1. [ ] Your Logic Apps from part one should appear. Select **English Translation**.  
   _Note: If your Logic App does not appear, ensure it is in the same subscription and resource group as Foundry, the Logic App HTTP request description is in place, and the workflow contains a Request Trigger and ends with a Response Action._
![Alt text](Lab%2003%20-%20AI-Language/Images/EnglishTranslation.png)
1. [ ] On the Resource screen, click **Next**, then on the Schema screen, click **Create**.
1. [ ] On the Agent Setup screen, select **Try in playground**.
1. [ ] Try a sentence in English, then in Spanish:  
   - [ ] `Hello, how are you today?`  
   - [ ] `Hola ¿cómo estás hoy?`
![Alt text](Lab%2003%20-%20AI-Language/Images/RunWithEnglishAgent.png)

1. [ ] Click on View Run Info to show that the translation ran with the Logic App action to support the translation:

![Alt text](Lab%2003%20-%20AI-Language/Images/RunWithLogicApps.png)

1. [ ] **NOTE:** If you see a gateway error you may need to try again as services complete deployment 

---

### Add a PII Redaction Agent

1. [ ] Update the agent instructions to :
    - [ ] **Instructions:**  
      > Send all messages to the PIIRedaction action to have personal information removed. 
Then send all incoming messages with the personal information remoed that are not in English to the EnglishTranslation action. If the entry is already in English, return the original text unchanged. Ensure the output maintains the structure and formatting of the input data.

1. [ ] Next to Actions, click **+ Add** then **Azure Logic Apps**.
1. [ ] Select Azure Logic Apps and choose the Logic App you created for PII redaction (named `logiapp1-64013329`; it appears in the action picker as `logiapp164013329_Tool`, listed separately from `EnglishTranslation_Tool`)
1. [ ] On the basic information screen, add:
    - [ ] **Action Description:**  
      > For any text provided, replace any sensitive or personal identifying information (PII) with *********
1. [ ] On the setup screen, select **Try in playground** and paste in:
    ```
    Hola, me llamo Mateo Gómez. Perdí mi tarjeta de crédito el 17 de agosto y quisiera solicitar su cancelación. Mi última compra fue un plato de pollo a la parmesana en el Restaurante Contoso, cerca del Museo de Hollywood, por $40. A continuación, se detallan mis datos personales para su validación: Profesión: Contador. Número de Seguro Social: 123-45-6788. Fecha de nacimiento: 9-9-1989. Número de teléfono: 949-555-0110. Dirección personal: 1234 Hollywood Boulevard, Los Ángeles, CA. Correo electrónico vinculado: mateo@contosorestaurant.com. Código Swift: CHASUS33XXX.
    ```

1. [ ] The output should look similar to the below:  
 ![Alt text](Lab%2003%20-%20AI-Language/Images/FinalOutputBothAgents.png)

1. [ ] Click on View Run Info to show that the translation ran with both the Logic App actions to support the translation: 
 ![Alt text](Lab%2003%20-%20AI-Language/Images/FinalOutputFlowRuns.png)

===
# Azure AI Vision – Lab

## Introduction

Azure AI Vision is a cloud-based service from Microsoft that uses advanced algorithms to analyze images and extract valuable information. It includes capabilities like face detection, Optical Character Recognition (OCR), image analysis, and video indexing.

> **Note:** The Azure Vision Studio portal now only displays the **Face** feature. OCR, Image Analysis, and Video Indexer capabilities are still accessible through their respective **SDKs and REST APIs**. This lab covers Face Analysis through the portal and provides SDK/API-based exercises for the other services via the accompanying notebook.

## Objectives

In this lab we will walk through:
- Face Analysis (via Vision Studio portal)
- OCR (via SDK/API)
- Image Analysis (via SDK/API)

## Estimated Time

30 minutes

## Scenario

Explore Azure AI Vision services: use the Vision Studio portal for Face Analysis, and the SDK/REST APIs for OCR, Image Analysis, and Video Indexer.

## Pre-requisites

Complete the pre-requisite instructions.

## Tasks

---

## Exercise 1: Provision Azure Resources

1. [ ] Go to +++https://portal.azure.com+++ .
1. [ ] In the top search bar, type **"Microsoft Foundry"**
1. [ ] Select **Microsoft Foundry** from the search results    
    ![Search Microsoft Foundry](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/search_ai_foundry.png)
    

1. [ ] In the left panel, inside the **More services** section, click **Computer Vision**.
1. [ ] Click the **Create** button inside the Computer Vision resource. 
    ![Alt text](Lab%2004%20-%20AI-Vision/Images/create_resource.png).
1. [ ] Inside the **Create Computer Vision** section, use the following values to create the resource:
    - Region: _select a supported region._ You may check the service availability in the [Product Availability by Region - Search for **Azure Vision**](https://azure.microsoft.com/en-us/explore/global-infrastructure/products-by-region/table)
    - Name: ++**cv-@lab.LabInstance.Id**+++ (eg cv-53439517) _Ensure to use this name (++**cv-@lab.LabInstance.Id**+++), you will not be able to use a different name to create the resource. The screen shot provided is just for reference, do not use the name provided in the screenshot below._
    - Pricing Tier:  **Standard S1**
    - Click the policy checkbox.
    - Click **Review + create**
    ![Alt text](Lab%2004%20-%20AI-Vision/Images/create_resource_2.png)

1. [ ] Click **Create**
1. [ ] Access the Vision Studio at [https://portal.vision.cognitive.azure.com/](https://portal.vision.cognitive.azure.com/)
1. [ ] Click the **Sign in** button in the top right section.
1. [ ] You should be inside the Azure Vision Studio (Computer Vision Studio)
    ![Alt text](Lab%2004%20-%20AI-Vision/Images/vision_studio.png)

---

## Exercise 2: Face Analysis

This exercise demonstrates how to use the Azure AI Vision Faces features to detect and analyse human faces in images. 

1. [ ] Inside the **Vision Studio** Portal.
1. [ ] Click on the **Detect faces in an image**.
1. [ ] Click the **Acknowledge** checkbox.
1. [ ] Click the **Please select a resource** link 
    ![Alt text](Lab%2004%20-%20AI-Vision/Images/face_studio.png)

1. [ ] Select the **Subscription** and click **Create a new resource**

    ![Alt text](Lab%2004%20-%20AI-Vision/Images/selectfaceresource.png)

1. [ ] Inside the **Create a new resource**, select the following values:
    - **Name**:  +++**faceresource-@lab.LabInstance.Id**+++ (eg faceresource-53439517). Ensure to use this name, you will not be able to use a different name to create the resource.
    - **Subscription**: _existing subscription_
    - **Resource Group**: _existing resource group_
    - **Location**: _select a region_
    - **Price tier**: S0
    - Click **Create resource**

    ![Alt text](Lab%2004%20-%20AI-Vision/Images/selectfaceresource_2.png)

1. [ ] Click **Confirm**

1. [ ] Select an image and cthen click **JSON** to see the face attributes.
1. [ ] Iteratively click the samples to the right of the box.
    ![Alt text](Lab%2004%20-%20AI-Vision/Images/vision2.png)
1. [ ] Close the Azure vision portal and continue with the lab

---

## Exercise 3: Optical Character Recognition (OCR) via SDK/API

> Warning: **Deprecation Notice:** The Image Analysis 4.0 OCR service is deprecated and will be **retired on September 25, 2028**. Legacy Computer Vision API versions (v1.0-v3.1) will be **retired on September 13, 2026**. Consider migrating to:
> - [Azure AI Document Intelligence - Read model](https://learn.microsoft.com/azure/ai-services/document-intelligence/prebuilt/read) (optimized for documents)
> - [Azure Content Understanding](https://learn.microsoft.com/azure/ai-services/content-understanding/overview) (managed generative solution)

While the OCR feature is no longer available in the Vision Studio portal, the **REST API and SDKs** remain fully functional until the retirement dates above.

The OCR API extracts printed and handwritten text from images such as posters, street signs, product labels, business documents, invoices, and receipts. It supports multiple languages and works with text on various surfaces and backgrounds.

### Set the Azure Computer Vision (Azure AI Vision) variables in the .ENV file

1. [ ] Go to +++https://portal.azure.com+++ 
1. [ ] In the top search bar, type **"Microsoft Foundry"**
1. [ ] Select **Microsoft Foundry** from the search results
    ![Search Microsoft Foundry](Lab%2000%20-%20Prequisite%20-%20AI%20Foundry%20Resource%20Creation/images/search_ai_foundry.png)

1. [ ] In the left panel, inside the **More services**, click **Computer Vision**.
1. [ ] Click the **Computer resource** ++**cv-@lab.LabInstance.Id**+++
1. [ ] In the left panel, inside **Resource Management**, click **Keys and EndPoint**
1. [ ] Copy the values **KEY 1** and **Endpoint**
    ![Alt text](Lab%2004%20-%20AI-Vision/Images/computer_resource_ke.png)

1. [ ] Inside Visual Studio Code, open the **.env** file
1. [ ] Set the following values:
    - **COMPUTER_VISION_API_KEY**: _Paste the **KEY 1** value_
    - **COMPUTER_VISION_ENDPOINT**: _Paste the **Endpoint** value_

1. [ ] Open the **Hands-on exercise:** Open the notebook at [`LabFiles/AI_vision_services_lab.ipynb`](Lab%2004%20-%20AI-Vision/LabFiles/AI_vision_services_lab.ipynb)
1. [ ] Complete **Section 02 - Extract Text from Images** to call the OCR API programmatically.

---

## Exercise 4: Image Analysis via SDK/API

> :warning: **Deprecation Notice:** The Image Analysis 4.0 service is deprecated and will be **retired on September 25, 2028**. Consider migrating to:
> - [GPT models in Microsoft Foundry](https://learn.microsoft.com/azure/ai-foundry/concepts/foundry-models-overview) (flexible custom vision solutions)
> - [Azure Content Understanding](https://learn.microsoft.com/azure/ai-services/content-understanding/overview) (managed generative solution for images, documents, audio, and video)

While Image Analysis is no longer available in the Vision Studio portal, the **REST API and SDKs** remain fully functional until the retirement date above.

The Image Analysis API provides capabilities including:
- **Caption generation** - Generate natural language descriptions of images
- **Dense captions** - Detailed captions for multiple regions within an image
- **Tagging** - Extract common tags and objects detected in images
- **Smart cropping** - Intelligently crop images around areas of interest
- **Image retrieval** - Search photos using natural language queries

**Hands-on exercise:** Open the notebook at [`LabFiles/AI_vision_services_lab.ipynb`](Lab%2004%20-%20AI-Vision/LabFiles/AI_vision_services_lab.ipynb) and complete **Sections 03-07** (Image Retrieval, Dense Captions, Captions, Tags, Smart Crop) to explore these capabilities via the API.

---

## Exercise 5: Video Indexer via API

Azure AI Video Indexer is a cloud-based service that extracts insights from videos using AI models for speech, vision, and natural language processing. The service is **actively supported** with no announced retirement date.

> **Note:** Azure Media Services (AMS)-based Video Indexer accounts were retired in June 2024. All new accounts are AMS-less. If migrating from an older account, see the [AMS migration guide](https://learn.microsoft.com/azure/azure-video-indexer/create-account).

The Video Indexer API enables you to:
- Upload and index videos programmatically
- Extract insights including people detection, topics, keywords, labels, named entities, and scenes
- Generate transcriptions, captions, and multi-modal video summaries
- Perform face redaction and object detection

**Hands-on exercise:** Open the notebook at [`LabFiles/AI_vision_services_lab.ipynb`](Lab%2004%20-%20AI-Vision/LabFiles/AI_vision_services_lab.ipynb) and complete **Section 08 - Video Indexer** to upload and index a video via the API.

---

===
# Fine Tuning

## Introduction 

In this lab, you’ll explore the fine-tuning process for **GPT models** using the **Azure AI Foundry Dashboard**. 

## Objectives 
 List the objectives
In this lab we will:
-	Fine tune a model with given training and test dataset


## Estimated Time 

30 minutes 

## Scenario
Fine tuning a model with given training and test dataset

## Pre-requisites
Completed the pre-requisites labs
- Create Azure AI Foundry Project

## Tasks

Navigate to the `C:/Users/Admin/Desktop/LABS/Lab 05 - Fine-Tuning/` folder. You’ll find:

- `training_set_10samples.jsonl` – your training dataset  
- `validation_set_10samples.jsonl` – your validation dataset  

> ⚠️ **Note:** Each dataset contains only 10 samples. The goal of this lab is not to outperform the base model, but to **walk through the fine-tuning workflow** using Azure AI Foundry Fine-Tuning UI Dashboard.

---

# 🛠️ Steps: Fine-Tuning the GPT-4.1-mini Model

### 1. Sign in to Azure Portal  
Go to [https://portal.azure.com](https://portal.azure.com)

---
### 2. Open the Azure AI Foundry Portal  
Launch the Azure AI Foundry Resource created in the pre-requisites lab.

---

### 3. Start Fine-Tuning  
- [ ] Navigate to the **Fine-tuning** section.  
- [ ] Click **+ Fine-tune model**.
- [ ] Here choose GPT-4.1-mini or GPT-4-o-mini or GPT-4.o

---

### 4. Configure Fine-Tuning Job
- [ ] Select **Supervised** method  
- [ ] Upload both the **training** and **validation** files. By navigating to `C:/Users/Admin/Desktop/LABS/Lab 05 - Fine-Tuning`
  - [ ] `training_set_10samples.jsonl` – your training dataset  
  - [ ] `validation_set_10samples.jsonl` – your validation dataset 
- [ ] Add a **suffix name** for your model  
- [ ] Leave **hyperparameters** as default  
- [ ] Click **Submit**  
  - [ ] ⏱️ Estimated time: **50–90 minutes**

---

### 5. Review Results
- [ ] Once complete, go to the **Metrics** tab  
- [ ] Click **Use this model to deploy**

---

### 6. Deploy and Test
- [ ] After deployment, locate your model under:  
  `My assets > Models + endpoints`
- [ ] Review **Details** (URI, API keys, etc.)  
- [ ] Click **Open in playground** to interact with your fine-tuned model




===
# Fine Tuning - Advance Lab

## Introduction

In this section you will find **advance Fine Tuning** laboratories using **Microsoft Foundry** and different **training techniques**.

## Objectives

In this lab we will:

- Fine-tune a model using the Direct Preference Optimization (DPO) technique with a designated training and test dataset. This session will guide you through programmatically fine-tuning a model while applying best practices in data science.

## Estimated Time

120 minutes

## Scenario

Fine tune a model using the training technique DPO (Direct preference optimization) with a given training and test dataset. The configuration will be done using a Jupyter notebook and Python SDK.

## Pre-requisites

Complete the pre-requisites labs

- Azure subscription
- A Microsoft Foundry Project
- Python 3.8 or higher
- VS Code with Jupyter Notebook extension
- **Azure AI User role** assigned to your account for the Azure AI Foundry project
  - See [Azure AI Foundry RBAC documentation](https://learn.microsoft.com/en-us/azure/ai-foundry/concepts/rbac-azure-ai-foundry?pivots=fdp-project) for more details on role assignments

## Tasks

Navigate to the `C:/Users/Admin/Desktop/LABS/Lab 05 - Fine-Tuning/Advance Fine-Tuning/` folder. You’ll find:

- `gpt-4_o_dpo_ft.ipynb` - Jupyter notebook with detailed lab instructions
- `gpt4o_generated_qa_dpo_train_10_samples.jsonl` – your training dataset  
- `gpt4o_generated_qa_dpo_validation_10_samples.jsonl` – your validation dataset  

> ⚠️ **Note:** Each dataset contains only 10 samples. The goal of this lab is not to outperform the base model, but to **walk through the fine-tuning workflow** using Microsoft Foundry Fine-Tuning Python SDK.

---
===
# Prompt Engineering

## Introduction 

In this laboratory, you will master the art and science of prompt engineering to optimize interactions with language models and achieve more accurate, relevant, and consistent results. Prompt engineering is a fundamental skill for maximizing the performance of generative AI models and creating effective AI-powered applications.

## Objectives 
In this lab we will:
- ✅ Understand fundamental principles of prompt engineering
- ✅ Master 8 different advanced prompting techniques
- ✅ Apply proven strategies to improve response quality and consistency
- ✅ Implement best practices in prompt design and optimization
- ✅ Compare effectiveness of different approaches through practical examples
- ✅ Create robust, production-ready prompting strategies


## Estimated Time 

30 minutes 

## Scenario
Learn Prompt Engineering Techniques to optimize interactions with language models and achieve more accurate, relevant, and consistent results.

## Pre-requisites
- Completed the pre-requisites labs
- Basic knowledge of AI and language models
- Completion of Lab 1 and Lab 2 (recommended)
- Access to Azure AI Foundry and Azure OpenAI Service
- Understanding of Azure OpenAI API fundamentals


## Tasks

Launch the **Prompt Engineering.ipynb** notebook in the folder - `C:/Users/Admin/Desktop/LABS/Lab 06 - Prompt Engineering` and run through the steps of the lab


### Theoretical Concepts for reference

**What is Prompt Engineering?**
Prompt Engineering involves the careful design of instructions (prompts) that guide AI model behavior to produce desired outputs. This includes word choice, information structuring, context provision, and output format definition.

**Why is it Important?**
- **Accuracy**: Well-crafted prompts produce more precise results
- **Consistency**: Structured techniques ensure predictable outputs
- **Efficiency**: Reduces the need for multiple attempts
- **Control**: Provides greater control over style and output format

**Components of a Good Prompt:**
1. **Context**: Relevant background information
2. **Instruction**: Clear description of the desired task
3. **Examples**: Demonstrations of expected format (when applicable)
4. **Constraints**: Specific guidelines or restrictions
5. **Output Format**: How the response should be structured

### 1. Zero-Shot Prompting
Learn to create effective prompts without providing examples, using only clear and specific instructions to guide the model.

**Characteristics:**
- No prior examples required
- Relies on model's pre-trained knowledge
- Simple to implement
- May not be effective for complex or specific tasks

**When to Use:**
- Simple, well-defined tasks
- When you don't have examples available
- For initial testing of model capabilities

### 2. Few-Shot Prompting
Explore how providing 2-5 examples in the prompt can significantly improve the quality and consistency of model responses.

**Characteristics:**
- Includes 2-5 demonstration examples
- Improves accuracy compared to zero-shot
- Helps model understand desired output format
- Effective for tasks that follow specific patterns

**When to Use:**
- Tasks requiring specific format
- When zero-shot doesn't provide adequate results
- For classification or structured tasks

### 3. Chain-of-Thought Prompting
Discover how to encourage the model to show its step-by-step reasoning, resulting in more logical and well-founded responses.

**Characteristics:**
- Encourages explicit reasoning steps
- Improves performance on complex reasoning tasks
- Makes model's thinking process transparent
- Particularly effective for mathematical and logical problems

**When to Use:**
- Complex reasoning tasks
- Mathematical problems
- Multi-step processes
- When you need to verify the reasoning

### 4. Meta Prompting
Understand how to create prompts that instruct the model on how to approach different types of tasks more efficiently.

**Characteristics:**
- Provides instructions about how to think about the task
- Establishes frameworks for problem-solving
- Creates reusable approaches for similar tasks
- Improves consistency across different scenarios

**When to Use:**
- Complex, open-ended tasks
- When you want to establish a consistent approach
- For tasks requiring specific methodology

### 5. Prompt Chaining
Learn to divide complex tasks into a sequence of simpler and more focused prompts.

**Characteristics:**
- Breaks complex tasks into manageable steps
- Each step builds on the previous one
- Allows for intermediate validation
- Reduces errors in complex workflows

**When to Use:**
- Very complex tasks
- Multi-stage processes
- When you need intermediate outputs
- For quality control at each step

### 6. Tree of Thoughts (ToT)
Explore an advanced technique that allows the model to consider multiple lines of reasoning simultaneously.

**Characteristics:**
- Explores multiple reasoning paths
- Allows backtracking and alternative approaches
- More thorough exploration of solution space
- Requires more computational resources

**When to Use:**
- Creative problem-solving
- When multiple valid approaches exist
- Complex decision-making scenarios

### 7. Retrieval Augmented Generation (RAG)
Understand how to combine external information with prompts to generate more accurate and up-to-date responses.

**Characteristics:**
- Incorporates external knowledge sources
- Provides current, specific information
- Reduces hallucinations
- Enables knowledge grounding

**When to Use:**
- Tasks requiring current information
- Domain-specific knowledge
- Factual accuracy is critical

### 8. Active-Prompt
Discover techniques for creating prompts that adapt dynamically based on context and feedback.

**Characteristics:**
- Adapts based on context or previous responses
- Incorporates feedback loops
- Self-improving over time
- More sophisticated prompt management

**When to Use:**
- Interactive applications
- When context changes dynamically
- For personalized responses

### Best Practices and Guidelines

**Fundamental Principles:**

1. **Be Specific and Clear**: Leave as little as possible to interpretation. Restrict the operational space clearly.

2. **Use Descriptive Language**: Employ analogies and clear descriptions to make instructions more understandable.

3. **Reinforce Important Instructions**: Repeat critical information before and after your main content when necessary.

4. **Consider Order and Structure**: The sequence of information can significantly impact results due to recency bias.

5. **Provide Fallback Options**: Give the model alternative paths if it cannot complete the assigned task (e.g., "respond with 'not found' if the answer is not present").

6. **Test and Iterate**: Continuously test and refine your prompts based on results.

7. **Use Examples Strategically**: Provide diverse, high-quality examples that represent the range of expected inputs.

## Execution Instructions

1. **Setup**:
   - [ ] Ensure Azure OpenAI Service is configured in your `.env` file
   - [ ] Open the **Prompt Engineering.ipynb** notebook in Azure AI Foundry or VS Code

2. **Learning Approach**:
   - [ ] Execute cells sequentially, observing examples of each technique
   - [ ] Read theoretical explanations before practical examples
   - [ ] Compare results between different approaches for similar tasks

3. **Experimentation**:
   - [ ] Experiment with modifying prompts to see how changes affect results
   - [ ] Try your own examples with each technique
   - [ ] Test edge cases and limitations

4. **Practice**:
   - [ ] Complete hands-on exercises for each technique
   - [ ] Compare effectiveness of different approaches
   - [ ] Build your own prompt library for common tasks

## Expected Results

Upon completing this laboratory, you will be able to:
- Choose the appropriate prompting technique for different types of tasks
- Design effective prompts that consistently produce high-quality results
- Implement advanced prompting strategies in production applications
- Troubleshoot and optimize prompts based on results
- Apply best practices to create robust, reliable AI interactions
- Understand when and how to combine multiple techniques

## Additional Resources

- [Azure OpenAI Prompt Engineering Guide](https://learn.microsoft.com/azure/ai-services/openai/concepts/prompt-engineering)
- [Advanced Prompting Techniques](https://learn.microsoft.com/azure/ai-services/openai/concepts/advanced-prompt-engineering)
- [Azure AI Foundry Prompt Flow](https://learn.microsoft.com/azure/ai-foundry/how-to/prompt-flow)
- [Responsible AI for Prompt Engineering](https://learn.microsoft.com/azure/ai-services/responsible-use-of-ai-overview)


===
# Responsible AI

## Introduction 

This lab shows walks through Evaluations, Content Safety, PII Detection and Masking.

## Objectives 
In this lab we will explore the following:
- [Evaluations](#evaluations)
- [Manual Evaluation](#manual-evaluation)
- [Automated Evaluation](#automated-evaluation)
- [Content Safety](#content-safety)
- [PII Detection and Masking](#pii-detection-and-masking)
- [System Message](#system-message)	

## Estimated Time 

45 minutes 

## Scenario

Test Evaluations(manual, automated, content safety, PII Detectionand Masking, System Message)

## Pre-requisites

Completed the pre-requisites labs:

- Azure subscription
- A Microsoft Foundry Project
- Deploy models into the Azure AI Foundry Project
- Create connections to Bing Resources at Azure AI Foundry resource level
- Create connections to Azure AI Search at AI Foundry resource level

_Note: See [Prequisite - AI Foundry Resource Creation](#create-microsoft-foundry-project) folder to ensure Microsoft Foundry Project is correctly set up._

## Evaluations

### Setup

Configure the environment with the required tools and files:

1. [ ] **Upload Files**    
    - [ ] Go to the resource group **azureaiworkshoprg** and find the storage account that was created.
    ![Go to resource](Lab%2007-%20RAI/rai_md_img/storageaccount.png)
    - [ ] Access it and find the container ending in `-azureml-blobstore`.
    - [ ] First create a new directory and name it **Contoso** in the container and upload the contents of C:\Users\Admin\Desktop\LABS\Lab 07- RAI\Files\Contoso
    ![Go to resource](Lab%2007-%20RAI/rai_md_img/adddirectory.png)
    ![Contoso Folder Upload](Lab%2007-%20RAI/rai_md_img/contoso_folder.png)

1. [ ] **Go to your Microsoft Foundry resource in the Azure portal**
    - [ ] Go to [https://ai.azure.com](https://ai.azure.com/) and sign in with your Azure credentials.
     
     _Note: Make sure you are logged in the MS Foundry project created in the prereqs_

1. [ ] **Connect Azure AI Search**

    _Note: Skip this step if already done in the [Create connections to Azure AI Search at AI Foundry resource level prereqs](#create-connections-to-azure-ai-search-at-ai-foundry-resource-level)_

    - [ ] On the left side, go to **Management center** at the bottom.
    - [ ] Underneath **Hub** (*your-hub-name*), select **Connected resources**.
    - [ ] Click **New connection**.
    - [ ] Choose **Azure AI Search**.
    - [ ] Search for the Search resource that was pre-created as part of the lab environment and select **Add Connection** from the right side.
    - [ ] Once you see the green checkmark with **Connected**, you can press **Close**.

1. [ ] **Create Index**
    - [ ] Launch the project from portal 
    ![Go to resource](Lab%2007-%20RAI/rai_md_img/hubproject.png)
    - [ ] In the **Data + indexes** section, select **Indexes** from the top menu.
    ![Go to resource](Lab%2007-%20RAI/rai_md_img/dataandindexes.png)
    - [ ] Click **New index**.
    - [ ] For **Data source**, choose **Azure Blob Storage**.
    - [ ] Select the blob store named `workspaceblobstore`.
    - [ ] Choose the folder you uploaded earlier (e.g., `Contoso`).
    - [ ] Click **Next**.
    - [ ] Select the Azure AI Search Service connected to your hub from the drop-down list.
    - [ ] Leave the remaining settings as default and click **Next**.
    - [ ] Ensure the AOAI connection is the one associated with this Hub (set up in the previous step).
    - [ ] Set the **Embedding model** to `text-embedding-3-large`.
    - [ ] Confirm that the **Embedding model deployment** is also set to `text-embedding-3-large` (or matches the deployment name you used earlier).
    - [ ] Click **Next**.
    - [ ] Click **Create vector index**.

### Manual Evaluation

> **Note:** The current Foundry Evaluation page shows only **Automated evaluations**, **AI red teaming** and **Evaluator library** tabs, and no longer has a **Manual evaluations** tab. If this tab is not visible, treat this section as currently unavailable rather than a missed step, and use **Automated evaluations** for query/response dataset review instead.

1. [ ] On the left side, go to the **Protect and govern** section.
1. [ ] Select **Evaluation**.
1. [ ] At the top, choose **Manual evaluations** (if available; see note above).
 ![Go to resource](Lab%2007-%20RAI/rai_md_img/manual_eval.png)
1. [ ] Select **New Manual Evaluation**. Under Configurations, see the options.
1. [ ] On the right, select the model you deployed (e.g., `gpt-5.1`).
1. [ ] Still on the right, click **Add your data** and select the index you just created. Note that this may take some time. Check if the index is in **ready** state and not in **running** 
1. [ ] At the bottom of the page, select **Import test data**.
1. [ ] Click **Upload dataset** and upload the file from `C:/Users/Admin/Desktop/LABS/Lab 07- RAI/Files/Evaluations/manual_evaluation.jsonl`.
1. [ ] In the **Map data** pane, scroll down and set:
    - [ ] **Input** = `chat_input`
    - [ ] **Expected response** = `truth_value`
1. [ ] Press **Add**.
1. [ ] Press **Run**.
1. [ ] Review each result and use the thumbs up or thumbs down icons on the right side of each result.
1. [ ] Explore the results. Consider adjusting the **Temperature** or **Search type** to compare different outcomes.
1. [ ] Save your results if you want to compare different iterations.

### Automated Evaluation

1. [ ] On the left side, go to the **Protect and govern** section.
1. [ ] Select **Evaluation**.
1. [ ] At the top, select **Automated evaluations**.

    <img src="rai_md_img/automated_eval.png" alt="Automated Evaluation" width="80%" />

1. [ ] Click **Create a new Evaluation**.
1. [ ] Choose **Evaluate an existing query-response dataset** and press **Next**.
1. [ ] Select **Upload new dataset**.
 ![Go to resource](Lab%2007-%20RAI/rai_md_img/autoevalnewdataset.png)
1. [ ] Open the folder `C:/Users/Admin/Desktop/LABS/Lab 07- RAI/Files/Evaluations` and select the `automated_evaluation.jsonl` file.
1. [ ] Press **Next** to add evaluators.
1. [ ] In the **AI Quality** section, select **Likert-scale evaluator**:
    - [ ] Choose **Groundedness**.
    - [ ] Ensure the selected model is the previously deployed model.
    - [ ] For **context**, select `item.context`.
    - [ ] For **query**, select `item.chat_input`.
    - [ ] For **response**, select `item.truth`.
    - [ ] Press **Add**.
1. [ ] Again in **AI Quality**, select **Likert-scale evaluator**:
    - [ ] Choose **Relevance**.
    - [ ] Ensure the selected model is the previously deployed model.
    - [ ] For **query**, select `item.chat_input`.
    - [ ] For **response**, select `item.truth`.
    - [ ] Press **Add**.
1. [ ] Repeat the previous step to add **Coherence** and **Fluency** evaluations using the Likert-scale evaluator.
1. [ ] In the **Ensure safe and ethical content** section, select **Violent content**:
    - [ ] For **query**, select `item.chat_input`.
    - [ ] For **response**, select `item.truth`.
1. [ ] Repeat the previous step for the following evaluations in the **Ensure safe and ethical content** section:
    - [ ] **Hateful and unfair content**
    - [ ] **Self-harm-related content**
    - [ ] **Sexual content**
    - [ ] **Protected material**
    - [ ] **Indirect attack**
1. [ ] Press **Next** and then **Submit**.
1. [ ] Wait for the evaluation to finish.
1. [ ] You can find the results in **Protect and govern** → **Evaluation** → **Automated evaluations**. Click the evaluation title to explore the results.
    - [ ] *Tip 1:* Try both the **Report** and **Data** tabs at the top.
    - [ ] *Tip 2:* Modify the dataset to see how the evaluation results change.

## Content Safety

### Moderate Text Content

1. [ ] Return to the resource group, select the AI project, and launch the studio.  
1. [ ] The unified Foundry portal no longer has an **AI Services > Content Safety** navigation item. Instead, open the separate legacy **Content Safety Studio** directly at <https://contentsafety.cognitive.azure.com/>, signing in with the same lab account.
1. [ ] Under **Filter text content**, select **Moderate text content**.  
1. [ ] Ensure the Azure AI Services resource is your Foundry instance.  
1. [ ] You can test with a simple test first:  
    a. [ ] Press one of the samples offered.  
    b. [ ] Scroll down and press **Run test**.  
    c. [ ] Scroll down and view the results.  
    d. [ ] You can experiment further by configuring the content filters on the right, **modifying the blocklist**, or **changing the prompt**.  
1. [ ] For bulk testing, select **Run a bulk test**, upload `C:/Users/Admin/Desktop/LABS/Lab 07- RAI/Files/Content_Safety/bulk-text-moderation-data.csv`, and run the test.  
1. [ ] Explore results and adjust filters or datasets as needed.

### Detect Protected Material

1. [ ] In the Content Safety tab, select **Protected material detection for text**.  
1. [ ] Ensure the correct Azure AI Services resource is selected.  
3. [ ] Run a simple test and view results.  
4. [ ] For bulk testing, select **Run a bulk test**, upload `C:/Users/Admin/Desktop/LABS/Lab 07- RAI/Files/Content_Safety/bulk-protected-material-dataset.csv`, and run the test.  
5. [ ] Explore the results.

### Moderate Image Content

1. [ ] In the Content Safety tab, under **Filter image content**, select **Moderate image content**.  
    <span style="color: red;">**Note:**</span>  Some sample content may be offensive.
1. [ ] Ensure the correct Azure AI Services resource is selected.  
1. [ ] You can test with a simple test first:  
    a. [ ] Press one of the samples offered.  
    b. [ ] Scroll down and press **Run test**.  
    c. [ ] Scroll down and view the results.  
    d. [ ] You can experiment further by configuring the **content filters** and their **thresholds** on the right.  
1. [ ] For bulk testing, select **Run a bulk test**, upload `C:/Users/Admin/Desktop/LABS/Lab 07- RAI/Files/Content_Safety/bulk_image_moderation_dataset.zip` (no need to decompress), and run the test. You may need to select **All files** for the .zip file to show up. 
![Go to resource](Lab%2007-%20RAI/rai_md_img/allfiles.png)
1. [ ] Explore results and adjust filters or datasets as needed.

## PII Detection and Masking

1. [ ] Go to the resource group.
1. [ ] Identify the Azure AI project service and access it.
1. [ ] Press **Launch Studio**.
1. [ ] On the left side, select **Playgrounds**.
1. [ ] Scroll down and select **Try the Language playground** from the Language playground card.
1. [ ] Ensure the **Connected to resource** at the top is the resource you created for this lab.
1. [ ] If not already selected, scroll to the right on the carousel and select **Extract PII from text**.
1. [ ] In the middle pane, either paste your own text to analyze or use one of the available samples (e.g., Legal (NDA)).
1. [ ] Press **Run**.
1. [ ] Observe the results and review the **Details** section on the right.
1. [ ] Press the **Hide PII** slider above the evaluated text.
1. [ ] Explore with different samples and configurations from the left pane.
    - [ ] *Note:* To modify a sample, press the **Edit** (crayon) icon next to the Hide PII button.

## System Message

Under the Playground, go to Agents Playground by clicking on **Let's go** (labeled **Try the Agents Playground** in earlier versions of this lab). It may load directly into a pre-existing agent rather than prompting you to choose an AOAI resource; if so, use that agent or create a new one from there as described below. The instructions below givean idea of how to provide instructions to the agent before chatting with it. Step 1-5 below are informational to give an idea of how system prompt will look like.

**1. Define the Purpose of the AI Agent**

Clearly state what the AI agent is designed to do, including:
- **Domain:** (e.g., customer support, sales assistant, internal IT helpdesk)
- **Audience:** (e.g., end users, developers, executives)
- **Expected Outcomes:** (e.g., answer questions, generate reports, summarize documents)

**Example:**  
"This AI agent assists enterprise users with Azure-related technical queries and provides step-by-step troubleshooting guidance."

**2. Set the Role and Identity of the AI**
Define how the AI should present itself:

- **Name:** (if applicable)
- **Role:** (e.g., assistant, advisor, coach)
- **Tone:** (e.g., professional, friendly, concise)

**Example:**  
"You are AzureBot, a helpful and knowledgeable assistant for Azure developers. You speak in a professional yet approachable tone."

**3. Specify Capabilities and Limitations**

Outline what the AI can and cannot do to manage expectations and ensure safe, accurate responses.

**Example:**  
- You can answer questions about Azure services, pricing, and architecture.
- You cannot provide legal, financial, or medical advice.
- You must not generate code that modifies production environments without user confirmation.

**4. Define Behavioral Guidelines**

Provide instructions for handling different scenarios:
- How to handle ambiguous queries
- How to respond to inappropriate requests
- How to escalate or defer when unsure

**Example:**  
- If a query is unclear, ask clarifying questions.
- If a request is outside your scope, politely decline and suggest alternatives.

**5. Include Safety and Compliance Rules**

Ensure adherence to organizational policies, ethical guidelines, and compliance standards.

**Example:**  
- Do not store or share user data.
- Avoid generating content that could be offensive, biased, or discriminatory.
- Follow Microsoft Responsible AI principles.

**6. Test and Iterate**

After drafting the system message:
- [ ] Test with real prompts
- [ ] Observe AI behavior
- [ ] Refine the message based on feedback and edge cases

---

Use the example below to paste under the **instructions** for the agent and start chatting with the agent.

**Sample System Message Template**

You are AzureBot, a professional and friendly assistant for Azure developers. Your goal is to help users understand and use Azure services effectively.

**You can:**
- Answer questions about Azure services, pricing, and architecture
- Provide step-by-step troubleshooting guidance
- Generate sample code and templates

**You cannot:**
- Provide legal, financial, or medical advice
- Modify production environments without user confirmation

**Behavior:**
- Ask clarifying questions if the query is ambiguous
- Respond with empathy and professionalism
- Escalate or defer if unsure

## Prompt Shields

### Setup

Follow these steps to use the Content Safety "Try it out" page:

1. [ ] Go to Azure AI Foundry and navigate to your project or hub.
1. [ ] Select the **Guardrails + controls** tab on the left navigation, then choose the **Try it out** button.

### Using Prompt Shields for User Input Risk Detection

The **Prompt Shields** panel allows you to test user input risk detection. This feature identifies prompts intended to provoke the Generative AI model into unsafe behaviors or to bypass the rules defined in the System Message. Such attacks may include complex role-play or subtle attempts to undermine safety measures.

To use Prompt Shields:

1. [ ] Select the **Prompt Shields** panel.
1. [ ] Choose a sample text provided on the page, or enter your own content for testing.
1. [ ] Select **Run test**. The service will return the risk flag and type for each sample.

===
# Lab 08 - RAG-Patterns - Graph RAG

## Introduction 

>**The following tasks are intended to be executed inside Cloud Shell via the Azure portal at [https://portal.azure.com](https://portal.azure.com).
>Use the credentials provided to you in the Resources tab. You may have to instantiate a Cloud Shell (bash) instance if using for the first time.**

### GraphRAG

Please reference the [GraphRAG Getting Started instructions here](https://microsoft.github.io/graphrag/get_started/). The VBD closely follows these instructions and the library changes frequently. 
These instructions will fast-follow library releases, but for the latest guides you should refer to Getting Started instructions.

### GraphRAG Accelerator

The GraphRAG Accelerator is, as of FY26, a [public archived repository](https://github.com/Azure-Samples/graphrag-accelerator).

It is the reference implementation for GraphRAG deployments at scale using APIM and AKS, but it is no longer receiving updates or support.

CSAs delivering this VBD should determine with their customers whether the Accelerator is appropriate to cover and how it needs to be tailored to the outcomes and goals of the customer.
The final module of the VBD covering the Accelerator is intended to be entirely driven by the CSA in accordance with their customer's goals, to include not covering it at all.


## Objectives 
 List the objectives
In this lab we will:
-	Install graphrag from Pypi
-	Index a data source
-	Understand and execute Global, Local, and DRIFT queries.
-	Start to inspect Prompt tuning

## Estimated Time 

30 minutes 

## Pre-requisites

- Python 3.10 to 3.12 environment
- Azure OpenAI Service resource (provided for you in the Resources tab)
- Deploy these models at https://ai.azure.com using your Azure OpenAI Service resource.
- Text embedding model: `text-embedding-ada-002` or `text-embedding-3-small`
- LLM: `gpt-5-mini`

## Tasks

### Installation & Setup

```bash
# Create working directory
mkdir graphrag && cd graphrag

# Create and activate virtual environment
python3 -m venv venv
source venv/bin/activate

# Install GraphRAG
pip install graphrag

```

## Initialize and Explore GraphRAG Workspace

```bash

# Initialize workspace
mkdir -p ragtest/input
graphrag init --root ragtest

# List files
find ./ragtest
```

Expected files:

- `settings.yaml`
- `.env`
- `prompts/` (contains prompt templates)

### Get Source Data

```bash
# Download sample text
curl -L https://aka.ms/dickens/xmas -o ./ragtest/input/book.txt

# Verify download
wc ./ragtest/input/book.txt

```

### Configure .env using your preferred Cloud Shell text editor

```bash
## Copy the following command, change <your_api_key> to be your key from AI Foundry, and run it in its entirety.

sed -i '/^GRAPHRAG_API_KEY=/d' ragtest/.env \
  && echo "GRAPHRAG_API_KEY=<your_api_key>" >> ragtest/.env
```

### Update settings.yaml

1. [ ] Copy, update (with Azure OpenAI endpoint instance), and execute the following command in Cloud Shell.

```bash
export AZURE_OPENAI_ENDPOINT=<instance>.openai.azure.com
```

2. [ ] Then run the following in Cloudshell

```bash

# Use sed to update settings.yaml with correct values for Azure.

sed -i '/api_key:/a\    api_base: ${AZURE_OPENAI_ENDPOINT}' ragtest/settings.yaml
sed -i '/api_base:/a\    api_version: 2024-05-01-preview' ragtest/settings.yaml

sed -i \
  -e 's/model_provider: openai/model_provider: azure/g' \
  -e 's/graphml: false/graphml: true/' \
  ragtest/settings.yaml
  
```


### Run first index

```bash

# Run indexing pipeline
graphrag index --root ./ragtest

```

```bash
# Review output
ls ./ragtest/output

```

### Run first queries

#### Global Query

```bash
graphrag query \
  --root ./ragtest \
  --method global \
  --query "What are the top themes in this story?"
```

#### Local Query

```bash
graphrag query \
  --root ./ragtest \
  --method local \
  --query "Who is Scrooge and what are his main relationships?"

```


#### DRIFT Query (not working as of GraphRAG v2.7.0)

```bash
# graphrag query \
#  --root ./ragtest \
#  --method drift \
#  --query "Who is Scrooge and what are his main relationships?"

```

### Introduce Domain Expertise with Auto-tuning of the Indexing Prompts

```bash
graphrag prompt-tune \
 --root ./ragtest \
 --config ./ragtest/settings.yaml \
 --output ./ragtest/prompts-tuned \
 --domain "Literary Analyst"
```

```bash
# Inspect updated prompts

more ragtest/prompts-tuned/extract_graph.txt

more ragtest/prompts-tuned/summarize_descriptions.txt 
```

#### (Optionally) Reindex and rerun your queries to see how they've changed (not working as of GraphRAG v2.7.0)

```bash
# Move previous index to backup directory
# mv ragtest/output ragtest/output-default

# Re-index
# graphrag index --root ./ragtest --no-cache

# Run a Global query
# graphrag query \
#  --root ./ragtest \
#  --method global \
#  --query "What are the top themes in this story?"

```

===
# AI Red Teaming Agent for Generative AI Applications

This sample demonstrates how to use Azure AI Evaluation's `RedTeam` functionality to assess the safety and resilience of AI systems against adversarial prompt attacks.

## Objective

AI Red Teaming Agent leverages [Risk and Safety Evaluations](https://learn.microsoft.com/en-us/azure/ai-foundry/concepts/evaluation-metrics-built-in?tabs=warning#risk-and-safety-evaluators) to help identify potential safety issues across different risk categories (violence, hate/unfairness, sexual content, self-harm) combined with attack strategies of varying complexity levels from [PyRIT](https://github.com/Azure/PyRIT), Microsoft AI Red Teaming team's open framework for automated AI red teaming.

## Time

You should expect to spend about 30-45 minutes running the notebook. Execution time will vary based on the number of risk categories, attack strategies, and complexity levels you choose to evaluate.

## Prerequisites

- Azure subscription
- Azure AI Foundry project
- Python 3.10+ environment

## Setup

1. [ ] Install the required packages:

   ```bash
   pip install azure-ai-evaluation[redteam]
   ```

2. [ ] Set up your environment variables:

   ```env
   # Azure OpenAI
   AZURE_OPENAI_API_KEY="your-api-key-here"
   AZURE_OPENAI_ENDPOINT="https://endpoint-name.openai.azure.com/openai/deployments/deployment-name/chat/completions"
   MODEL_DEPLOYMENT_NAME="gpt-5-mini"
   MODEL_API_VERSION="2024-12-01-preview"

   # Azure AI Project
   AZURE_SUBSCRIPTION_ID="<your-subscription-id>"
   AZURE_RESOURCE_GROUP_NAME="<your-resource-group>"
   AZURE_PROJECT_NAME="<your-project-name>"
   # Azure AI Project
   AI_FOUNDRY_PROJECT_ENDPOINT="https://your-aifoundry-endpoint-name.services.ai.azure.com/api/projects/yourproject-name"
   ```

3. [ ] Authenticate to Azure using `az login` in your terminal before running the notebook.

## Key Concepts

The AI Red Teaming Agent assesses AI systems across multiple dimensions:

### Risk Categories

- **Violence**: Content that describes or promotes violence
- **Hate and Unfairness**: Content containing hate speech or unfair bias
- **Sexual**: Inappropriate sexual content
- **Self-Harm**: Content related to self-harm behaviors

### Attack Strategies

- **Text Transformation**: Base64, ROT13, Binary, Morse code, etc.
- **Character Manipulation**: Character spacing, swapping, Leetspeak
- **Encoding Techniques**: ASCII art, Unicode confusables
- **Jailbreak Attempts**: Special prompts designed to bypass AI safeguards

### Complexity Levels

- **Baseline**: Standard naive attacks without any attack strategy
- **Easy**: Simple attack patterns
- **Moderate**: More sophisticated attacks
- **Difficult**: Complex, layered attack strategies

## Using the Notebook

The notebook provides two main examples:

1. **Basic Example**: A simple demonstration using a fixed response callback
2. **Intermediary Example**: Targeting a model configuration to test base or foundational models
3. **Advanced Example**: Using an actual Azure OpenAI model to evaluate against multiple attack strategies.
   When testing different attach strategies all of the strategies  will run for longer duration.
   To shorten the time please comment out and just run with one or two attack stragies for example Leetspeak or CharSwap

### Analysis Features

- **Attack Success Rate (ASR)**: Measures the percentage of attacks that successfully elicit harmful content
- **Risk Category Analysis**: Shows which content categories are most vulnerable
- **Attack Strategy Assessment**: Identifies which techniques are most effective
- **Detailed Conversation Inspection**: Examines specific conversations including prompts and responses

## Next Steps

After running the AI red teaming scan:

1. [ ] **Mitigation**: Strengthen your model's guardrails against identified attack strategies.
2. [ ] **Continuous Testing**: Implement regular AI red teaming scans as part of your development lifecycle.
3. [ ] **Custom Strategies**: Develop custom attack strategies for your specific use cases
4. [ ] **Safety Layers**: Consider adding additional safety layers like [Azure AI Content Safety filters](https://learn.microsoft.com/en-us/azure/ai-services/content-safety/overview) or safety system messages using our [templates](https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/safety-system-message-templates).

## Additional Resources

- Learn more about [Azure AI Foundry Evaluations.](https://learn.microsoft.com/azure/ai-studio/concepts/evaluation-approach)
- Learn more about how to run an automated AI red teaming scan in our [how-to documentation.](https://aka.ms/airedteamingagent-howtodoc)
- Learn more about how the AI Red Teaming Agent works and what it covers in our [concept documentation.](https://aka.ms/airedteamingagent-conceptdoc)

===
# Azure Cosmos DB Lab
 
## Introduction
In this lab you will learn how perform various types of searches (e.g., full text, vector, hybrid) on Cosmos DB and understand the pros and cons of each.
 
## Objectives
Store and retrieve vector data.
Perform similarity searches using Cosmos DB.
 
## Estimated Time
30 minutes
 
## Scenario
You are building a retail application that needs to support flexible search across product catalog. You will leverage Cosmos DB to store product data as well as power the search experience, without needing to rely on external search engine.
 
## Pre-requisites
None. The database has been pre-created for you.
 
## Tasks
Open **Python-Samples.ipynb** and follow the steps to ingest data and run search queries.
===
# Azure PostgreSQL Lab
 
## Introduction
In this lab you will learn how perform vector search on PostgreSQL.
 
## Objectives
Store and retrieve vector data.
Perform similarity searches using PostgreSQL.
 
## Estimated Time
20 minutes
 
## Scenario
You want to use PostgreSQL for your AI application's backend and need to store and search vectors efficiently. This lab will walk you through the necessary steps.
 
## Pre-requisites
None. The Azure PostgreSQL server has been pre-created for you.
 
## Tasks
## Part 1 – Enable Vector Search Extensions in PostgreSQL

1. [ ] **Navigate to Server Parameters in Azure Portal**
   - [ ] Go to your Azure PostgreSQL server in the Azure Portal.
   - [ ] In the left menu, select **Server parameters**.

2. [ ] **Enable Required Extensions**
   - [ ] Search for `azure.extensions`.
   - [ ] Select **AZURE_AI** and **VECTOR**.
   - [ ] Click **Save** at the top.

![Set Azure Extensions](Lab%2010%20-%20Vector-DB/PostgreSQL/images/1_Extensions.png)

**Result:** The PostgreSQL server is now configured to use Azure AI functions and the `vector` data type for similarity search.

---

## Part 2 – Create and Restore the `books` Database

### Step 1: Set PostgreSQL Password in PowerShell
Right-click the Start Menu and choose Terminal(Admin) to open up a new PowerShell terminal:

![Open Admin Terminal](Lab%2010%20-%20Vector-DB/PostgreSQL/images/2_OpenAdminTerminal.png)

If the terminal is not current set to using PowerShell, then type in "powershell" so that you are in a PS prompt.  

Enter the command below to set the PGPassword for the user that we will be using to connect to the PostgreSQL database:

```powershell
$env:PGPASSWORD = "<use the password from sqlcredentials.txt>"
```
![find PG Password](Lab%2010%20-%20Vector-DB/PostgreSQL/images/sqlcredentials.png)
![Set PG Password](Lab%2010%20-%20Vector-DB/PostgreSQL/images/3_SetPGAdminPwd.png)

This sets your PostgreSQL password for the current session. Be sure to keep this terminal open for the duration of the lab.

---

### Step 2: Connect with `psql` and Create Database
Navigate to the Azure Database for PostgreSQL Flexible Server resource in the Azure Portal.  Copy the server endpoint - we will use this to connect to the PostgreSQL instance.  

![PostgreSQL in Azure Portal](Lab%2010%20-%20Vector-DB/PostgreSQL/images/4_PGInPortal.png)

In the same PowerShell Admin window, run the following command to connect to the PostgreSQL server instance.  Be sure to replace the -h parameter below with the PostgreSQL endpoint you copied in the above step.

```powershell
psql -h pgaivector-<server-id>.postgres.database.azure.com -U postgres -d postgres
```
Inside `psql`, create the database:
```sql
create database books;
\q
```
![Create Books Database](Lab%2010%20-%20Vector-DB/PostgreSQL/images/5_PGCreateBooksDB.png)

---

### Step 3: Restore Database from Backup
This step will restore a PostgreSQL database from a backup file on-disk. 

In the open PowerShell terminal, execute the following command.  Remember to swap the server name out so you are connecting to the server endpoint copied earlier.

```powershell
pg_restore -h pgaivector-<server-id>.postgres.database.azure.com -U postgres -d books "C:\Users\Admin\Desktop\LABS\Lab 10 - Vector-DB\PostgreSQL\books\books"
```
> Ignore any harmless errors/warnings about pre-existing objects or transaction_timeout.

![Restore Books Database](Lab%2010%20-%20Vector-DB/PostgreSQL/images/6_RestoreBooks.png)
---

## Part 3 – Connect with pgAdmin and Load the Query Script

1. [ ] **Register Server in pgAdmin**
   - [ ] Open pgAdmin.
   - [ ] Right-click **Servers → Register → Server**.
   - [ ] Under **General**, name it `AIWorkshop`.

![Register Server](Lab%2010%20-%20Vector-DB/PostgreSQL/images/7_RegisterServer.png)

![General PG Admin Config](Lab%2010%20-%20Vector-DB/PostgreSQL/images/8_GeneralConfigPGAdmin.png)


2. [ ] **Enter Connection Details**
   - [ ] Host: `pgaivector-<server-id>.postgres.database.azure.com`
   - [ ] Port: `5432`
   - [ ] Maintenance DB: `postgres`
   - [ ] Username: `postgres`
   - [ ] Password: `Password12345!!`
   - [ ] Save.

![Enter Server Info](Lab%2010%20-%20Vector-DB/PostgreSQL/images/9_PGServerInfo.png)

3. [ ] **Open `books` Database**
   - [ ] Expand **Databases** → `books`.
   - [ ] Open the query editor.
   - [ ] Execute the following query to return the top 20 records from the books table.  Be sure to explore the data, especially the desc_embedding column. This column represents the data from the description field, but in vectorized form. 

```sql
select *
from books
limit 20;
```

4. [ ] **Open the VectoryQuery.sql Script**
   - [ ] Open a new Query Tool window to establish a new connection to PostgresSQL.  
   - [ ] Press `Ctrl+O` and open the `VectorQuery.sql` file located at C:\Users\Admin\Desktop\LABS\Lab 10 - Vector-DB\PostgreSQL\VectoryQuery.sql


![Open Query](Lab%2010%20-%20Vector-DB/PostgreSQL/images/10_VectorQueryOpen.png)

At the top of the script we will need to set our Azure OpenAI endpoint and API key.  

For this, use the OpenAI Deployment that was deployed as part of this lab.

![Open Query](Lab%2010%20-%20Vector-DB/PostgreSQL/images/openairesroucedeployment.png)
![Open Query](Lab%2010%20-%20Vector-DB/PostgreSQL/images/endpointandkey.png)

![Open Query](Lab%2010%20-%20Vector-DB/PostgreSQL/images/11_SetAzureAIResourcesPGAdmin.png)
---

## Part 4 – Deploy the Embedding Model in Azure OpenAI
We will need to deploy an embedding model in our Azure OpenAI resource in order to perform vector-based searches on our PostgreSQL data.  

1. [ ] **Go to Azure OpenAI in the Azure Portal**
   - [ ] Open your Azure OpenAI resource.
   - [ ] Click **Explore Azure AI Foundry portal**.

![Open Foundry](Lab%2010%20-%20Vector-DB/PostgreSQL/images/12_GoToFoundry.png)

2. [ ] **Select the Model**
   - [ ] Go to **Model catalog**.
   - [ ] Search for `embedding`.
   - [ ] Click **text-embedding-ada-002**.

![Choose Embedded Model](Lab%2010%20-%20Vector-DB/PostgreSQL/images/13_EmbeddingModel.png)

3. [ ] **Deploy the Model**
   - [ ] Click **Use this model**.
   - [ ] Enter:
     - [ ] Deployment Name: `text-embedding-ada-002`
     - [ ] Deployment Type: `Global Standard`
   - [ ] Click **Deploy**.

![Deploy Embedded Model](Lab%2010%20-%20Vector-DB/PostgreSQL/images/14_UseEmbedding.png)

4. [ ] **Copy Endpoint and Keys**
   - [ ] Go to the Azure OpenAI Resource in the Azure Portal
   - [ ] Click on either the Endpoints or Manage Keys link (both go to the same place)
   - [ ] Copy the Endpoint and one of the keys.  We will need these values for setting up the azure_ai extension in PostgreSQL.

![Link to Keys](Lab%2010%20-%20Vector-DB/PostgreSQL/images/15_LinkToKeys.png)

![Copy Endpoint and Key](Lab%2010%20-%20Vector-DB/PostgreSQL/images/16_GetKeys.png)

---

## Part 5 – Run Vector Similarity Search in PostgreSQL

With the model deployed and `VectorQuery.sql` loaded in pgAdmin, swap out the copied values from the last step for the azure_openai.endpoint and azure_openai.subscription_key values in the script.

1. [ ] **Replace placeholders**:
   - [ ] `<your-endpoint>` → Your Azure OpenAI endpoint from the Keys & Endpoint page.
   - [ ] `<your-api-key>` → Your Azure OpenAI subscription key.

   ```sql
   select azure_ai.set_setting('azure_openai.endpoint', 'https://<your-endpoint>.openai.azure.com/');
   select azure_ai.set_setting('azure_openai.subscription_key', '<your-api-key>');
   ```
1. [ ] **Execute Query**:

Now that everything is set up, you can perform a consine similarity search.  In the query below, the text-embedding-ada-002 model (we deployed this eariler) is used to generate a vector embedding of the text value "trigonometry".  This embedding is then compared to the desc_embedding column from the table to find those book reviews where the description is similar to the word "trigonometry".

   ```sql
   WITH params AS (
     SELECT azure_openai.create_embeddings('text-embedding-ada-002', 'trigonometry')::vector(1536) AS qvec
   )
   SELECT
     b.book_id,
     b.title,
     b.desc_embedding <-> params.qvec AS distance
   FROM books AS b
   CROSS JOIN params
   ORDER BY distance
   LIMIT 5;
   ```



3. [ ] **Execute the Query**
   - [ ] The results will list the top 5 books most similar in meaning to the search term `"trigonometry"`.

![Query Output](Lab%2010%20-%20Vector-DB/PostgreSQL/images/17_QueryOutput.png)

**Result:** You have successfully run a vector similarity search in PostgreSQL using an Azure OpenAI embedding model.


===
# Azure SQL Lab

## Introduction
This lab shows you how to use Azure SQL Database as a backend for storing and searching vector data in AI scenarios.
 
## Objectives
Store and retrieve vector data.
Perform similarity searches using PostgreSQL.
 
## Estimated Time
20 minutes
 
## Scenario
You need a relational database solution (SQL DB) that also supports storing and querying AI vector data. This lab guides you through the process, step by step.
 
## Pre-requisites
None. The database has been pre-created for you.
 
## Tasks
Execute files in [SQL folder](https://github.com/Azure/WPLUS-Azure-AI-Platform-and-Services/tree/AugRelease/Vector-DB/Cosmos%20DB) in ascending order. Files are numberd 1_.... , 2_.... etc. The .sql files need to be executed in SQL Server Management Studio (SSMS), which you can find via the Start Menu on the lab VM (it is not pinned to the Desktop), while .py files are executed with "python file.py" - for example "python 2_LoadMovideData.py" (the previous assumes you have nagivated to the directory containing the Python file).


# Lab: Using Vector Databases in Azure SQL Database

## 1. Locate Your Azure SQL Database
1. [ ] In the **Azure Portal**, navigate to your resource group (in this example: `azureaiworkshoprg`).
2. [ ] Locate your SQL Database resource (example: `vectordb`).
3. [ ] Click on the database name to open its details.

![Azure Portal SQL Database Selection](Lab%2010%20-%20Vector-DB/SQL/images/1.png)

---

## 2. Get the Server Name
1. [ ] In the SQL Database overview page, note the **Server name** value (example: **sqlavector-53809613.database.windows.net**).
2. [ ] You will need this server name to connect from SQL Server Management Studio (SSMS).

![Azure Portal Server Name](Lab%2010%20-%20Vector-DB/SQL/images/2.png)

---

## 3. Open SQL Server Management Studio (SSMS)
1. [ ] Launch SSMS from your taskbar or Start menu.
2. [ ] Ensure SSMS is installed before proceeding.

![SSMS Icon in Taskbar](Lab%2010%20-%20Vector-DB/SQL/images/3.png)

---

## 4. Connect to the Server in SSMS
1. [ ] In the left-most navigation blade on the SQL Server page, navigate to Security/Networking.
2. [ ] In the 'Firewall rules' section, select 'Add your client IPv4 address'. Select Save. 


![Add Firewall Rule](Lab%2010%20-%20Vector-DB/SQL/images/4a.png)


3. [ ] In the **Connect to Server** dialog:
   - [ ] **Server type:** Database Engine  
   - [ ] **Server name:** Paste the value from Step 2.  
   - [ ] **Authentication:** SQL Server Authentication  
   - [ ] **Login:** Your SQL admin login (example: `sqladmin`)  
   - [ ] **Password:** Your admin password  
4. [ ] Click **Connect**.

![SSMS Connect to Server](Lab%2010%20-%20Vector-DB/SQL/images/4b.png)

---

## 5. Select the Database
1. [ ] Click the **Options >>** button in the connection window.
2. [ ] In the **Connect to database** field, type your database name (example: `vectordb`).
3. [ ] Click **Connect**.

![SSMS Select Database](Lab%2010%20-%20Vector-DB/SQL/images/5.png)

---

## 6. Open the Setup Script
1. [ ] In SSMS, go to **File → Open → File...**.
2. [ ] This allows you to load the SQL file for setting up the lab environment.

![SSMS Open File Menu](Lab%2010%20-%20Vector-DB/SQL/images/6.png)

---

## 7. Select the SQL Setup Script
1. [ ] Navigate to the folder containing your lab files.
2. [ ] Select the setup script (example: `1_Setup.sql`).
3. [ ] Click **Open**.

![SSMS Select Setup File](Lab%2010%20-%20Vector-DB/SQL/images/7.png)

---

## 8. Run the Setup Script
1. [ ] Review the SQL script to confirm it matches the intended schema.
2. [ ] The example script:
   ```sql
   drop table if exists dbo.MovieQuotes;
   go

   create table dbo.MovieQuotes
   (
       id int identity(1,1),
       quote nvarchar(max),
       movie nvarchar(max),
       year_released char(4),
       embedding vector(1536),
       constraint pk_quotes primary key clustered (id)
   );
   go
   ```
3. [ ] Press **F5** or click **Execute**.
4. [ ] Verify the **Commands completed successfully** message.

![SSMS Script Execution](Lab%2010%20-%20Vector-DB/SQL/images/8.png)

---

## 9. Open Visual Studio Code
1. [ ] Launch **Visual Studio Code** from your taskbar or Start menu.

![VS Code Icon in Taskbar](Lab%2010%20-%20Vector-DB/SQL/images/9.png)

---

## 10. Open the Lab Folder in VS Code
1. [ ] In VS Code, go to **File → Open Folder...**.
2. [ ] Select the folder containing the lab files on the Desktop..
3. [ ] Click **Select Folder**.

![VS Code Open Folder](Lab%2010%20-%20Vector-DB/SQL/images/10.png)

---

## 11. Select the Lab Folder
1. [ ] In the **Open Folder** dialog, navigate to your lab directory.
2. [ ] Select the `SQL` folder containing your lab files.
3. [ ] Click **Select Folder**.

![VS Code Select Folder](Lab%2010%20-%20Vector-DB/SQL/images/11.png)

---

## 12. Trust the Folder in VS Code
1. [ ] When prompted, choose **Yes, I trust the authors**.
2. [ ] This enables all features for working with your files.

![VS Code Trust Folder](Lab%2010%20-%20Vector-DB/SQL/images/12.png)

---

## 13. Locate the Azure OpenAI Resource
1. [ ] In the Azure Portal, open your resource group (example: `azureaiworkshoprg`).
2. [ ] Find and select your Azure OpenAI resource (example: `myopai-resource-53809613`).

![Azure Portal OpenAI Resource List](Lab%2010%20-%20Vector-DB/SQL/images/13.png)

---

## 14. View Azure OpenAI Resource Overview
1. [ ] Review the resource overview to confirm:
   - [ ] **Status** is Active
   - [ ] **Location** matches your deployment needs
   - [ ] Subscription and API information is correct

![Azure Portal OpenAI Overview](Lab%2010%20-%20Vector-DB/SQL/images/14.png)

---

## 15. Get Keys and Endpoint
1. [ ] In the **Keys and Endpoint** section:
   - [ ] Copy your **KEY 1** value (keep it secure)
   - [ ] Copy the **Endpoint** value
2. [ ] You will use these in your `.env` file for the lab scripts.

![Azure Portal Keys and Endpoint](Lab%2010%20-%20Vector-DB/SQL/images/15.png)

---

## 16. Update the `.env` File
1. [ ] Open `.env` in VS Code. (This file should have been renamed from .env.example - so remove the .example part if you have not already.)
2. [ ] Populate the variables:
   - [ ] `AZURE_OPENAI_EMBEDDING_ADA_ENDPOINT` with your Azure OpenAI endpoint
   - [ ] `EMBEDDING_ADA_MODEL_DEPLOYMENT_NAME` for your embedding model.  This should be "text-embedding-ada-002" and was created in the PostgreSQL lab.  Review the steps in the PostgreSQL lab to deploy this model if you have not already.
   - [ ] `AZURE_OPENAI_EMBEDDING_ADA_API_KEY` from Step 15
   - [ ] `SQL_SERVER` - full URL of your Azure SQL Server

---

## 17. Open a New Terminal in VS Code
1. [ ] In VS Code, go to **Run → Terminal → New Terminal**.
2. [ ] This will open a terminal in the project’s folder.

![VS Code New Terminal](Lab%2010%20-%20Vector-DB/SQL/images/17.png)

---

## 18. Load Data into SQL Database
1. [ ] In the terminal, run the data load script:
   ```powershell
   python.exe .\2_LoadMovieData.py
   ```
2. [ ] This script reads from the CSV and inserts data into your SQL table.

![VS Code Run Load Script](Lab%2010%20-%20Vector-DB/SQL/images/18.png)

---

## 19. Verify Data in SSMS
1. [ ] In SSMS, run:
   ```sql
   SELECT * FROM dbo.MovieQuotes;
   ```
2. [ ] You should see rows populated with `NULL` in the `embedding` column (these will be filled later).

![SSMS MovieQuotes Data](Lab%2010%20-%20Vector-DB/SQL/images/19.png)

---

## 20. Access Azure OpenAI Foundry Portal
1. [ ] From your Azure OpenAI resource page, click **Explore Azure AI Foundry portal**.
2. [ ] This portal allows you to deploy and test AI models, including embeddings.

![Azure AI Foundry Portal](Lab%2010%20-%20Vector-DB/SQL/images/20.png)

---

## 21. Update Movie Embeddings
1. [ ] In VS Code terminal, run the update script:
   ```powershell
   python.exe .\3_UpdateMovieEmbedding.py
   ```
2. [ ] This script generates vector embeddings for each movie quote using your Azure OpenAI deployment.

![VS Code Run Update Embedding](Lab%2010%20-%20Vector-DB/SQL/images/21.png)

---

## 22. Confirm Embedding Update Completion
1. [ ] The terminal should display:
   ```
   Embeddings updated for all quotes.
   ```
2. [ ] This means the `embedding` column in your SQL table now contains vectors for each row.

![VS Code Embedding Update Complete](Lab%2010%20-%20Vector-DB/SQL/images/22.png)

---

## 23. Generate SQL Embeddings
1. [ ] In the terminal, run:
   ```powershell
   python.exe .\4_SQLEmbeddings.py
   ```
2. [ ] This script may be used to test embeddings or store additional ones for querying.

![VS Code Run SQL Embeddings](Lab%2010%20-%20Vector-DB/SQL/images/23.png)

---

## 24. Open the Vector Search Query Script
1. [ ] In SSMS, go to **File → Open → File…**.
2. [ ] Select `5_query.sql` from your lab folder.

![SSMS Open Query File](Lab%2010%20-%20Vector-DB/SQL/images/24.png)

---

## 25. Run a Vector Similarity Query
1. [ ] Example `5_query.sql`:
   ```sql
   declare @x nvarchar(max) = 'texas city'
   declare @retval int, @embedding vector(1536)
   exec @retval = dbo.get_embedding @x, @embedding output;

   select top(10) *,
       vector_distance('cosine', @embedding, embedding) as dist
   from MovieQuotes
   order by dist asc;
   ```
2. [ ] This retrieves the top 10 most similar quotes to the given search phrase.

![SSMS Vector Query Results](Lab%2010%20-%20Vector-DB/SQL/images/25.png)

---

## 26. View the Embedding Model in Azure AI Foundry
1. [ ] In the **Azure AI Foundry** portal, go to **Model catalog**.
2. [ ] Locate and select the embedding model you are using (example: `text-embedding-ada-002`).

![Azure AI Foundry Model Catalog](Lab%2010%20-%20Vector-DB/SQL/images/26.png)

---

## 27. Deploy the Embedding Model
1. [ ] Click **Use this model** and configure the deployment:
   - [ ] **Deployment name:** matches your `.env` value
   - [ ] **Deployment type:** Global Standard
   - [ ] Ensure your AI resource, location, and capacity meet requirements.
2. [ ] Click **Deploy** to make it available for your scripts.

![Azure AI Foundry Deploy Model](Lab%2010%20-%20Vector-DB/SQL/images/27.png)
