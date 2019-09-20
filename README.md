# dotnetcore-demo
This repository will be used to hold a sample dotnetcore razor page demo application (using dotnet core 2.2.) It is the sample app provided by Microsoft and has no external dependencies or database connections.

If you are the intended recipient of this repository, please build the code in this repository and deploy it to Azure. Your final solution should ultimately be automated, such that a code commit will initiate a new build and deployment. Below is a high level overview of the steps I have taken to automate the process. Please be prepared to demo your process and final results to the team. 

Automation steps I have taken to deploy to Azure WebApp.
* Fork this repo.
* Create a free account in MS Azure.
* In Azure portal (portal.azure.com), create a Resource Group. Within the resource group create a WebApp.
* In Azure DevOps (dev.azure.com), create a build Pipeline using "ASP.NET CORE" and the engine is dotnet core 2.2.
  NOTE: When configuring your build there is an option for "classic editor." I found this much easier to work with.
  Steps are: Restore, build, publish. 
* Verify that it builds and that you have a build artifact.
* Create a Release Pipeline.

The following Pluralsight course is a great resource on this process:
 https://www.pluralsight.com/courses/azure-devops-getting-started

Good luck!
