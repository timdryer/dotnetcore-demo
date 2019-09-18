# dotnetcore-demo
This repository will be used to hold a sample dotnetcore razor page demo application.

Here is an outline of the steps needed to deploy to Azure WebApp.
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
