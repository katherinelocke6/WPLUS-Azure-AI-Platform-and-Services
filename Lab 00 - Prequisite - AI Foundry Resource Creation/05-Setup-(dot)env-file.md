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

- [Create Azure AI Foundry Project](01-Create-Azure-Foundry-Project.md)
- [Deploy models into the Azure AI Foundry Project](02-Deploy-Models.md)
- [Create connections to Bing Resources at Azure AI Foundry resource level](03-Connect-to-Bing-Resources.md)
- [Create connections to Azure AI Search at AI Foundry resource level](04-Connect-to-Azure-AI-Search.md)

## 🛠️ Tasks

### 1. Copy .env.example as .env

- [ ] Find the .env.example file that is supplied as the template. You can find it in the root folder provided within the lab VM
![Go to resource](images/Envfile_location.png)

- [ ] Copy .env.example to save as .env in the same folder location
- [ ] Edit .env to provide the actual value from your environment by following the steps
- [ ] Do not modify the section that is marked for not to modify

### 2. Go to the Microsoft Foundry – Overview page

- [ ] Go to [https://ai.azure.com](https://ai.azure.com/) 
- [ ] Sign in with your Azure credentials (if requested)

### 3. Set the values for the AI_FOUNDRY_PROJECT_ENDPOINT and AZURE_PROJECT_NAME variables

- [ ] At  the center of the **Overview** section, you can find the Azure AI Foundry project endpoint as shown below
- [ ] Copy and paste into .env file as the value for AI_FOUNDRY_PROJECT_ENDPOINT
![Go to project](images/AZURE_AI_FOUNDRY_PROJECT_ENDPOINT.png)

- [ ] Copy and paste into .env file the AZURE_PROJECT_NAME value. 
  - The "AZURE_PROJECT_NAME" value is the last part of the endpoint string after the "/" (eg. firstProject)

### 4. Set the values for the AZURE_OPENAI_ENDPOINT and AZURE_OPENAI_API_KEY variables

- [ ] Scroll to the bottom on the left side menu
- [ ] Click **Models + endpoints** in the My assets section
- [ ] You can view list of Model deployments on the right side
- [ ] Right click on each name to open in a new browser tab and to get details
![Go to project](images/modelapikey1.png)

- [ ] As shown in the screenshot, copy the Endpoint Target URI and paste it into `.env` as the value for `AZURE_OPENAI_ENDPOINT`.
- [ ] Copy the Model Name and Key and paste into .env file as the value for MODEL_DEPLOYMENT_NAME and AZURE_OPENAI_API_KEY respectively.
![Go to project](images/modelapikey2.png)
  - The Model Name is the first box string.

- [ ] The gpt-5.1 chat model is served on the newer Responses API surface: its Endpoint Target URI is in the form of https://_AI-FOUNDRY-NAME_.cognitiveservices.azure.com/openai/responses?api-version=_MODEL-API-VERSION_ -- there is no `/deployments/_MODEL-DEPLOYMENT-NAME_/chat/completions` path segment for this model. The Model Name still comes from the separate **Deployment info** box shown above, not from the URI path.
- [ ] Copy the last section from the URI (date) and paste into .env file as the value for MODEL_API_VERSION
![Go to project](images/modelapikey3.png)

### 5. Set the value for the PROMPT_MODEL_DEPLOYMENT_NAME variable (gpt-4o)

- [ ] Click on the **gpt-4o** model deployment (created in [Deploy models into the Azure AI Foundry Project](02-Deploy-Models.md)) to get its details, the same way as above.
- [ ] Copy the Model Name and paste into .env file as the value for `PROMPT_MODEL_DEPLOYMENT_NAME`.
- [ ] This dedicated variable is used by **Lab 02 (Bing grounding)** and **Lab 06 (Prompt Engineering)**, because both exercises require a gpt-4o deployment rather than the shared `MODEL_DEPLOYMENT_NAME` (gpt-5.1): Grounding with Bing Search does not support GPT-5 models, and the Prompt Engineering lab's temperature examples are not supported by GPT-5-family reasoning models. All other labs continue to use `MODEL_DEPLOYMENT_NAME` unchanged.

### 6. Set the values for the AZURE_OPENAI_EMBEDDING_ENDPOINT and AZURE_OPENAI_EMBEDDING_API_KEY variables

- [ ] Similar steps as above. Follow for both text-embedding-3-large and text-embedding-ada-002 models
- [ ] Click on embeddding model name to get details
- [ ] For **text-embedding-3-large**, copy the Endpoint Target URI into `AZURE_OPENAI_EMBEDDING_ENDPOINT`. For **text-embedding-ada-002**, copy the Endpoint Target URI into `AZURE_OPENAI_EMBEDDING_ADA_ENDPOINT`.
- [ ] For **text-embedding-3-large**, copy the key into `AZURE_OPENAI_EMBEDDING_API_KEY`. For **text-embedding-ada-002**, copy the key into `AZURE_OPENAI_EMBEDDING_ADA_API_KEY`.
![Go to project](images/modelapikey2e.png)

- [ ] Embedding Endpoint Target URIs use the Azure OpenAI embeddings route, for example `https://<resource>/openai/deployments/<deployment-name>/embeddings?api-version=<api-version>`. Do not use the `/chat/completions` route for an embedding model.
- [ ] For **text-embedding-3-large**, set `EMBEDDING_MODEL_DEPLOYMENT_NAME` and `EMBEDDING_MODEL_API_VERSION`. For **text-embedding-ada-002**, set `EMBEDDING_ADA_MODEL_DEPLOYMENT_NAME` and `EMBEDDING_ADA_MODEL_API_VERSION`.

### 7. Set the value for the GROUNDING_WITH_BING_CONNECTION_NAME variable

#### Go to the Connected Resources section

- [ ] Left side, in the **Management center**, in the Resource section, Click **Connected resources**
- [ ] You can see list of connected resources
![List models deployed](images/gwbingconnectedinlist.png)

- [ ] Copy the "Name" of the "Grounding with Bing Search" connection (Corresponding Target columns is https://api.bing.microsoft.com/) and paste into .env file as the value for GROUNDING_WITH_BING_CONNECTION_NAME

### 8. Set the values for the TENANT_ID, AZURE_RESOURCE_GROUP and AZURE_SUBSCRIPTION_ID variables

- [ ] Go to [https://portal.azure.com](https://portal.azure.com) and sign into the Azure portal with your Azure credentials.
- [ ] In the top search bar, type **entra id**
- [ ] Select **Microsoft Entra ID** from the search results
![Go to project](images/tenantid1.png)

- [ ] In the Overview section, find **Tenant ID** as shown in the screenshot
- [ ] Copy Tenant ID and paste into .env file as the value for TENANT_ID
![Go to project](images/tenantid2.png)

- [ ] In the top search bar, type **resource groups**
- [ ] Select **Resource groups** from the search results
![Go to project](images/rg1.png)

- [ ] Copy the resource group name (eg azureaiworkshoprg) and paste into .env file as the value for AZURE_RESOURCE_GROUP
![Go to project](images/rg2.png)

- [ ] Click the resource group name to go to the next page and Overview section
- [ ] Copy the Subscription ID as shown in the screenshot and paste it into the `.env` file as the value for `AZURE_SUBSCRIPTION_ID`.
![Go to project](images/sub1.png)

### 9. Set the values for the AZURE_AI_SEARCH_ENDPOINT and AZURE_AI_SEARCH_API_KEY variables

- [ ] In the top search bar, type **ai search**
- [ ] Select **AI Search** from the search results
- [ ] You will see the AI Search service that you have created (eg ai-search-53439517)
- [ ] Click on the name
- [ ] Next screen, In the Overview section, find the **Url** as shown in below screenshot
- [ ] Copy and paste into .env file as the value for AZURE_AI_SEARCH_ENDPOINT
  ![Go to project](images/aisearchurl.png)
- [ ] On the left side Menu, expand **Security + networking**
- [ ] Click **Keys**
- [ ] Copy the key as shown in the screenshot for this Lab, and paste into .env file as the value for AZURE_AI_SEARCH_API_KEY
  ![Go to project](images/aisearchapikey.png)

### 10. Set the values for the COSMOS_ENDPOINT and COSMOS_KEY variables

- [ ] In the top search bar, type **cosmos**
- [ ] Select **Azure Cosmos DB** from the search results
- [ ] You will see the Azure Cosmos DB that you have created (eg cosmos-53439517)
- [ ] Click on the name
- [ ] Next screen, at the left side, expand **Settings**, Click **Keys**
- [ ] Copy **URI** and paste into .env file as the value for COSMOS_ENDPOINT
- [ ] Toggle the eye icon at the far right of **PRIMARY KEY**, Copy the key and paste into .env file as the value for COSMOS_KEY
![Go to project](images/cosmos_ep_key.png)

### 11. Set the value for the SQL_SERVER variable

- [ ] In the top search bar, type **sql**
- [ ] Select **SQL Servers** from the search results
- [ ] You will see the SQL Server that you have created (eg sqlserver-53439517)
- [ ] Click on the name
- [ ] Next screen, in the **Overview** section, copy **Server Name** and paste it into `.env` as the value for `SQL_SERVER`.
- [ ] Open `C:\Users\Admin\Desktop\LABS\sqlcredentials.txt` and copy the provided SQL password into `.env` as the value for `SQL_PWD`. Do not copy the password into the lab instructions.
![Go to project](images/sqlserver.png)

### 12. Set additional Microsoft Foundry Values (for Advance Fine-Tuning Lab)

- [ ] Go to your Microsoft Foundry resource in the Azure portal
- [ ] In the **Overview** section, copy and save the following values:
  - Microsoft Foundry Resource Name

    ![Screenshot of the Azure OpenAI resource management pane](../Lab%2005%20-%20Fine-Tuning/Advance%20Fine-Tuning/images/screenshot-foundry-overview-1.png)

- [ ] Go to **Resource Management** section, click **Keys and Endpoint** sub-section
- [ ] Click **OpenAI**
- [ ] Copy and save the following values:
  - **Endpoint URL**.
    - Select this endpoint URL: **Language APIs**

    ![Screenshot of the Azure OpenAI resource management pane.](../Lab%2005%20-%20Fine-Tuning/Advance%20Fine-Tuning/images/screenshot-foundry-keys-and-endpoint.png)

- [ ] Open the **.env** file located in the root folder.
- [ ] Paste saved values to the variables in the file **.env**:
  - AZURE_OPENAI_BASE_URL_ENDPOINT = "_<Foundry_Endpoint_URL>_"
  - AI_FOUNDRY_NAME = "_<Foundry_Name>_"
- [ ] Save the file and close it.

## ✅ Completed

- [ ] You should have the .env setup complete.
