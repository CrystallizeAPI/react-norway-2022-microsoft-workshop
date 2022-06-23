# React Norway 2022 -  Deploy a Crystallize Remix App to Microsoft Azure

Workshop with Crystallize and Microsoft.

## Agenda

* Basics 
    * Crystallize 
    * Remix Run
    * Microsoft Azure

* Running the Demo App
* Overview of the code
    * Remix
    * GraphQL
    * Dockerfile

* Deployment
    * Using Azure CLI

## App installation

This repo is using Crystallize public tenant `donout` to build the catalog, therefore this no need for api keys or any specifc environment variables.

```bash
npm install
```

## Running the app

```bash
npm run start
```


## Local development

### Run the web application

```bash
npm run dev
```

### Watch and recompile the CSS on the fly

```bash
npm run dev:css
```

### Generate Graphql Static Typed files

```bash
npm run generate:gql
```

## Deployment 

Deployment is using Microsoft Azure Container App

### Dockerfile

The `Dockerfile` is kept ultra simple (no multi-stage builds) for the workshop.

### Azure Credentials and CLI Installation

1. [Claim your free Azure credits](https://aka.ms/free-azure-pass) if needed
2. [Install Azure CLI](https://docs.microsoft.com/en-us/cli/azure/install-azure-cli?view=azure-cli-latest)
3. Install containerapp extension of the Azure CLI
```bash
az extension add --name containerapp --upgrade
```
4. Deploy!
```bash
az containerapp up --name crystallize-remix-app --source .
```


