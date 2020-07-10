# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [live/administration/v1alpha1/auth.proto](#live/administration/v1alpha1/auth.proto)
    - [CreateTokenRequest](#ddev.administration.v1alpha1.CreateTokenRequest)
    - [CreateTokenResponse](#ddev.administration.v1alpha1.CreateTokenResponse)
    - [ListCapabilitiesRequest](#ddev.administration.v1alpha1.ListCapabilitiesRequest)
    - [ListCapabilitiesResponse](#ddev.administration.v1alpha1.ListCapabilitiesResponse)
    - [SetCapabilitiesRequest](#ddev.administration.v1alpha1.SetCapabilitiesRequest)
    - [SetCapabilitiesResponse](#ddev.administration.v1alpha1.SetCapabilitiesResponse)
  
    - [Capability](#ddev.administration.v1alpha1.Capability)
  
- [live/administration/v1alpha1/service.proto](#live/administration/v1alpha1/service.proto)
    - [Administration](#ddev.administration.v1alpha1.Administration)
  
- [live/administration/v1alpha1/workspace.proto](#live/administration/v1alpha1/workspace.proto)
    - [AddWorkspaceAdminRequest](#ddev.administration.v1alpha1.AddWorkspaceAdminRequest)
    - [AddWorkspaceAdminResponse](#ddev.administration.v1alpha1.AddWorkspaceAdminResponse)
    - [AddWorkspaceDeveloperRequest](#ddev.administration.v1alpha1.AddWorkspaceDeveloperRequest)
    - [AddWorkspaceDeveloperResponse](#ddev.administration.v1alpha1.AddWorkspaceDeveloperResponse)
    - [DeleteWorkspaceAdminRequest](#ddev.administration.v1alpha1.DeleteWorkspaceAdminRequest)
    - [DeleteWorkspaceAdminResponse](#ddev.administration.v1alpha1.DeleteWorkspaceAdminResponse)
    - [DeleteWorkspaceDeveloperRequest](#ddev.administration.v1alpha1.DeleteWorkspaceDeveloperRequest)
    - [DeleteWorkspaceDeveloperResponse](#ddev.administration.v1alpha1.DeleteWorkspaceDeveloperResponse)
    - [ListWorkspaceRequest](#ddev.administration.v1alpha1.ListWorkspaceRequest)
    - [ListWorkspaceResponse](#ddev.administration.v1alpha1.ListWorkspaceResponse)
    - [Workspace](#ddev.administration.v1alpha1.Workspace)
  
    - [ListWorkspaceRequest.ListWorkspaceScope](#ddev.administration.v1alpha1.ListWorkspaceRequest.ListWorkspaceScope)
  
- [Scalar Value Types](#scalar-value-types)



<a name="live/administration/v1alpha1/auth.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/administration/v1alpha1/auth.proto



<a name="ddev.administration.v1alpha1.CreateTokenRequest"></a>

### CreateTokenRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| apiToken | [string](#string) |  | The long lived token provided by the ddev-live dashboard |






<a name="ddev.administration.v1alpha1.CreateTokenResponse"></a>

### CreateTokenResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| token | [string](#string) |  | A generated short lived token to be provided to scoped clients |






<a name="ddev.administration.v1alpha1.ListCapabilitiesRequest"></a>

### ListCapabilitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | The user email to list capabilties for |






<a name="ddev.administration.v1alpha1.ListCapabilitiesResponse"></a>

### ListCapabilitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | The capabilties of the requested user |






<a name="ddev.administration.v1alpha1.SetCapabilitiesRequest"></a>

### SetCapabilitiesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | The user email to update capabilities for |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | The capabilities to grant the user |






<a name="ddev.administration.v1alpha1.SetCapabilitiesResponse"></a>

### SetCapabilitiesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| email | [string](#string) |  | The user email capabilties have been set for |
| capabilities | [Capability](#ddev.administration.v1alpha1.Capability) | repeated | The capabilties granted to this user |





 


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
| SetCapabilities | [SetCapabilitiesRequest](#ddev.administration.v1alpha1.SetCapabilitiesRequest) | [SetCapabilitiesResponse](#ddev.administration.v1alpha1.SetCapabilitiesResponse) | Updates a users API capabilities. Will requre a refresh of their token through CreateToken. |
| ListCapabilities | [ListCapabilitiesRequest](#ddev.administration.v1alpha1.ListCapabilitiesRequest) | [ListCapabilitiesResponse](#ddev.administration.v1alpha1.ListCapabilitiesResponse) | Lists a users API capabilities. |
| ListWorkspaces | [ListWorkspaceRequest](#ddev.administration.v1alpha1.ListWorkspaceRequest) | [ListWorkspaceResponse](#ddev.administration.v1alpha1.ListWorkspaceResponse) | ListWorkspaces will return a list of workspaces the user has authorization for |
| AddWorkspaceAdmin | [AddWorkspaceAdminRequest](#ddev.administration.v1alpha1.AddWorkspaceAdminRequest) | [AddWorkspaceAdminResponse](#ddev.administration.v1alpha1.AddWorkspaceAdminResponse) | Add an administrator to a workspace. Requires a workspace administrator token. |
| AddWorkspaceDeveloper | [AddWorkspaceDeveloperRequest](#ddev.administration.v1alpha1.AddWorkspaceDeveloperRequest) | [AddWorkspaceDeveloperResponse](#ddev.administration.v1alpha1.AddWorkspaceDeveloperResponse) | Add a developer to a workspace. Requires a workspace administrator token. |
| DeleteWorkspaceAdmin | [DeleteWorkspaceAdminRequest](#ddev.administration.v1alpha1.DeleteWorkspaceAdminRequest) | [DeleteWorkspaceAdminResponse](#ddev.administration.v1alpha1.DeleteWorkspaceAdminResponse) | Remove an administrator from a workspace. Requires a workspace administrator token. An administrator cannot remove themselves. |
| DeleteWorkspaceDeveloper | [DeleteWorkspaceDeveloperRequest](#ddev.administration.v1alpha1.DeleteWorkspaceDeveloperRequest) | [DeleteWorkspaceDeveloperResponse](#ddev.administration.v1alpha1.DeleteWorkspaceDeveloperResponse) | Remove a developer from a workspace. Requires a workspace administrator token. |

 



<a name="live/administration/v1alpha1/workspace.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/administration/v1alpha1/workspace.proto



<a name="ddev.administration.v1alpha1.AddWorkspaceAdminRequest"></a>

### AddWorkspaceAdminRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the workspace to add this administrator to. |
| email | [string](#string) |  | `Required` The email of the workspace administrator |






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






<a name="ddev.administration.v1alpha1.DeleteWorkspaceDeveloperResponse"></a>

### DeleteWorkspaceDeveloperResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [Workspace](#ddev.administration.v1alpha1.Workspace) |  | `OutputOnly` The updated workspace resource. |






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






<a name="ddev.administration.v1alpha1.Workspace"></a>

### Workspace



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` Workspace Name. |
| admins | [string](#string) | repeated | `OutputOnly` Administrators of the workspace |
| developers | [string](#string) | repeated | `OutputOnly` Developers in the workspace |





 


<a name="ddev.administration.v1alpha1.ListWorkspaceRequest.ListWorkspaceScope"></a>

### ListWorkspaceRequest.ListWorkspaceScope
Defines the scope of the request.  If the scope is set to ADMIN the response will contain only workspaces where the provided token user is an administrator.
If the request is set to DEVELOPER the response will contain any workspace where the provided token user is an administrator or a developer.

| Name | Number | Description |
| ---- | ------ | ----------- |
| DEVELOPER | 0 |  |
| ADMIN | 1 |  |


 

 

 



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

