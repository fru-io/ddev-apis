# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [live/administration/v1alpha1/usage.proto](#live/administration/v1alpha1/usage.proto)
    - [UsageItem](#ddev.administration.v1alpha1.UsageItem)
    - [UsageRequest](#ddev.administration.v1alpha1.UsageRequest)
    - [UsageResponse](#ddev.administration.v1alpha1.UsageResponse)
  
- [live/administration/v1alpha1/workspace.proto](#live/administration/v1alpha1/workspace.proto)
    - [AddWorkspaceAdminRequest](#ddev.administration.v1alpha1.AddWorkspaceAdminRequest)
    - [AddWorkspaceAdminResponse](#ddev.administration.v1alpha1.AddWorkspaceAdminResponse)
    - [AddWorkspaceDeveloperRequest](#ddev.administration.v1alpha1.AddWorkspaceDeveloperRequest)
    - [AddWorkspaceDeveloperResponse](#ddev.administration.v1alpha1.AddWorkspaceDeveloperResponse)
    - [DeleteWorkspaceAdminRequest](#ddev.administration.v1alpha1.DeleteWorkspaceAdminRequest)
    - [DeleteWorkspaceAdminResponse](#ddev.administration.v1alpha1.DeleteWorkspaceAdminResponse)
    - [DeleteWorkspaceDeveloperRequest](#ddev.administration.v1alpha1.DeleteWorkspaceDeveloperRequest)
    - [DeleteWorkspaceDeveloperResponse](#ddev.administration.v1alpha1.DeleteWorkspaceDeveloperResponse)
    - [GetDefaultWorkspaceRequest](#ddev.administration.v1alpha1.GetDefaultWorkspaceRequest)
    - [GetDefaultWorkspaceResponse](#ddev.administration.v1alpha1.GetDefaultWorkspaceResponse)
    - [GetWorkspaceRequest](#ddev.administration.v1alpha1.GetWorkspaceRequest)
    - [GetWorkspaceResponse](#ddev.administration.v1alpha1.GetWorkspaceResponse)
    - [ListWorkspaceRequest](#ddev.administration.v1alpha1.ListWorkspaceRequest)
    - [ListWorkspaceResponse](#ddev.administration.v1alpha1.ListWorkspaceResponse)
    - [SetDefaultWorkspaceRequest](#ddev.administration.v1alpha1.SetDefaultWorkspaceRequest)
    - [SetDefaultWorkspaceResponse](#ddev.administration.v1alpha1.SetDefaultWorkspaceResponse)
    - [Workspace](#ddev.administration.v1alpha1.Workspace)
    - [Workspace.MetadataEntry](#ddev.administration.v1alpha1.Workspace.MetadataEntry)
  
    - [ListWorkspaceRequest.ListWorkspaceScope](#ddev.administration.v1alpha1.ListWorkspaceRequest.ListWorkspaceScope)
  
- [live/administration/v1alpha1/githubintegration.proto](#live/administration/v1alpha1/githubintegration.proto)
    - [CreateGithubIntegrationRequest](#ddev.administration.v1alpha1.CreateGithubIntegrationRequest)
    - [CreateGithubIntegrationResponse](#ddev.administration.v1alpha1.CreateGithubIntegrationResponse)
    - [DeleteGithubIntegrationRequest](#ddev.administration.v1alpha1.DeleteGithubIntegrationRequest)
    - [DeleteGithubIntegrationResponse](#ddev.administration.v1alpha1.DeleteGithubIntegrationResponse)
    - [GetRepositoryMetadataRequest](#ddev.administration.v1alpha1.GetRepositoryMetadataRequest)
    - [GetRepositoryMetadataResponse](#ddev.administration.v1alpha1.GetRepositoryMetadataResponse)
    - [GithubIntegrationRequest](#ddev.administration.v1alpha1.GithubIntegrationRequest)
    - [GithubIntegrationResponse](#ddev.administration.v1alpha1.GithubIntegrationResponse)
    - [GithubRepositoryName](#ddev.administration.v1alpha1.GithubRepositoryName)
    - [GithubRepositoryOwner](#ddev.administration.v1alpha1.GithubRepositoryOwner)
    - [GithubRepositoryReference](#ddev.administration.v1alpha1.GithubRepositoryReference)
    - [ListGithubRepositoriesRequest](#ddev.administration.v1alpha1.ListGithubRepositoriesRequest)
    - [ListGithubRepositoriesResponse](#ddev.administration.v1alpha1.ListGithubRepositoriesResponse)
    - [UpdateGithubIntegrationRequest](#ddev.administration.v1alpha1.UpdateGithubIntegrationRequest)
    - [UpdateGithubIntegrationResponse](#ddev.administration.v1alpha1.UpdateGithubIntegrationResponse)
  
- [live/administration/v1alpha1/gitlabintegration.proto](#live/administration/v1alpha1/gitlabintegration.proto)
    - [CreateGitlabIntegrationRequest](#ddev.administration.v1alpha1.CreateGitlabIntegrationRequest)
    - [CreateGitlabIntegrationResponse](#ddev.administration.v1alpha1.CreateGitlabIntegrationResponse)
    - [DeleteGitlabIntegrationRequest](#ddev.administration.v1alpha1.DeleteGitlabIntegrationRequest)
    - [DeleteGitlabIntegrationResponse](#ddev.administration.v1alpha1.DeleteGitlabIntegrationResponse)
    - [GetGitlabIntegrationRequest](#ddev.administration.v1alpha1.GetGitlabIntegrationRequest)
    - [GetGitlabIntegrationResponse](#ddev.administration.v1alpha1.GetGitlabIntegrationResponse)
    - [GetGitlabProjectMetadataRequest](#ddev.administration.v1alpha1.GetGitlabProjectMetadataRequest)
    - [GetGitlabProjectMetadataResponse](#ddev.administration.v1alpha1.GetGitlabProjectMetadataResponse)
    - [GitlabIntegration](#ddev.administration.v1alpha1.GitlabIntegration)
    - [GitlabIntegrationResponse](#ddev.administration.v1alpha1.GitlabIntegrationResponse)
    - [GitlabProjectName](#ddev.administration.v1alpha1.GitlabProjectName)
    - [GitlabProjectOwner](#ddev.administration.v1alpha1.GitlabProjectOwner)
    - [GitlabProjectReference](#ddev.administration.v1alpha1.GitlabProjectReference)
    - [ListGitlabIntegrationsRequest](#ddev.administration.v1alpha1.ListGitlabIntegrationsRequest)
    - [ListGitlabIntegrationsResponse](#ddev.administration.v1alpha1.ListGitlabIntegrationsResponse)
    - [ListGitlabProjectsRequest](#ddev.administration.v1alpha1.ListGitlabProjectsRequest)
    - [ListGitlabProjectsResponse](#ddev.administration.v1alpha1.ListGitlabProjectsResponse)
  
    - [ReferenceType](#ddev.administration.v1alpha1.ReferenceType)
  
- [live/administration/v1alpha1/auth.proto](#live/administration/v1alpha1/auth.proto)
    - [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest)
    - [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse)
    - [CreateRoleRequest](#ddev.administration.v1alpha1.CreateRoleRequest)
    - [CreateRoleResponse](#ddev.administration.v1alpha1.CreateRoleResponse)
    - [CreateTokenRequest](#ddev.administration.v1alpha1.CreateTokenRequest)
    - [CreateTokenResponse](#ddev.administration.v1alpha1.CreateTokenResponse)
    - [DescribeRoleRequest](#ddev.administration.v1alpha1.DescribeRoleRequest)
    - [DescribeRoleResponse](#ddev.administration.v1alpha1.DescribeRoleResponse)
    - [ListCapabilitiesRequest](#ddev.administration.v1alpha1.ListCapabilitiesRequest)
    - [ListCapabilitiesResponse](#ddev.administration.v1alpha1.ListCapabilitiesResponse)
    - [ListRolesRequest](#ddev.administration.v1alpha1.ListRolesRequest)
    - [ListRolesResponse](#ddev.administration.v1alpha1.ListRolesResponse)
    - [Role](#ddev.administration.v1alpha1.Role)
    - [Scope](#ddev.administration.v1alpha1.Scope)
    - [SetCapabilitiesRequest](#ddev.administration.v1alpha1.SetCapabilitiesRequest)
    - [SetCapabilitiesResponse](#ddev.administration.v1alpha1.SetCapabilitiesResponse)
    - [SetRolesRequest](#ddev.administration.v1alpha1.SetRolesRequest)
    - [SetRolesResponse](#ddev.administration.v1alpha1.SetRolesResponse)
  
    - [Capability](#ddev.administration.v1alpha1.Capability)
  
- [live/administration/v1alpha1/service.proto](#live/administration/v1alpha1/service.proto)
    - [Administration](#ddev.administration.v1alpha1.Administration)
  
- [live/administration/v1alpha1/quota.proto](#live/administration/v1alpha1/quota.proto)
    - [QuotaItem](#ddev.administration.v1alpha1.QuotaItem)
    - [QuotaRequest](#ddev.administration.v1alpha1.QuotaRequest)
    - [QuotaResponse](#ddev.administration.v1alpha1.QuotaResponse)
  
- [Scalar Value Types](#scalar-value-types)



<a name="live/administration/v1alpha1/usage.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/administration/v1alpha1/usage.proto



<a name="ddev.administration.v1alpha1.UsageItem"></a>

### UsageItem



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| usage | [string](#string) |  |  |






<a name="ddev.administration.v1alpha1.UsageRequest"></a>

### UsageRequest







<a name="ddev.administration.v1alpha1.UsageResponse"></a>

### UsageResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [UsageItem](#ddev.administration.v1alpha1.UsageItem) | repeated |  |





 

 

 

 



<a name="live/administration/v1alpha1/workspace.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/administration/v1alpha1/workspace.proto



<a name="ddev.administration.v1alpha1.AddWorkspaceAdminRequest"></a>

### AddWorkspaceAdminRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the workspace to add this administrator to. |
| email | [string](#string) |  | `Required` The email of the workspace administrator |
| subscription | [string](#string) |  | `Required` The subscription to which the workspace belongs |






<a name="ddev.administration.v1alpha1.AddWorkspaceAdminResponse"></a>

### AddWorkspaceAdminResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.administration.v1alpha1.Workspace) |  | `OutputOnly` The updated workspace resource. |






<a name="ddev.administration.v1alpha1.AddWorkspaceDeveloperRequest"></a>

### AddWorkspaceDeveloperRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the workspace to add this developer to. |
| email | [string](#string) |  | `Required` The email of the workspace developer. |
| subscription | [string](#string) |  | `Required` The subscription to which the workspace belongs |






<a name="ddev.administration.v1alpha1.AddWorkspaceDeveloperResponse"></a>

### AddWorkspaceDeveloperResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.administration.v1alpha1.Workspace) |  | `OutputOnly` The updated workspace resource. |






<a name="ddev.administration.v1alpha1.DeleteWorkspaceAdminRequest"></a>

### DeleteWorkspaceAdminRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the workspace to remove this administrator from. |
| email | [string](#string) |  | `Required` The email of the workspace administrator. |
| subscription | [string](#string) |  | `Required` The subscription to which the workspace belongs |






<a name="ddev.administration.v1alpha1.DeleteWorkspaceAdminResponse"></a>

### DeleteWorkspaceAdminResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.administration.v1alpha1.Workspace) |  | `OutputOnly` The updated workspace resource. |






<a name="ddev.administration.v1alpha1.DeleteWorkspaceDeveloperRequest"></a>

### DeleteWorkspaceDeveloperRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the workspace to remove this developer from. |
| email | [string](#string) |  | `Required` The email of the workspace developer. |
| subscription | [string](#string) |  | `Required` The subscription to which the workspace belongs |






<a name="ddev.administration.v1alpha1.DeleteWorkspaceDeveloperResponse"></a>

### DeleteWorkspaceDeveloperResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.administration.v1alpha1.Workspace) |  | `OutputOnly` The updated workspace resource. |






<a name="ddev.administration.v1alpha1.GetDefaultWorkspaceRequest"></a>

### GetDefaultWorkspaceRequest







<a name="ddev.administration.v1alpha1.GetDefaultWorkspaceResponse"></a>

### GetDefaultWorkspaceResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `OutputOnly` The callers default workspace |






<a name="ddev.administration.v1alpha1.GetWorkspaceRequest"></a>

### GetWorkspaceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The desired workspace name |






<a name="ddev.administration.v1alpha1.GetWorkspaceResponse"></a>

### GetWorkspaceResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.administration.v1alpha1.Workspace) |  | `OutputOnly` The name of the workspace best passed into the auth server |






<a name="ddev.administration.v1alpha1.ListWorkspaceRequest"></a>

### ListWorkspaceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| Scope | [ListWorkspaceRequest.ListWorkspaceScope](#ddev.administration.v1alpha1.ListWorkspaceRequest.ListWorkspaceScope) |  | `Optional` The scope of the list request. Defaults to `ListWorkspaceScope.DEVELOPER`. |






<a name="ddev.administration.v1alpha1.ListWorkspaceResponse"></a>

### ListWorkspaceResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspaces | [Workspace](#ddev.administration.v1alpha1.Workspace) | repeated | `OutputOnly` - A workspace for the current user |






<a name="ddev.administration.v1alpha1.SetDefaultWorkspaceRequest"></a>

### SetDefaultWorkspaceRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| subscription | [string](#string) |  | `Required` The id of the subscription for the workspace |
| workspace | [string](#string) |  | `Required` The name of the workspace in the subscription |






<a name="ddev.administration.v1alpha1.SetDefaultWorkspaceResponse"></a>

### SetDefaultWorkspaceResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.administration.v1alpha1.Workspace) |  | `OutputOnly` The users default workspace |






<a name="ddev.administration.v1alpha1.Workspace"></a>

### Workspace



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` Workspace Name. |
| admins | [string](#string) | repeated | `OutputOnly` Administrators of the workspace |
| developers | [string](#string) | repeated | `OutputOnly` Developers in the workspace |
| subscription | [string](#string) |  | The ID of the subscription which this workspace belongs |
| metadata | [Workspace.MetadataEntry](#ddev.administration.v1alpha1.Workspace.MetadataEntry) | repeated | Optional metadata information about this workspace |






<a name="ddev.administration.v1alpha1.Workspace.MetadataEntry"></a>

### Workspace.MetadataEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |





 


<a name="ddev.administration.v1alpha1.ListWorkspaceRequest.ListWorkspaceScope"></a>

### ListWorkspaceRequest.ListWorkspaceScope
Defines the scope of the request.  If the scope is set to ADMIN the response will contain only workspaces where the provided token user is an administrator.
If the request is set to DEVELOPER the response will contain any workspace where the provided token user is an administrator or a developer.

| Name | Number | Description |
| ---- | ------ | ----------- |
| DEVELOPER | 0 |  |
| ADMIN | 1 |  |


 

 

 



<a name="live/administration/v1alpha1/githubintegration.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/administration/v1alpha1/githubintegration.proto



<a name="ddev.administration.v1alpha1.CreateGithubIntegrationRequest"></a>

### CreateGithubIntegrationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integration | [GithubIntegrationRequest](#ddev.administration.v1alpha1.GithubIntegrationRequest) |  | `Required` The new GithubIntegration resource |






<a name="ddev.administration.v1alpha1.CreateGithubIntegrationResponse"></a>

### CreateGithubIntegrationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integration | [GithubIntegrationResponse](#ddev.administration.v1alpha1.GithubIntegrationResponse) |  | `OutputOnly` The new GithubIntegration resource |






<a name="ddev.administration.v1alpha1.DeleteGithubIntegrationRequest"></a>

### DeleteGithubIntegrationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integration | [GithubIntegrationRequest](#ddev.administration.v1alpha1.GithubIntegrationRequest) |  | `Required` The deleted GithubIntegration resource. |






<a name="ddev.administration.v1alpha1.DeleteGithubIntegrationResponse"></a>

### DeleteGithubIntegrationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integration | [GithubIntegrationResponse](#ddev.administration.v1alpha1.GithubIntegrationResponse) |  | `OutputOnly` The deleted GithubIntegration resource. |






<a name="ddev.administration.v1alpha1.GetRepositoryMetadataRequest"></a>

### GetRepositoryMetadataRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` The Repository ID. |
| owner | [string](#string) |  | `Optional` The Repository owner. |
| name | [string](#string) |  | `Optional` The Repository name. |






<a name="ddev.administration.v1alpha1.GetRepositoryMetadataResponse"></a>

### GetRepositoryMetadataResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `OutputOnly` The Repository ID. |
| owner | [string](#string) |  | `OutputOnly` The Repository owner. |
| name | [string](#string) |  | `OutputOnly` The Repository name. |
| meta | [GithubRepositoryReference](#ddev.administration.v1alpha1.GithubRepositoryReference) | repeated | `OutputOnly` The Repository metadata. |






<a name="ddev.administration.v1alpha1.GithubIntegrationRequest"></a>

### GithubIntegrationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| installationID | [int64](#int64) |  | `Required` Installation ID. |
| githubAppID | [int64](#int64) |  | `Required` Github App ID. |
| githubAppSlug | [string](#string) |  | `Optional` Github App Slug. |






<a name="ddev.administration.v1alpha1.GithubIntegrationResponse"></a>

### GithubIntegrationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| installationID | [int64](#int64) |  | `Required` Installation ID. |
| githubAppID | [int64](#int64) |  | `Required` Github App ID. |






<a name="ddev.administration.v1alpha1.GithubRepositoryName"></a>

### GithubRepositoryName



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `OutputOnly` The Repository ID. |
| name | [string](#string) |  | `OutputOnly` The Repository name. |






<a name="ddev.administration.v1alpha1.GithubRepositoryOwner"></a>

### GithubRepositoryOwner



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` The Owner name. |
| repositories | [GithubRepositoryName](#ddev.administration.v1alpha1.GithubRepositoryName) | repeated | `OutputOnly` List of Repository Names for this Owner. |
| installationID | [string](#string) |  | `OutputOnly` The Installation ID of this Owner&#39;s GitHub App installation. |






<a name="ddev.administration.v1alpha1.GithubRepositoryReference"></a>

### GithubRepositoryReference



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sha | [string](#string) |  | `OutputOnly` Reference commit sha. |
| branch | [string](#string) |  |  |
| tag | [string](#string) |  |  |
| pullrequest | [string](#string) |  |  |






<a name="ddev.administration.v1alpha1.ListGithubRepositoriesRequest"></a>

### ListGithubRepositoriesRequest







<a name="ddev.administration.v1alpha1.ListGithubRepositoriesResponse"></a>

### ListGithubRepositoriesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [GithubRepositoryOwner](#ddev.administration.v1alpha1.GithubRepositoryOwner) | repeated | `OutputOnly` Github repositories available to the user. |






<a name="ddev.administration.v1alpha1.UpdateGithubIntegrationRequest"></a>

### UpdateGithubIntegrationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integration | [GithubIntegrationRequest](#ddev.administration.v1alpha1.GithubIntegrationRequest) |  | `Required` The updated GithubIntegration resource. |






<a name="ddev.administration.v1alpha1.UpdateGithubIntegrationResponse"></a>

### UpdateGithubIntegrationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integration | [GithubIntegrationResponse](#ddev.administration.v1alpha1.GithubIntegrationResponse) |  | `OutputOnly` The updated GithubIntegration resource. |





 

 

 

 



<a name="live/administration/v1alpha1/gitlabintegration.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/administration/v1alpha1/gitlabintegration.proto



<a name="ddev.administration.v1alpha1.CreateGitlabIntegrationRequest"></a>

### CreateGitlabIntegrationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` Gitlab integration ID. |
| host | [string](#string) |  | `Required` Gitlab server URL. |
| username | [string](#string) |  | `Required` Username for the token. |
| token | [string](#string) |  | `Required` Gitlab Personal Access Token. |






<a name="ddev.administration.v1alpha1.CreateGitlabIntegrationResponse"></a>

### CreateGitlabIntegrationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integration | [GitlabIntegrationResponse](#ddev.administration.v1alpha1.GitlabIntegrationResponse) |  | `OutputOnly` The new GitlabIntegration resource |






<a name="ddev.administration.v1alpha1.DeleteGitlabIntegrationRequest"></a>

### DeleteGitlabIntegrationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` Gitlab integration ID. |






<a name="ddev.administration.v1alpha1.DeleteGitlabIntegrationResponse"></a>

### DeleteGitlabIntegrationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integration | [GitlabIntegrationResponse](#ddev.administration.v1alpha1.GitlabIntegrationResponse) |  | `OutputOnly` The deleted GitlabIntegration resource. |






<a name="ddev.administration.v1alpha1.GetGitlabIntegrationRequest"></a>

### GetGitlabIntegrationRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Required` Gitlab integration ID. |






<a name="ddev.administration.v1alpha1.GetGitlabIntegrationResponse"></a>

### GetGitlabIntegrationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integration | [GitlabIntegrationResponse](#ddev.administration.v1alpha1.GitlabIntegrationResponse) |  | `OutputOnly` Gitlab integration. |






<a name="ddev.administration.v1alpha1.GetGitlabProjectMetadataRequest"></a>

### GetGitlabProjectMetadataRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integrationID | [string](#string) |  | `Required` Integration ID. |
| projectID | [string](#string) |  | `Required` Project ID. |






<a name="ddev.administration.v1alpha1.GetGitlabProjectMetadataResponse"></a>

### GetGitlabProjectMetadataResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `OutputOnly` The Project ID. |
| meta | [GitlabProjectReference](#ddev.administration.v1alpha1.GitlabProjectReference) | repeated | `OutputOnly` The Project metadata. |






<a name="ddev.administration.v1alpha1.GitlabIntegration"></a>

### GitlabIntegration



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `OutputOnly` Gitlab integration ID. |
| owners | [GitlabProjectOwner](#ddev.administration.v1alpha1.GitlabProjectOwner) | repeated | `OutputOnly` Gitlab projects available to the user. |






<a name="ddev.administration.v1alpha1.GitlabIntegrationResponse"></a>

### GitlabIntegrationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `OutputOnly` Gitlab integration ID. |
| host | [string](#string) |  | `OutputOnly` Gitlab server URL. |
| username | [string](#string) |  | `OutputOnly` Username for the token. |






<a name="ddev.administration.v1alpha1.GitlabProjectName"></a>

### GitlabProjectName



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `OutputOnly` The Project ID. |
| name | [string](#string) |  | `OutputOnly` The Project name. |






<a name="ddev.administration.v1alpha1.GitlabProjectOwner"></a>

### GitlabProjectOwner



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` Gitlab account username. |
| projects | [GitlabProjectName](#ddev.administration.v1alpha1.GitlabProjectName) | repeated | `OutputOnly` List of Project Names for this Owner. |






<a name="ddev.administration.v1alpha1.GitlabProjectReference"></a>

### GitlabProjectReference



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sha | [string](#string) |  | `OutputOnly` Reference commit sha. |
| ref | [string](#string) |  | `OutputOnly` Reference type. |
| type | [ReferenceType](#ddev.administration.v1alpha1.ReferenceType) |  | `OutputOnly` Reference type (branch, tag, mr). |






<a name="ddev.administration.v1alpha1.ListGitlabIntegrationsRequest"></a>

### ListGitlabIntegrationsRequest







<a name="ddev.administration.v1alpha1.ListGitlabIntegrationsResponse"></a>

### ListGitlabIntegrationsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integrations | [GitlabIntegrationResponse](#ddev.administration.v1alpha1.GitlabIntegrationResponse) | repeated | `OutputOnly` Gitlab integrations. |






<a name="ddev.administration.v1alpha1.ListGitlabProjectsRequest"></a>

### ListGitlabProjectsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| id | [string](#string) |  | `Optional` Gitlab integration ID. |






<a name="ddev.administration.v1alpha1.ListGitlabProjectsResponse"></a>

### ListGitlabProjectsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| integrations | [GitlabIntegration](#ddev.administration.v1alpha1.GitlabIntegration) | repeated | `OutputOnly` Gitlab integrations available to the user. |





 


<a name="ddev.administration.v1alpha1.ReferenceType"></a>

### ReferenceType


| Name | Number | Description |
| ---- | ------ | ----------- |
| Branch | 0 |  |
| Tag | 1 |  |
| MR | 2 |  |


 

 

 



<a name="live/administration/v1alpha1/auth.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/administration/v1alpha1/auth.proto



<a name="ddev.administration.v1alpha1.AuthorizationRequest"></a>

### AuthorizationRequest
A request whose context can be used to validate user actions against the platform






<a name="ddev.administration.v1alpha1.AuthorizationResponse"></a>

### AuthorizationResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| status | [bool](#bool) |  | If the user matched this authorization type |
| capability | [Capability](#ddev.administration.v1alpha1.Capability) |  |  |
| role | [string](#string) |  |  |






<a name="ddev.administration.v1alpha1.CreateRoleRequest"></a>

### CreateRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name for a user role |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | `Optional` The capabilities of the role |






<a name="ddev.administration.v1alpha1.CreateRoleResponse"></a>

### CreateRoleResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name for a user role |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | `Optional` The capabilities of the role |






<a name="ddev.administration.v1alpha1.CreateTokenRequest"></a>

### CreateTokenRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apiToken | [string](#string) |  | `Required` The long lived token provided by the ddev-live dashboard |






<a name="ddev.administration.v1alpha1.CreateTokenResponse"></a>

### CreateTokenResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [string](#string) |  | `OutputOnly` A generated short lived token to be provided to scoped clients |






<a name="ddev.administration.v1alpha1.DescribeRoleRequest"></a>

### DescribeRoleRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name for a user role |






<a name="ddev.administration.v1alpha1.DescribeRoleResponse"></a>

### DescribeRoleResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name for a user role |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | `Optional` The capabilities of the role |






<a name="ddev.administration.v1alpha1.ListCapabilitiesRequest"></a>

### ListCapabilitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | `Required` The user email to list capabilties for |






<a name="ddev.administration.v1alpha1.ListCapabilitiesResponse"></a>

### ListCapabilitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | `OutputOnly` The capabilties of the requested user |






<a name="ddev.administration.v1alpha1.ListRolesRequest"></a>

### ListRolesRequest







<a name="ddev.administration.v1alpha1.ListRolesResponse"></a>

### ListRolesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| roles | [Role](#ddev.administration.v1alpha1.Role) | repeated | The roles known in this context |






<a name="ddev.administration.v1alpha1.Role"></a>

### Role



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name for a user role |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | `Optional` The capabilities of the role |






<a name="ddev.administration.v1alpha1.Scope"></a>

### Scope
Scope is a structure helpful in parsing user authorization in a workspace


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace for user authorization |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | `Optional` The capabilities a user has in a workspace |
| role | [string](#string) |  | `Optional` The Role of the user. Must be a known role. |






<a name="ddev.administration.v1alpha1.SetCapabilitiesRequest"></a>

### SetCapabilitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | `Required` The user email to update capabilities for |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | `Optional` The capabilities to grant the user |






<a name="ddev.administration.v1alpha1.SetCapabilitiesResponse"></a>

### SetCapabilitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | `OutputOnly` The user email capabilties have been set for |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | `OutputOnly` The capabilties granted to this user |






<a name="ddev.administration.v1alpha1.SetRolesRequest"></a>

### SetRolesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | `Required` The user email to update roles for |
| roles | [string](#string) | repeated | `Optional` The roles to assign to the user |






<a name="ddev.administration.v1alpha1.SetRolesResponse"></a>

### SetRolesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | `OutputOnly` The user email roles have been set for |
| roles | [Role](#ddev.administration.v1alpha1.Role) | repeated | `OutputOnly` The roles assigned to this user |





 


<a name="ddev.administration.v1alpha1.Capability"></a>

### Capability
Describes a set of access policies for a user

| Name | Number | Description |
| ---- | ------ | ----------- |
| AuthTokenViewer | 0 | Describes a permission which can read the API scopes a user has. |
| AuthTokenEditor | 1 | Describes a permission which can issue different API access scopes within an organization |
| BillingViewer | 2 | Describes a permission which can access billing artifacts such as invoices |
| BillingEditor | 3 | Describes a permission which can modify elements such as their subscription |
| WorkspaceAdmin | 4 | Describes a permission which is an admin of a workspace |
| WorkspaceViewer | 5 | Describes a permission which has read capability for workspace objects |
| SiteEditor | 6 | Describes a permission which is capable of creating or modifying a site |
| SiteViewer | 7 | Describes a permission which is capable of viewing site specifications created in a workspace |
| LogsViewer | 8 | Describes a permission which allows for the viewing of site logs |
| SiteExecutor | 9 | Describes a permission which allows for the execution of commands inside a running site container |
| DatabaseAdmin | 10 | Describes a permission which allows full control over site databases, which includes restore and push operations |
| DatabaseViewer | 11 | Describes a permission which allows pull access for a sites database |
| FileAdmin | 12 | Describes a permission which allows full control over site files, which includes restore and push operations |
| FileViewer | 13 | Describes a permission which allows pull access for a sites files |


 

 

 



<a name="live/administration/v1alpha1/service.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/administration/v1alpha1/service.proto


 

 

 


<a name="ddev.administration.v1alpha1.Administration"></a>

### Administration
The Billing service provides administrative functions over a users ddev-live account.
To access the billing service consumers will have to initialize an authenticated client.  This requires
several metadata to be passed to the client.

`x-auth-token` which is a authentication token for the call.  In most cases this will be a temporary token 
issued by the API.  This can be the integration token provided on the dashboard when retrieving temporary tokens.

`x-ddev-workspace` which is the workspace for all workspace scoped procedures.  For example a client request `ListSubscriptions` will list all subscriptions in the workspace whose value is derived from the key `x-ddev-workspace`.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateToken | [CreateTokenRequest](#ddev.administration.v1alpha1.CreateTokenRequest) | [CreateTokenResponse](#ddev.administration.v1alpha1.CreateTokenResponse) | Creates an ID token from a refresh token |
| CreateRoles | [CreateRoleRequest](#ddev.administration.v1alpha1.CreateRoleRequest) | [CreateRoleResponse](#ddev.administration.v1alpha1.CreateRoleResponse) | Creates a Role |
| DescribeRole | [DescribeRoleRequest](#ddev.administration.v1alpha1.DescribeRoleRequest) | [DescribeRoleResponse](#ddev.administration.v1alpha1.DescribeRoleResponse) | Describes a named role |
| ListRoles | [ListRolesRequest](#ddev.administration.v1alpha1.ListRolesRequest) | [ListRolesResponse](#ddev.administration.v1alpha1.ListRolesResponse) | Lists all known roles |
| SetCapabilities | [SetCapabilitiesRequest](#ddev.administration.v1alpha1.SetCapabilitiesRequest) | [SetCapabilitiesResponse](#ddev.administration.v1alpha1.SetCapabilitiesResponse) | Updates a users API capabilities. Will requre a refresh of their token through CreateToken. |
| ListCapabilities | [ListCapabilitiesRequest](#ddev.administration.v1alpha1.ListCapabilitiesRequest) | [ListCapabilitiesResponse](#ddev.administration.v1alpha1.ListCapabilitiesResponse) | Lists a users API capabilities. |
| ListWorkspaces | [ListWorkspaceRequest](#ddev.administration.v1alpha1.ListWorkspaceRequest) | [ListWorkspaceResponse](#ddev.administration.v1alpha1.ListWorkspaceResponse) | ListWorkspaces will return a list of workspaces the user has authorization for |
| AddWorkspaceAdmin | [AddWorkspaceAdminRequest](#ddev.administration.v1alpha1.AddWorkspaceAdminRequest) | [AddWorkspaceAdminResponse](#ddev.administration.v1alpha1.AddWorkspaceAdminResponse) | Add an administrator to a workspace. Requires a workspace administrator token. |
| AddWorkspaceDeveloper | [AddWorkspaceDeveloperRequest](#ddev.administration.v1alpha1.AddWorkspaceDeveloperRequest) | [AddWorkspaceDeveloperResponse](#ddev.administration.v1alpha1.AddWorkspaceDeveloperResponse) | Add a developer to a workspace. Requires a workspace administrator token. |
| DeleteWorkspaceAdmin | [DeleteWorkspaceAdminRequest](#ddev.administration.v1alpha1.DeleteWorkspaceAdminRequest) | [DeleteWorkspaceAdminResponse](#ddev.administration.v1alpha1.DeleteWorkspaceAdminResponse) | Remove an administrator from a workspace. Requires a workspace administrator token. An administrator cannot remove themselves. |
| DeleteWorkspaceDeveloper | [DeleteWorkspaceDeveloperRequest](#ddev.administration.v1alpha1.DeleteWorkspaceDeveloperRequest) | [DeleteWorkspaceDeveloperResponse](#ddev.administration.v1alpha1.DeleteWorkspaceDeveloperResponse) | Remove a developer from a workspace. Requires a workspace administrator token. |
| SetDefaultWorkspace | [SetDefaultWorkspaceRequest](#ddev.administration.v1alpha1.SetDefaultWorkspaceRequest) | [SetDefaultWorkspaceResponse](#ddev.administration.v1alpha1.SetDefaultWorkspaceResponse) | Updates a users current default workspace. |
| GetDefaultWorkspace | [GetDefaultWorkspaceRequest](#ddev.administration.v1alpha1.GetDefaultWorkspaceRequest) | [GetDefaultWorkspaceResponse](#ddev.administration.v1alpha1.GetDefaultWorkspaceResponse) | Gets a users current default workspace. A users default workspace is specified in the JWT which they carry, however this may not be as up to date as their user record. If a user was to, for example, generate a new token and then set their default workspace their token would reflect their previous default until it is reissued. |
| GetWorkspace | [GetWorkspaceRequest](#ddev.administration.v1alpha1.GetWorkspaceRequest) | [GetWorkspaceResponse](#ddev.administration.v1alpha1.GetWorkspaceResponse) | `Deprecated` User workspaces are qualified by their subscription. Resolve workspace will attempt to resolve a users fully qualified workspace name from its short name. |
| IsAuthTokenViewer | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which can read the API scopes a user has. |
| IsAuthTokenEditor | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which can issue different API access scopes within an organization |
| IsBillingViewer | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which can access billing artifacts such as invoices |
| IsBillingEditor | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which can modify elements such as their subscription |
| IsWorkspaceAdmin | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which is an admin of a workspace |
| IsWorkspaceViewer | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which has read capability for workspace objects |
| IsSiteEditor | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which is capable of creating or modifying a site |
| IsSiteViewer | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which is capable of viewing site specifications created in a workspace |
| IsLogsViewer | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which allows for the viewing of site logs |
| IsSiteExecutor | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which allows for the execution of commands inside a running site container |
| IsDatabaseAdmin | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which allows full control over site databases, which includes restore and push operations |
| IsDatabaseViewer | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which allows pull access for a sites database |
| IsFileAdmin | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which allows full control over site files, which includes restore and push operations |
| IsFileViewer | [AuthorizationRequest](#ddev.administration.v1alpha1.AuthorizationRequest) | [AuthorizationResponse](#ddev.administration.v1alpha1.AuthorizationResponse) | Describes a permission which allows pull access for a sites files |
| CreateGithubIntegration | [CreateGithubIntegrationRequest](#ddev.administration.v1alpha1.CreateGithubIntegrationRequest) | [CreateGithubIntegrationResponse](#ddev.administration.v1alpha1.CreateGithubIntegrationResponse) | Creates a github integration from an installation ID |
| DeleteGithubIntegration | [DeleteGithubIntegrationRequest](#ddev.administration.v1alpha1.DeleteGithubIntegrationRequest) | [DeleteGithubIntegrationResponse](#ddev.administration.v1alpha1.DeleteGithubIntegrationResponse) | Deletes a github integration |
| UpdateGithubIntegration | [UpdateGithubIntegrationRequest](#ddev.administration.v1alpha1.UpdateGithubIntegrationRequest) | [UpdateGithubIntegrationResponse](#ddev.administration.v1alpha1.UpdateGithubIntegrationResponse) | Updates a github integration |
| ListGithubRepositories | [ListGithubRepositoriesRequest](#ddev.administration.v1alpha1.ListGithubRepositoriesRequest) | [ListGithubRepositoriesResponse](#ddev.administration.v1alpha1.ListGithubRepositoriesResponse) | List github repositories |
| CreateGitlabIntegration | [CreateGitlabIntegrationRequest](#ddev.administration.v1alpha1.CreateGitlabIntegrationRequest) | [CreateGitlabIntegrationResponse](#ddev.administration.v1alpha1.CreateGitlabIntegrationResponse) | Creates a gitlab integration from an installation ID |
| DeleteGitlabIntegration | [DeleteGitlabIntegrationRequest](#ddev.administration.v1alpha1.DeleteGitlabIntegrationRequest) | [DeleteGitlabIntegrationResponse](#ddev.administration.v1alpha1.DeleteGitlabIntegrationResponse) | Deletes a gitlab integration |
| ListGitlabIntegrations | [ListGitlabIntegrationsRequest](#ddev.administration.v1alpha1.ListGitlabIntegrationsRequest) | [ListGitlabIntegrationsResponse](#ddev.administration.v1alpha1.ListGitlabIntegrationsResponse) | Lists gitlab integrations |
| ListGitlabProjects | [ListGitlabProjectsRequest](#ddev.administration.v1alpha1.ListGitlabProjectsRequest) | [ListGitlabProjectsResponse](#ddev.administration.v1alpha1.ListGitlabProjectsResponse) | List gitlab projects |
| GetGitlabProjectMetadata | [GetGitlabProjectMetadataRequest](#ddev.administration.v1alpha1.GetGitlabProjectMetadataRequest) | [GetGitlabProjectMetadataResponse](#ddev.administration.v1alpha1.GetGitlabProjectMetadataResponse) | Returns metadata of a Gitlab project by ID |
| GetRepositoryMetadata | [GetRepositoryMetadataRequest](#ddev.administration.v1alpha1.GetRepositoryMetadataRequest) | [GetRepositoryMetadataResponse](#ddev.administration.v1alpha1.GetRepositoryMetadataResponse) | Returns metadata of a repository by ID |

 



<a name="live/administration/v1alpha1/quota.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/administration/v1alpha1/quota.proto



<a name="ddev.administration.v1alpha1.QuotaItem"></a>

### QuotaItem



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| quota | [string](#string) |  |  |






<a name="ddev.administration.v1alpha1.QuotaRequest"></a>

### QuotaRequest







<a name="ddev.administration.v1alpha1.QuotaResponse"></a>

### QuotaResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [QuotaItem](#ddev.administration.v1alpha1.QuotaItem) | repeated |  |





 

 

 

 



## Scalar Value Types

| .proto Type | Notes | C++ | Java | Python | Go | C# | PHP | Ruby |
| ----------- | ----- | --- | ---- | ------ | -- | -- | --- | ---- |
| <a name="double" /> double |  | double | double | float | float64 | double | float | Float |
| <a name="float" /> float |  | float | float | float | float32 | float | float | Float |
| <a name="int32" /> int32 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint32 instead. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="int64" /> int64 | Uses variable-length encoding. Inefficient for encoding negative numbers – if your field is likely to have negative values, use sint64 instead. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="uint32" /> uint32 | Uses variable-length encoding. | uint32 | int | int/long | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="uint64" /> uint64 | Uses variable-length encoding. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum or Fixnum (as required) |
| <a name="sint32" /> sint32 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int32s. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sint64" /> sint64 | Uses variable-length encoding. Signed int value. These more efficiently encode negative numbers than regular int64s. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="fixed32" /> fixed32 | Always four bytes. More efficient than uint32 if values are often greater than 2^28. | uint32 | int | int | uint32 | uint | integer | Bignum or Fixnum (as required) |
| <a name="fixed64" /> fixed64 | Always eight bytes. More efficient than uint64 if values are often greater than 2^56. | uint64 | long | int/long | uint64 | ulong | integer/string | Bignum |
| <a name="sfixed32" /> sfixed32 | Always four bytes. | int32 | int | int | int32 | int | integer | Bignum or Fixnum (as required) |
| <a name="sfixed64" /> sfixed64 | Always eight bytes. | int64 | long | int/long | int64 | long | integer/string | Bignum |
| <a name="bool" /> bool |  | bool | boolean | boolean | bool | bool | boolean | TrueClass/FalseClass |
| <a name="string" /> string | A string must always contain UTF-8 encoded or 7-bit ASCII text. | string | String | str/unicode | string | string | string | String (UTF-8) |
| <a name="bytes" /> bytes | May contain any arbitrary sequence of bytes. | string | ByteString | str | []byte | ByteString | string | String (ASCII-8BIT) |

