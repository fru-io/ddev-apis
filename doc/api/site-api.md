# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [live/sites/v1alpha1/file.proto](#live/sites/v1alpha1/file.proto)
    - [BackupFilesRequest](#ddev.sites.v1alpha1.BackupFilesRequest)
    - [BackupFilesResponse](#ddev.sites.v1alpha1.BackupFilesResponse)
    - [File](#ddev.sites.v1alpha1.File)
    - [FileChecksum](#ddev.sites.v1alpha1.FileChecksum)
    - [PullFilesRequest](#ddev.sites.v1alpha1.PullFilesRequest)
    - [PullFilesResponse](#ddev.sites.v1alpha1.PullFilesResponse)
    - [PushFilesRequest](#ddev.sites.v1alpha1.PushFilesRequest)
    - [PushFilesResponse](#ddev.sites.v1alpha1.PushFilesResponse)
    - [RestoreFilesRequest](#ddev.sites.v1alpha1.RestoreFilesRequest)
    - [RestoreFilesResponse](#ddev.sites.v1alpha1.RestoreFilesResponse)
  
- [live/sites/v1alpha1/service.proto](#live/sites/v1alpha1/service.proto)
    - [Sites](#ddev.sites.v1alpha1.Sites)
  
- [live/sites/v1alpha1/database.proto](#live/sites/v1alpha1/database.proto)
    - [Backup](#ddev.sites.v1alpha1.Backup)
    - [BackupDatabaseRequest](#ddev.sites.v1alpha1.BackupDatabaseRequest)
    - [BackupDatabaseResponse](#ddev.sites.v1alpha1.BackupDatabaseResponse)
    - [BackupStatus](#ddev.sites.v1alpha1.BackupStatus)
    - [Database](#ddev.sites.v1alpha1.Database)
    - [PullDatabaseRequest](#ddev.sites.v1alpha1.PullDatabaseRequest)
    - [PullDatabaseResponse](#ddev.sites.v1alpha1.PullDatabaseResponse)
    - [PushDatabaseRequest](#ddev.sites.v1alpha1.PushDatabaseRequest)
    - [PushDatabaseResponse](#ddev.sites.v1alpha1.PushDatabaseResponse)
    - [RestoreDatabaseRequest](#ddev.sites.v1alpha1.RestoreDatabaseRequest)
    - [RestoreDatabaseResponse](#ddev.sites.v1alpha1.RestoreDatabaseResponse)
  
    - [BackupState](#ddev.sites.v1alpha1.BackupState)
  
- [live/sites/v1alpha1/site.proto](#live/sites/v1alpha1/site.proto)
    - [CreateSiteRequest](#ddev.sites.v1alpha1.CreateSiteRequest)
    - [CreateSiteResponse](#ddev.sites.v1alpha1.CreateSiteResponse)
    - [Cron](#ddev.sites.v1alpha1.Cron)
    - [DeleteSiteRequest](#ddev.sites.v1alpha1.DeleteSiteRequest)
    - [DeleteSiteResponse](#ddev.sites.v1alpha1.DeleteSiteResponse)
    - [DrupalSite](#ddev.sites.v1alpha1.DrupalSite)
    - [DrupalSiteOptions](#ddev.sites.v1alpha1.DrupalSiteOptions)
    - [GetSiteRequest](#ddev.sites.v1alpha1.GetSiteRequest)
    - [GetSiteResponse](#ddev.sites.v1alpha1.GetSiteResponse)
    - [GitRepository](#ddev.sites.v1alpha1.GitRepository)
    - [ListSiteRequest](#ddev.sites.v1alpha1.ListSiteRequest)
    - [ListSiteResponse](#ddev.sites.v1alpha1.ListSiteResponse)
    - [Site](#ddev.sites.v1alpha1.Site)
    - [SiteExecRequest](#ddev.sites.v1alpha1.SiteExecRequest)
    - [SiteExecResponse](#ddev.sites.v1alpha1.SiteExecResponse)
    - [SiteLogsRequest](#ddev.sites.v1alpha1.SiteLogsRequest)
    - [SiteLogsResponse](#ddev.sites.v1alpha1.SiteLogsResponse)
    - [Typo3Site](#ddev.sites.v1alpha1.Typo3Site)
    - [Typo3SiteOptions](#ddev.sites.v1alpha1.Typo3SiteOptions)
    - [UpdateSiteRequest](#ddev.sites.v1alpha1.UpdateSiteRequest)
    - [UpdateSiteResponse](#ddev.sites.v1alpha1.UpdateSiteResponse)
    - [WordpressSite](#ddev.sites.v1alpha1.WordpressSite)
    - [WordpressSiteOptions](#ddev.sites.v1alpha1.WordpressSiteOptions)
  
    - [SiteType](#ddev.sites.v1alpha1.SiteType)
  
- [Scalar Value Types](#scalar-value-types)



<a name="live/sites/v1alpha1/file.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/file.proto



<a name="ddev.sites.v1alpha1.BackupFilesRequest"></a>

### BackupFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace name for this request. |
| name | [string](#string) |  | `Required` The name of the backup. |






<a name="ddev.sites.v1alpha1.BackupFilesResponse"></a>

### BackupFilesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| checksums | [FileChecksum](#ddev.sites.v1alpha1.FileChecksum) | repeated | The list of files and their checksums restored server side |






<a name="ddev.sites.v1alpha1.File"></a>

### File
TODO


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the file. |
| content | [bytes](#bytes) |  | The content of the file expressed in bytes. |






<a name="ddev.sites.v1alpha1.FileChecksum"></a>

### FileChecksum
TODO


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the file. |
| sha256 | [string](#string) |  | The sha checksum of this file |






<a name="ddev.sites.v1alpha1.PullFilesRequest"></a>

### PullFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace name for this request. |
| name | [string](#string) |  | `Required` The name of the database to push to. |






<a name="ddev.sites.v1alpha1.PullFilesResponse"></a>

### PullFilesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  | `OutputOnly` The raw bytes the the content with the first 512 bytes expressing the ContentType. |






<a name="ddev.sites.v1alpha1.PushFilesRequest"></a>

### PushFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace name for this request. |
| file | [File](#ddev.sites.v1alpha1.File) | repeated | `Required` The name of the database to push to. |






<a name="ddev.sites.v1alpha1.PushFilesResponse"></a>

### PushFilesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| checksums | [FileChecksum](#ddev.sites.v1alpha1.FileChecksum) | repeated | The list of files and their checksums recieved server side |






<a name="ddev.sites.v1alpha1.RestoreFilesRequest"></a>

### RestoreFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace name for this request. |
| backup | [string](#string) |  | `Required` The name of the backup to restore files from. |






<a name="ddev.sites.v1alpha1.RestoreFilesResponse"></a>

### RestoreFilesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| checksums | [FileChecksum](#ddev.sites.v1alpha1.FileChecksum) | repeated | The list of files and their checksums restored server side |





 

 

 

 



<a name="live/sites/v1alpha1/service.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/service.proto


 

 

 


<a name="ddev.sites.v1alpha1.Sites"></a>

### Sites


| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateSite | [CreateSiteRequest](#ddev.sites.v1alpha1.CreateSiteRequest) | [CreateSiteResponse](#ddev.sites.v1alpha1.CreateSiteResponse) | CreateSite creates one of the supported site types |
| GetSite | [GetSiteRequest](#ddev.sites.v1alpha1.GetSiteRequest) | [GetSiteResponse](#ddev.sites.v1alpha1.GetSiteResponse) | GetSite returns the state of a site by name |
| ListSites | [ListSiteRequest](#ddev.sites.v1alpha1.ListSiteRequest) | [ListSiteResponse](#ddev.sites.v1alpha1.ListSiteResponse) | ListSites returns all sites within a workspace |
| UpdateSite | [UpdateSiteRequest](#ddev.sites.v1alpha1.UpdateSiteRequest) | [UpdateSiteResponse](#ddev.sites.v1alpha1.UpdateSiteResponse) |  |
| DeleteSite | [DeleteSiteRequest](#ddev.sites.v1alpha1.DeleteSiteRequest) | [DeleteSiteResponse](#ddev.sites.v1alpha1.DeleteSiteResponse) |  |
| SiteLogs | [SiteLogsRequest](#ddev.sites.v1alpha1.SiteLogsRequest) | [SiteLogsResponse](#ddev.sites.v1alpha1.SiteLogsResponse) stream | SiteLogs returns a stream of logs for a site |
| SiteExec | [SiteExecRequest](#ddev.sites.v1alpha1.SiteExecRequest) stream | [SiteExecResponse](#ddev.sites.v1alpha1.SiteExecResponse) stream | SiteExec allows for the streaming execution of commands inside a site container |
| BackupDatabase | [BackupDatabaseRequest](#ddev.sites.v1alpha1.BackupDatabaseRequest) | [BackupDatabaseResponse](#ddev.sites.v1alpha1.BackupDatabaseResponse) | BackupDatabase backs up a database associated with a site |
| RestoreDatabase | [RestoreDatabaseRequest](#ddev.sites.v1alpha1.RestoreDatabaseRequest) | [RestoreDatabaseResponse](#ddev.sites.v1alpha1.RestoreDatabaseResponse) | RestoreDatabase restores a sites databases to a known backup |
| BackupFiles | [BackupFilesRequest](#ddev.sites.v1alpha1.BackupFilesRequest) | [BackupFilesResponse](#ddev.sites.v1alpha1.BackupFilesResponse) | BackupFiles backs up files associated with a site |
| RestoreFiles | [RestoreFilesRequest](#ddev.sites.v1alpha1.RestoreFilesRequest) | [RestoreFilesResponse](#ddev.sites.v1alpha1.RestoreFilesResponse) | RestoreFiles restores a sites files to a known backup |
| PushFiles | [PushFilesRequest](#ddev.sites.v1alpha1.PushFilesRequest) | [PushFilesResponse](#ddev.sites.v1alpha1.PushFilesResponse) | PushFiles pushes local files to a running site |
| PullFiles | [PullFilesRequest](#ddev.sites.v1alpha1.PullFilesRequest) | [PullFilesResponse](#ddev.sites.v1alpha1.PullFilesResponse) | PullFiles pulls down files locally |
| PushDatabase | [PushDatabaseRequest](#ddev.sites.v1alpha1.PushDatabaseRequest) | [PushDatabaseResponse](#ddev.sites.v1alpha1.PushDatabaseResponse) | PushDatabase pushes a database to a running site |
| PullDatabase | [PullDatabaseRequest](#ddev.sites.v1alpha1.PullDatabaseRequest) | [PullDatabaseResponse](#ddev.sites.v1alpha1.PullDatabaseResponse) | PullDatabase pulls down a database locally |

 



<a name="live/sites/v1alpha1/database.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/database.proto



<a name="ddev.sites.v1alpha1.Backup"></a>

### Backup
TODO


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| databaseReference | [string](#string) |  |  |






<a name="ddev.sites.v1alpha1.BackupDatabaseRequest"></a>

### BackupDatabaseRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace of the database to be backed up. |
| name | [string](#string) |  | `Required` The name of the database to backup. |






<a name="ddev.sites.v1alpha1.BackupDatabaseResponse"></a>

### BackupDatabaseResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [Backup](#ddev.sites.v1alpha1.Backup) |  | The state of the backup |






<a name="ddev.sites.v1alpha1.BackupStatus"></a>

### BackupStatus



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| state | [BackupState](#ddev.sites.v1alpha1.BackupState) |  |  |
| time | [int64](#int64) |  |  |






<a name="ddev.sites.v1alpha1.Database"></a>

### Database
TODO


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` The name of the file |






<a name="ddev.sites.v1alpha1.PullDatabaseRequest"></a>

### PullDatabaseRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace name for this request. |
| name | [string](#string) |  | `Required` The name of the database to push to. |






<a name="ddev.sites.v1alpha1.PullDatabaseResponse"></a>

### PullDatabaseResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  | `OutputOnly` The raw bytes the the content with the first 512 bytes expressing the ContentType. |






<a name="ddev.sites.v1alpha1.PushDatabaseRequest"></a>

### PushDatabaseRequest
Push a single database to a site


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace name for this request. |
| name | [string](#string) |  | `Required` The name of the database to push to. |
| content | [bytes](#bytes) |  | The raw bytes the the content to pass. Supported MIME Types: `gz` |






<a name="ddev.sites.v1alpha1.PushDatabaseResponse"></a>

### PushDatabaseResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sha256 | [string](#string) |  | `OutputOnly` The SHA 256 sum of the recieved content |






<a name="ddev.sites.v1alpha1.RestoreDatabaseRequest"></a>

### RestoreDatabaseRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace of the database to be backed up. |
| name | [string](#string) |  | `Required` The name of the database to backup. |






<a name="ddev.sites.v1alpha1.RestoreDatabaseResponse"></a>

### RestoreDatabaseResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [Backup](#ddev.sites.v1alpha1.Backup) |  | The state of the backup |





 


<a name="ddev.sites.v1alpha1.BackupState"></a>

### BackupState


| Name | Number | Description |
| ---- | ------ | ----------- |
| FINISHED | 0 |  |
| DELETED | 1 |  |


 

 

 



<a name="live/sites/v1alpha1/site.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/site.proto



<a name="ddev.sites.v1alpha1.CreateSiteRequest"></a>

### CreateSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the site |
| name | [string](#string) |  | `Required` The name of the site |
| git | [GitRepository](#ddev.sites.v1alpha1.GitRepository) |  |  |
| drupal | [DrupalSiteOptions](#ddev.sites.v1alpha1.DrupalSiteOptions) |  |  |
| wordpress | [WordpressSiteOptions](#ddev.sites.v1alpha1.WordpressSiteOptions) |  |  |
| typo3 | [Typo3SiteOptions](#ddev.sites.v1alpha1.Typo3SiteOptions) |  |  |






<a name="ddev.sites.v1alpha1.CreateSiteResponse"></a>

### CreateSiteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [Site](#ddev.sites.v1alpha1.Site) |  | `OutputOnly` The properties of the site which was created. |






<a name="ddev.sites.v1alpha1.Cron"></a>

### Cron
Cron manages if and when the CMS cron executes


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| disabled | [bool](#bool) |  | `Optional` Disabled will stop the CMS cron from executing. Default true. |
| schedule | [string](#string) |  | Schedule specifies when this process will execute using CronTab notation. |






<a name="ddev.sites.v1alpha1.DeleteSiteRequest"></a>

### DeleteSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the site |
| name | [string](#string) |  | `Required` The name of the site |
| type | [SiteType](#ddev.sites.v1alpha1.SiteType) |  | `Required` The type of site being deleted |






<a name="ddev.sites.v1alpha1.DeleteSiteResponse"></a>

### DeleteSiteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [Site](#ddev.sites.v1alpha1.Site) |  | `OutputOnly` The name of the site |






<a name="ddev.sites.v1alpha1.DrupalSite"></a>

### DrupalSite
A site of SiteType.DRUPAL


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `OutputOnly` The workspace of the site |
| name | [string](#string) |  | `OutputOnly` The name of the site |
| git | [GitRepository](#ddev.sites.v1alpha1.GitRepository) |  |  |
| options | [DrupalSiteOptions](#ddev.sites.v1alpha1.DrupalSiteOptions) |  | `OutputOnly` |






<a name="ddev.sites.v1alpha1.DrupalSiteOptions"></a>

### DrupalSiteOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  | `Optional` Specify the version of TYPO3 used for the site (default &#34;9&#34;) |
| composerInstall | [bool](#bool) |  | `Optional` Whether to run composer install when creating the site image |
| composerArgs | [string](#string) | repeated | `Optional` If `composerInstall` is set, use this flags to specify which args are passed to composer install |
| cron | [Cron](#ddev.sites.v1alpha1.Cron) |  | `Optional` |
| DocRoot | [string](#string) |  | `Optional` The relative docroot of the site, like &#39;docroot&#39; or &#39;htdocs&#39; or &#39;web&#39;. Defaults to empty, the repository&#39;s root directory. |






<a name="ddev.sites.v1alpha1.GetSiteRequest"></a>

### GetSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace in which the site is contained |
| name | [string](#string) |  | `Required` The name of the site |
| type | [SiteType](#ddev.sites.v1alpha1.SiteType) |  | `Required` The type of site being retrieved |






<a name="ddev.sites.v1alpha1.GetSiteResponse"></a>

### GetSiteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [Site](#ddev.sites.v1alpha1.Site) |  | `OutputOnly` The requested site. |






<a name="ddev.sites.v1alpha1.GitRepository"></a>

### GitRepository



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  | `Required` The URL of the repository |
| ref | [string](#string) |  | `Required` The branch, tag, or commit. Default: `master`. |






<a name="ddev.sites.v1alpha1.ListSiteRequest"></a>

### ListSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The workspace in which to list sites |






<a name="ddev.sites.v1alpha1.ListSiteResponse"></a>

### ListSiteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sites | [Site](#ddev.sites.v1alpha1.Site) | repeated | `OutputOnly` A list of sites. |






<a name="ddev.sites.v1alpha1.Site"></a>

### Site



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| drupal | [DrupalSite](#ddev.sites.v1alpha1.DrupalSite) |  |  |
| typo3 | [Typo3Site](#ddev.sites.v1alpha1.Typo3Site) |  |  |
| wordpress | [WordpressSite](#ddev.sites.v1alpha1.WordpressSite) |  |  |






<a name="ddev.sites.v1alpha1.SiteExecRequest"></a>

### SiteExecRequest







<a name="ddev.sites.v1alpha1.SiteExecResponse"></a>

### SiteExecResponse
TODO:






<a name="ddev.sites.v1alpha1.SiteLogsRequest"></a>

### SiteLogsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `Required` The name of the site |
| name | [string](#string) |  | `Required` The name of the site |
| type | [SiteType](#ddev.sites.v1alpha1.SiteType) |  | `Required` The type of site being deleted |






<a name="ddev.sites.v1alpha1.SiteLogsResponse"></a>

### SiteLogsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  | TODO |






<a name="ddev.sites.v1alpha1.Typo3Site"></a>

### Typo3Site
A site of SiteType.TYPO3


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` The name of the site |
| workspace | [string](#string) |  | `OutputOnly` The workspace of the site |
| git | [GitRepository](#ddev.sites.v1alpha1.GitRepository) |  |  |
| options | [Typo3SiteOptions](#ddev.sites.v1alpha1.Typo3SiteOptions) |  | `OutputOnly` |






<a name="ddev.sites.v1alpha1.Typo3SiteOptions"></a>

### Typo3SiteOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  | `Optional` Specify the version of TYPO3 used for the site (default &#34;9&#34;) |
| composerInstall | [bool](#bool) |  | `Optional` Whether to run composer install when creating the site image |
| composerArgs | [string](#string) | repeated | `Optional` If `composerInstall` is set, use this flags to specify which args are passed to composer install |
| cron | [Cron](#ddev.sites.v1alpha1.Cron) |  | `Optional` |
| DocRoot | [string](#string) |  | `Optional` The relative docroot of the site, like &#39;docroot&#39; or &#39;htdocs&#39; or &#39;web&#39;. Defaults to empty, the repository&#39;s root directory. |






<a name="ddev.sites.v1alpha1.UpdateSiteRequest"></a>

### UpdateSiteRequest







<a name="ddev.sites.v1alpha1.UpdateSiteResponse"></a>

### UpdateSiteResponse







<a name="ddev.sites.v1alpha1.WordpressSite"></a>

### WordpressSite
A site of SiteType.WORDPRESS


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| workspace | [string](#string) |  | `OutputOnly` The workspace of the site |
| name | [string](#string) |  | `OutputOnly` The name of the site |
| git | [GitRepository](#ddev.sites.v1alpha1.GitRepository) |  |  |
| options | [WordpressSiteOptions](#ddev.sites.v1alpha1.WordpressSiteOptions) |  | `OutputOnly` |






<a name="ddev.sites.v1alpha1.WordpressSiteOptions"></a>

### WordpressSiteOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| version | [string](#string) |  | `Optional` Specify the version of TYPO3 used for the site (default &#34;9&#34;) |
| composerInstall | [bool](#bool) |  | `Optional` Whether to run composer install when creating the site image |
| composerArgs | [string](#string) | repeated | `Optional` If `composerInstall` is set, use this flags to specify which args are passed to composer install |
| cron | [Cron](#ddev.sites.v1alpha1.Cron) |  | `Optional` |
| DocRoot | [string](#string) |  | `Optional` The relative docroot of the site, like &#39;docroot&#39; or &#39;htdocs&#39; or &#39;web&#39;. Defaults to empty, the repository&#39;s root directory. |
| persistentPaths | [string](#string) | repeated | `Optional` A list of persistent mount paths relative to docroot (ex. content/uploads) |
| ephemeralPaths | [string](#string) | repeated | `Optional` A list of ephemeral mount paths relative to docroot |





 


<a name="ddev.sites.v1alpha1.SiteType"></a>

### SiteType


| Name | Number | Description |
| ---- | ------ | ----------- |
| DRUPAL | 0 |  |
| TYPO3 | 1 |  |
| WORDPRESS | 2 |  |


 

 

 



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
