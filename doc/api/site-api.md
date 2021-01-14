# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [live/sites/v1alpha1/metadata.proto](#live/sites/v1alpha1/metadata.proto)
    - [Metadata](#ddev.sites.v1alpha1.Metadata)
    - [Metadata.LabelsEntry](#ddev.sites.v1alpha1.Metadata.LabelsEntry)
  
- [live/sites/v1alpha1/database.proto](#live/sites/v1alpha1/database.proto)
    - [BackupDatabaseRequest](#ddev.sites.v1alpha1.BackupDatabaseRequest)
    - [BackupDatabaseResponse](#ddev.sites.v1alpha1.BackupDatabaseResponse)
    - [DatabaseBackup](#ddev.sites.v1alpha1.DatabaseBackup)
    - [DatabaseBackupMetadata](#ddev.sites.v1alpha1.DatabaseBackupMetadata)
    - [ListDatabaseBackupsRequest](#ddev.sites.v1alpha1.ListDatabaseBackupsRequest)
    - [ListDatabaseBackupsResponse](#ddev.sites.v1alpha1.ListDatabaseBackupsResponse)
    - [PullDatabaseBackupRequest](#ddev.sites.v1alpha1.PullDatabaseBackupRequest)
    - [PullDatabaseBackupResponse](#ddev.sites.v1alpha1.PullDatabaseBackupResponse)
    - [PushDatabaseBackupRequest](#ddev.sites.v1alpha1.PushDatabaseBackupRequest)
    - [PushDatabaseBackupResponse](#ddev.sites.v1alpha1.PushDatabaseBackupResponse)
    - [RestoreDatabaseRequest](#ddev.sites.v1alpha1.RestoreDatabaseRequest)
    - [RestoreDatabaseResponse](#ddev.sites.v1alpha1.RestoreDatabaseResponse)
  
    - [BackupState](#ddev.sites.v1alpha1.BackupState)
  
- [live/sites/v1alpha1/file.proto](#live/sites/v1alpha1/file.proto)
    - [BackupFilesRequest](#ddev.sites.v1alpha1.BackupFilesRequest)
    - [BackupFilesResponse](#ddev.sites.v1alpha1.BackupFilesResponse)
    - [DescribeFileBackupRequest](#ddev.sites.v1alpha1.DescribeFileBackupRequest)
    - [DescribeFileBackupResponse](#ddev.sites.v1alpha1.DescribeFileBackupResponse)
    - [File](#ddev.sites.v1alpha1.File)
    - [FileBackup](#ddev.sites.v1alpha1.FileBackup)
    - [FileBackupMetadata](#ddev.sites.v1alpha1.FileBackupMetadata)
    - [ListFileBackupsRequest](#ddev.sites.v1alpha1.ListFileBackupsRequest)
    - [ListFileBackupsResponse](#ddev.sites.v1alpha1.ListFileBackupsResponse)
    - [PullFileBackupRequest](#ddev.sites.v1alpha1.PullFileBackupRequest)
    - [PullFileBackupResponse](#ddev.sites.v1alpha1.PullFileBackupResponse)
    - [PushFileBackupRequest](#ddev.sites.v1alpha1.PushFileBackupRequest)
    - [PushFileBackupResponse](#ddev.sites.v1alpha1.PushFileBackupResponse)
    - [RestoreFilesRequest](#ddev.sites.v1alpha1.RestoreFilesRequest)
    - [RestoreFilesResponse](#ddev.sites.v1alpha1.RestoreFilesResponse)
  
- [live/sites/v1alpha1/service.proto](#live/sites/v1alpha1/service.proto)
    - [Sites](#ddev.sites.v1alpha1.Sites)
  
- [live/sites/v1alpha1/site.proto](#live/sites/v1alpha1/site.proto)
    - [AccessLogsRequest](#ddev.sites.v1alpha1.AccessLogsRequest)
    - [AccessLogsResponse](#ddev.sites.v1alpha1.AccessLogsResponse)
    - [BuildLogsRequest](#ddev.sites.v1alpha1.BuildLogsRequest)
    - [BuildLogsResponse](#ddev.sites.v1alpha1.BuildLogsResponse)
    - [CloneOperation](#ddev.sites.v1alpha1.CloneOperation)
    - [CloneRequest](#ddev.sites.v1alpha1.CloneRequest)
    - [CloneResponse](#ddev.sites.v1alpha1.CloneResponse)
    - [CreateSiteRequest](#ddev.sites.v1alpha1.CreateSiteRequest)
    - [CreateSiteResponse](#ddev.sites.v1alpha1.CreateSiteResponse)
    - [Cron](#ddev.sites.v1alpha1.Cron)
    - [DeleteCloneRequest](#ddev.sites.v1alpha1.DeleteCloneRequest)
    - [DeleteCloneResponse](#ddev.sites.v1alpha1.DeleteCloneResponse)
    - [DeleteSiteRequest](#ddev.sites.v1alpha1.DeleteSiteRequest)
    - [DeleteSiteResponse](#ddev.sites.v1alpha1.DeleteSiteResponse)
    - [DescribeCloneRequest](#ddev.sites.v1alpha1.DescribeCloneRequest)
    - [DescribeCloneResponse](#ddev.sites.v1alpha1.DescribeCloneResponse)
    - [GetSiteRequest](#ddev.sites.v1alpha1.GetSiteRequest)
    - [GetSiteResponse](#ddev.sites.v1alpha1.GetSiteResponse)
    - [GitRepository](#ddev.sites.v1alpha1.GitRepository)
    - [ListCloneSiteOperationsRequest](#ddev.sites.v1alpha1.ListCloneSiteOperationsRequest)
    - [ListCloneSiteOperationsResponse](#ddev.sites.v1alpha1.ListCloneSiteOperationsResponse)
    - [ListClonesForSiteRequest](#ddev.sites.v1alpha1.ListClonesForSiteRequest)
    - [ListClonesForSiteResponse](#ddev.sites.v1alpha1.ListClonesForSiteResponse)
    - [ListSiteRequest](#ddev.sites.v1alpha1.ListSiteRequest)
    - [ListSiteResponse](#ddev.sites.v1alpha1.ListSiteResponse)
    - [LogOptions](#ddev.sites.v1alpha1.LogOptions)
    - [MysqlLogsRequest](#ddev.sites.v1alpha1.MysqlLogsRequest)
    - [MysqlLogsResponse](#ddev.sites.v1alpha1.MysqlLogsResponse)
    - [Site](#ddev.sites.v1alpha1.Site)
    - [SiteExecRequest](#ddev.sites.v1alpha1.SiteExecRequest)
    - [SiteExecResponse](#ddev.sites.v1alpha1.SiteExecResponse)
    - [SiteLogsRequest](#ddev.sites.v1alpha1.SiteLogsRequest)
    - [SiteLogsResponse](#ddev.sites.v1alpha1.SiteLogsResponse)
    - [SiteStatus](#ddev.sites.v1alpha1.SiteStatus)
    - [UpdateSiteRequest](#ddev.sites.v1alpha1.UpdateSiteRequest)
    - [UpdateSiteResponse](#ddev.sites.v1alpha1.UpdateSiteResponse)
  
    - [CloneOperationState](#ddev.sites.v1alpha1.CloneOperationState)
    - [SiteType](#ddev.sites.v1alpha1.SiteType)
  
- [Scalar Value Types](#scalar-value-types)



<a name="live/sites/v1alpha1/metadata.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/metadata.proto



<a name="ddev.sites.v1alpha1.Metadata"></a>

### Metadata
Generic metadata about the object.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| labels | [Metadata.LabelsEntry](#ddev.sites.v1alpha1.Metadata.LabelsEntry) | repeated | A map of labels set on the object |
| created | [int64](#int64) |  | `OutputOnly` A unix timestamp which expresses the time in which this object was initially created. A zero value indicates that the timestamp has not been set. |
| updated | [int64](#int64) |  | `OutputOnly` A unix timestamp which expresses the time in which this object was last updated. A zero value indicates that the timestamp has not been set. |






<a name="ddev.sites.v1alpha1.Metadata.LabelsEntry"></a>

### Metadata.LabelsEntry



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| key | [string](#string) |  |  |
| value | [string](#string) |  |  |





 

 

 

 



<a name="live/sites/v1alpha1/database.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/database.proto



<a name="ddev.sites.v1alpha1.BackupDatabaseRequest"></a>

### BackupDatabaseRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to backup. |






<a name="ddev.sites.v1alpha1.BackupDatabaseResponse"></a>

### BackupDatabaseResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [DatabaseBackupMetadata](#ddev.sites.v1alpha1.DatabaseBackupMetadata) |  | The state of the backup |






<a name="ddev.sites.v1alpha1.DatabaseBackup"></a>

### DatabaseBackup



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [DatabaseBackupMetadata](#ddev.sites.v1alpha1.DatabaseBackupMetadata) |  | Metadata information about this backup |
| content | [bytes](#bytes) |  | The raw bytes the the content. Supported MIME Types: `gz` |
| CRC32c | [string](#string) |  | `Optional` CRC32c checksum of the data, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. In the event of streaming requests the CRC32c shall represent the checksum of the entire file. If provided a checksum mismatch will result in an error on the receiver. |
| MD5 | [string](#string) |  | `Optional` MD5 hash of the data; encoded using base64. In the event of streaming requests the MD5 shall represent the checksum of the entire file. If provided a checksum mismatch will result in an error on the receiver. |






<a name="ddev.sites.v1alpha1.DatabaseBackupMetadata"></a>

### DatabaseBackupMetadata
The backup object


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the backup |
| databaseReference | [string](#string) |  | The database this backup references |
| created | [int64](#int64) |  | `OutputOnly` The unix timestamp in which this backup was taken |
| state | [BackupState](#ddev.sites.v1alpha1.BackupState) |  | `OutputOnly` The state of this backup |






<a name="ddev.sites.v1alpha1.ListDatabaseBackupsRequest"></a>

### ListDatabaseBackupsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site |






<a name="ddev.sites.v1alpha1.ListDatabaseBackupsResponse"></a>

### ListDatabaseBackupsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [DatabaseBackupMetadata](#ddev.sites.v1alpha1.DatabaseBackupMetadata) | repeated | `OutputOnly` The metadata for all backup objects. |






<a name="ddev.sites.v1alpha1.PullDatabaseBackupRequest"></a>

### PullDatabaseBackupRequest
Pull database pulls the state of a specified database backup


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [string](#string) |  | `Required` The name of the backup to pull. |






<a name="ddev.sites.v1alpha1.PullDatabaseBackupResponse"></a>

### PullDatabaseBackupResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [DatabaseBackup](#ddev.sites.v1alpha1.DatabaseBackup) |  | `OutputOnly` The backup object |






<a name="ddev.sites.v1alpha1.PushDatabaseBackupRequest"></a>

### PushDatabaseBackupRequest
Push a single database to a site


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to push to. |
| backup | [DatabaseBackup](#ddev.sites.v1alpha1.DatabaseBackup) |  | The backup object |






<a name="ddev.sites.v1alpha1.PushDatabaseBackupResponse"></a>

### PushDatabaseBackupResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [string](#string) |  | The name of the restorable backup resource |






<a name="ddev.sites.v1alpha1.RestoreDatabaseRequest"></a>

### RestoreDatabaseRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to restore. |
| backup | [string](#string) |  | `Required` The name of the backup to restore the site to. |






<a name="ddev.sites.v1alpha1.RestoreDatabaseResponse"></a>

### RestoreDatabaseResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [DatabaseBackupMetadata](#ddev.sites.v1alpha1.DatabaseBackupMetadata) |  | The state of the backup |





 


<a name="ddev.sites.v1alpha1.BackupState"></a>

### BackupState


| Name | Number | Description |
| ---- | ------ | ----------- |
| CREATED | 0 |  |
| FINISHED | 1 |  |
| DELETED | 2 |  |


 

 

 



<a name="live/sites/v1alpha1/file.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/file.proto



<a name="ddev.sites.v1alpha1.BackupFilesRequest"></a>

### BackupFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site. |






<a name="ddev.sites.v1alpha1.BackupFilesResponse"></a>

### BackupFilesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` The name of the filebackup object. |






<a name="ddev.sites.v1alpha1.DescribeFileBackupRequest"></a>

### DescribeFileBackupRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to describe files for. |
| paths | [string](#string) | repeated | `Optional` A list of paths or directories to describe. |






<a name="ddev.sites.v1alpha1.DescribeFileBackupResponse"></a>

### DescribeFileBackupResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [File](#ddev.sites.v1alpha1.File) | repeated | `OutputOnly` The metadata for files matching the request with content omitted. |






<a name="ddev.sites.v1alpha1.File"></a>

### File



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| path | [string](#string) |  | The relative path, including the filename. |
| content | [bytes](#bytes) |  | The content of the file expressed in bytes. |
| CRC32c | [string](#string) |  | CRC32c checksum of the data, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. If provided a checksum mismatch on the receiving end will result in an error. |
| MD5 | [string](#string) |  | MD5 hash of the data; encoded using base64. If provided a checksum mismatch on the receiving end will result in an error. |






<a name="ddev.sites.v1alpha1.FileBackup"></a>

### FileBackup
TODO


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [FileBackupMetadata](#ddev.sites.v1alpha1.FileBackupMetadata) |  |  |
| files | [File](#ddev.sites.v1alpha1.File) | repeated |  |






<a name="ddev.sites.v1alpha1.FileBackupMetadata"></a>

### FileBackupMetadata



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the backup |
| databaseReference | [string](#string) |  | The database this backup references |
| created | [int64](#int64) |  | The unix timestamp in which this backup was taken |






<a name="ddev.sites.v1alpha1.ListFileBackupsRequest"></a>

### ListFileBackupsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site |






<a name="ddev.sites.v1alpha1.ListFileBackupsResponse"></a>

### ListFileBackupsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| metadata | [FileBackupMetadata](#ddev.sites.v1alpha1.FileBackupMetadata) | repeated | `OutputOnly` The metadata for all backup objects. |






<a name="ddev.sites.v1alpha1.PullFileBackupRequest"></a>

### PullFileBackupRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to pull files from. |
| paths | [string](#string) | repeated | `Optional` The path to the files or directories to pull. If unspecified all files will be pulled. |






<a name="ddev.sites.v1alpha1.PullFileBackupResponse"></a>

### PullFileBackupResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| file | [File](#ddev.sites.v1alpha1.File) |  | `OutputOnly` The staged files for the requested backup |






<a name="ddev.sites.v1alpha1.PushFileBackupRequest"></a>

### PushFileBackupRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to stage files for |
| file | [File](#ddev.sites.v1alpha1.File) |  | `Required` The file to stage for the site |
| directory | [string](#string) |  | `Optional` Destination directory for the files. If specified all files will be relative to this location. |






<a name="ddev.sites.v1alpha1.PushFileBackupResponse"></a>

### PushFileBackupResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Optional` The name of the asset created for this backup |






<a name="ddev.sites.v1alpha1.RestoreFilesRequest"></a>

### RestoreFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to restore files to. |






<a name="ddev.sites.v1alpha1.RestoreFilesResponse"></a>

### RestoreFilesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `OutputOnly` The name of the filerestore object. |





 

 

 

 



<a name="live/sites/v1alpha1/service.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/service.proto


 

 

 


<a name="ddev.sites.v1alpha1.Sites"></a>

### Sites
The Sites service provides site level functions inside a users ddev-live workspace.
To access the sites service consumers will have to initialize an authenticated client.  This requires
several metadata to be passed to the client.

`x-auth-token` which is a authentication token for the call.  This will be required to be a temporary token issued by the BillingAPI.

`x-ddev-workspace` which is the workspace for all procedures.  For example a client request `ListSites` will list all sites in the workspace whose value is derived from the key `x-ddev-workspace`.

| Method Name | Request Type | Response Type | Description |
| ----------- | ------------ | ------------- | ------------|
| CreateSite | [CreateSiteRequest](#ddev.sites.v1alpha1.CreateSiteRequest) | [CreateSiteResponse](#ddev.sites.v1alpha1.CreateSiteResponse) | CreateSite creates one of the supported site types |
| GetSite | [GetSiteRequest](#ddev.sites.v1alpha1.GetSiteRequest) | [GetSiteResponse](#ddev.sites.v1alpha1.GetSiteResponse) | GetSite returns the state of a site by name |
| ListSites | [ListSiteRequest](#ddev.sites.v1alpha1.ListSiteRequest) | [ListSiteResponse](#ddev.sites.v1alpha1.ListSiteResponse) | ListSites returns all sites within a workspace |
| UpdateSite | [UpdateSiteRequest](#ddev.sites.v1alpha1.UpdateSiteRequest) | [UpdateSiteResponse](#ddev.sites.v1alpha1.UpdateSiteResponse) |  |
| DeleteSite | [DeleteSiteRequest](#ddev.sites.v1alpha1.DeleteSiteRequest) | [DeleteSiteResponse](#ddev.sites.v1alpha1.DeleteSiteResponse) |  |
| SiteLogStream | [SiteLogsRequest](#ddev.sites.v1alpha1.SiteLogsRequest) | [SiteLogsResponse](#ddev.sites.v1alpha1.SiteLogsResponse) stream | SiteLogStream returns a stream of logs for a site |
| AccessLogStream | [AccessLogsRequest](#ddev.sites.v1alpha1.AccessLogsRequest) | [AccessLogsResponse](#ddev.sites.v1alpha1.AccessLogsResponse) stream | AccessLogStream returns a stream of access logs for a site |
| MysqlLogStream | [MysqlLogsRequest](#ddev.sites.v1alpha1.MysqlLogsRequest) | [MysqlLogsResponse](#ddev.sites.v1alpha1.MysqlLogsResponse) stream | MysqlLogStream returns a stream of access logs for a site |
| BuildLogStream | [BuildLogsRequest](#ddev.sites.v1alpha1.BuildLogsRequest) | [BuildLogsResponse](#ddev.sites.v1alpha1.BuildLogsResponse) stream | BuildLogStream returns a stream of build logs for a site |
| SiteExecStream | [SiteExecRequest](#ddev.sites.v1alpha1.SiteExecRequest) stream | [SiteExecResponse](#ddev.sites.v1alpha1.SiteExecResponse) stream | SiteExecStream allows for the streaming execution of commands inside a site container |
| CloneSite | [CloneRequest](#ddev.sites.v1alpha1.CloneRequest) | [CloneResponse](#ddev.sites.v1alpha1.CloneResponse) | CloneSite creates a clone of already existing site |
| DescribeClone | [DescribeCloneRequest](#ddev.sites.v1alpha1.DescribeCloneRequest) | [DescribeCloneResponse](#ddev.sites.v1alpha1.DescribeCloneResponse) | DescribeClone describes the status of an in progress clone operation |
| ListCloneSiteOperations | [ListCloneSiteOperationsRequest](#ddev.sites.v1alpha1.ListCloneSiteOperationsRequest) | [ListCloneSiteOperationsResponse](#ddev.sites.v1alpha1.ListCloneSiteOperationsResponse) | ListCloneSiteOperations lists all clone site operations |
| ListClonesForSite | [ListClonesForSiteRequest](#ddev.sites.v1alpha1.ListClonesForSiteRequest) | [ListClonesForSiteResponse](#ddev.sites.v1alpha1.ListClonesForSiteResponse) | ListClonesForSite lists all clones for a particular origin site |
| DeleteClone | [DeleteCloneRequest](#ddev.sites.v1alpha1.DeleteCloneRequest) | [DeleteCloneResponse](#ddev.sites.v1alpha1.DeleteCloneResponse) | DeleteClone removes a clone resource and any children of that clone resource |
| BackupDatabase | [BackupDatabaseRequest](#ddev.sites.v1alpha1.BackupDatabaseRequest) | [BackupDatabaseResponse](#ddev.sites.v1alpha1.BackupDatabaseResponse) | BackupDatabase backs up a database associated with a site |
| RestoreDatabase | [RestoreDatabaseRequest](#ddev.sites.v1alpha1.RestoreDatabaseRequest) | [RestoreDatabaseResponse](#ddev.sites.v1alpha1.RestoreDatabaseResponse) | RestoreDatabase restores a sites databases to a known backup |
| PushDatabaseBackup | [PushDatabaseBackupRequest](#ddev.sites.v1alpha1.PushDatabaseBackupRequest) | [PushDatabaseBackupResponse](#ddev.sites.v1alpha1.PushDatabaseBackupResponse) | PushDatabaseBackup creates a new backup for a site and attempts to restore the site to that backup |
| PushDatabaseBackupStream | [PushDatabaseBackupRequest](#ddev.sites.v1alpha1.PushDatabaseBackupRequest) stream | [PushDatabaseBackupResponse](#ddev.sites.v1alpha1.PushDatabaseBackupResponse) | PushDatabaseBackupStream creates a new backup for a site and attempts to restore the site to that backup |
| PullDatabaseBackup | [PullDatabaseBackupRequest](#ddev.sites.v1alpha1.PullDatabaseBackupRequest) | [PullDatabaseBackupResponse](#ddev.sites.v1alpha1.PullDatabaseBackupResponse) | PullDatabase pulls down a database backup locally |
| PullDatabaseBackupStream | [PullDatabaseBackupRequest](#ddev.sites.v1alpha1.PullDatabaseBackupRequest) | [PullDatabaseBackupResponse](#ddev.sites.v1alpha1.PullDatabaseBackupResponse) stream | PullDatabaseBackupStream pulls down a database backup locally |
| ListDatabaseBackups | [ListDatabaseBackupsRequest](#ddev.sites.v1alpha1.ListDatabaseBackupsRequest) | [ListDatabaseBackupsResponse](#ddev.sites.v1alpha1.ListDatabaseBackupsResponse) | Lists database backups known for a provided site |
| BackupFiles | [BackupFilesRequest](#ddev.sites.v1alpha1.BackupFilesRequest) | [BackupFilesResponse](#ddev.sites.v1alpha1.BackupFilesResponse) | BackupFiles backups up a currently running site environment to the staging area |
| RestoreFiles | [RestoreFilesRequest](#ddev.sites.v1alpha1.RestoreFilesRequest) | [RestoreFilesResponse](#ddev.sites.v1alpha1.RestoreFilesResponse) | RestoreFiles restores the current staging area to a sites environment |
| PushFileBackup | [PushFileBackupRequest](#ddev.sites.v1alpha1.PushFileBackupRequest) | [PushFileBackupResponse](#ddev.sites.v1alpha1.PushFileBackupResponse) | PushFile upload file assets to a sites backup staging area |
| PushFileBackupStream | [PushFileBackupRequest](#ddev.sites.v1alpha1.PushFileBackupRequest) stream | [PushFileBackupResponse](#ddev.sites.v1alpha1.PushFileBackupResponse) | PushFileStream allows client side streaming of large files to a staged backup area |
| PullFileBackupStream | [PullFileBackupRequest](#ddev.sites.v1alpha1.PullFileBackupRequest) | [PullFileBackupResponse](#ddev.sites.v1alpha1.PullFileBackupResponse) stream | PullFileStream streams currently staged file[s] from the server and pulls them down to a local source |
| DescribeFileBackup | [DescribeFileBackupRequest](#ddev.sites.v1alpha1.DescribeFileBackupRequest) | [DescribeFileBackupResponse](#ddev.sites.v1alpha1.DescribeFileBackupResponse) | DescribeFiles returns the metadata for current files staged for a restore operation |
| ListFileBackups | [ListFileBackupsRequest](#ddev.sites.v1alpha1.ListFileBackupsRequest) | [ListFileBackupsResponse](#ddev.sites.v1alpha1.ListFileBackupsResponse) | Lists file backups known for a provided site |

 



<a name="live/sites/v1alpha1/site.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/site.proto



<a name="ddev.sites.v1alpha1.AccessLogsRequest"></a>

### AccessLogsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name of the site |
| options | [LogOptions](#ddev.sites.v1alpha1.LogOptions) |  | `Optional` Additional options for logging |






<a name="ddev.sites.v1alpha1.AccessLogsResponse"></a>

### AccessLogsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  | TODO |






<a name="ddev.sites.v1alpha1.BuildLogsRequest"></a>

### BuildLogsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name of the site |
| options | [LogOptions](#ddev.sites.v1alpha1.LogOptions) |  | `Optional` Additional options for logging |






<a name="ddev.sites.v1alpha1.BuildLogsResponse"></a>

### BuildLogsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| scope | [string](#string) |  | `OutputOnly` A named scope to which these log messages apply |
| content | [bytes](#bytes) |  | `OutputOnly` The log data for this scope of logs |






<a name="ddev.sites.v1alpha1.CloneOperation"></a>

### CloneOperation



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| ref | [string](#string) |  | `OutputOnly` Reference to the clone site operation |
| originSite | [string](#string) |  | `OutputOnly` Name of the origin site |
| newSite | [string](#string) |  | `OutputOnly` Name of the new site |
| state | [CloneOperationState](#ddev.sites.v1alpha1.CloneOperationState) |  | `OutputOnly` State of the clone operation |
| info | [string](#string) |  | `OutputOnly` Optionally contains additional human readable information describing the state of the operation |






<a name="ddev.sites.v1alpha1.CloneRequest"></a>

### CloneRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| originSite | [string](#string) |  | `Required` The name of the origin site |
| newSite | [string](#string) |  | `Required` The name of the new site |
| git | [GitRepository](#ddev.sites.v1alpha1.GitRepository) |  |  |






<a name="ddev.sites.v1alpha1.CloneResponse"></a>

### CloneResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operationRef | [string](#string) |  | `OutputOnly` Reference to the clone site operation |






<a name="ddev.sites.v1alpha1.CreateSiteRequest"></a>

### CreateSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name of the site |
| git | [GitRepository](#ddev.sites.v1alpha1.GitRepository) |  |  |
| type | [SiteType](#ddev.sites.v1alpha1.SiteType) |  | `Required` The type of the CMS used for the site |
| version | [string](#string) |  | `Optional` The version of the CMS used for the site |
| composerInstall | [bool](#bool) |  | `Optional` Whether to run composer install when creating the site image |
| composerArgs | [string](#string) | repeated | `Optional` If `composerInstall` is set, use this flags to specify which args are passed to composer install |
| cron | [Cron](#ddev.sites.v1alpha1.Cron) |  | `Optional` |
| DocRoot | [string](#string) |  | `Optional` The relative docroot of the site, like &#39;docroot&#39; or &#39;htdocs&#39; or &#39;web&#39;. Defaults to empty, the repository&#39;s root directory. |
| persistentPaths | [string](#string) | repeated | `Optional` A list of persistent mount paths relative to docroot (ex. content/uploads). |
| ephemeralPaths | [string](#string) | repeated | `Optional` A list of ephemeral mount paths relative to docroot |






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






<a name="ddev.sites.v1alpha1.DeleteCloneRequest"></a>

### DeleteCloneRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operationRef | [string](#string) |  | `Required` Reference to the clone site operation |






<a name="ddev.sites.v1alpha1.DeleteCloneResponse"></a>

### DeleteCloneResponse







<a name="ddev.sites.v1alpha1.DeleteSiteRequest"></a>

### DeleteSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name of the site |






<a name="ddev.sites.v1alpha1.DeleteSiteResponse"></a>

### DeleteSiteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [Site](#ddev.sites.v1alpha1.Site) |  | `OutputOnly` The name of the site |






<a name="ddev.sites.v1alpha1.DescribeCloneRequest"></a>

### DescribeCloneRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| operationRef | [string](#string) |  | `Required` Reference to the clone site operation |






<a name="ddev.sites.v1alpha1.DescribeCloneResponse"></a>

### DescribeCloneResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| state | [CloneOperationState](#ddev.sites.v1alpha1.CloneOperationState) |  | `OutputOnly` Reference to the clone site operation |
| cloneRef | [string](#string) |  | `OutputOnly` Reference to the created site resource as a result of the clone operation. This field will be an empty string if the clone operation was not successful |
| meta | [Metadata](#ddev.sites.v1alpha1.Metadata) |  | `OutputOnly` Object metadata for the clone resource. |
| stateDetail | [string](#string) |  | `OutputOnly` Detailed description of the state |






<a name="ddev.sites.v1alpha1.GetSiteRequest"></a>

### GetSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name of the site |






<a name="ddev.sites.v1alpha1.GetSiteResponse"></a>

### GetSiteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [Site](#ddev.sites.v1alpha1.Site) |  | `OutputOnly` The requested site. |






<a name="ddev.sites.v1alpha1.GitRepository"></a>

### GitRepository



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| url | [string](#string) |  | The URL of the repository |
| ref | [string](#string) |  | The branch, tag, or commit. Default: `master`. |






<a name="ddev.sites.v1alpha1.ListCloneSiteOperationsRequest"></a>

### ListCloneSiteOperationsRequest







<a name="ddev.sites.v1alpha1.ListCloneSiteOperationsResponse"></a>

### ListCloneSiteOperationsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| items | [CloneOperation](#ddev.sites.v1alpha1.CloneOperation) | repeated | `OutputOnly` List of clone site operations |






<a name="ddev.sites.v1alpha1.ListClonesForSiteRequest"></a>

### ListClonesForSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| originSite | [string](#string) |  | `Required` List all clones for a particular origin site |






<a name="ddev.sites.v1alpha1.ListClonesForSiteResponse"></a>

### ListClonesForSiteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| clones | [Site](#ddev.sites.v1alpha1.Site) | repeated | `OutputOnly` List all clones for a particular origin site |






<a name="ddev.sites.v1alpha1.ListSiteRequest"></a>

### ListSiteRequest







<a name="ddev.sites.v1alpha1.ListSiteResponse"></a>

### ListSiteResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| sites | [Site](#ddev.sites.v1alpha1.Site) | repeated | `OutputOnly` A list of sites. |






<a name="ddev.sites.v1alpha1.LogOptions"></a>

### LogOptions



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| follow | [bool](#bool) |  | `Optional` Continues to follow and send logs until the maximum allotted connection time has been reached. Defaults to false. |
| limitBytes | [int64](#int64) |  | `Optional` The approximate number of bytes to return from the message. |
| previous | [bool](#bool) |  | `Optional` Retrieves the logs for a previously terminated run of the site |
| sinceSeconds | [int64](#int64) |  | `Optional` The number of seconds from now to retrieve logs |
| sinceTime | [string](#string) |  | `Optional` An RFC3999 formatted timestamp to start retrieving logs from |
| taillines | [int64](#int64) |  | `Optional` The number of lines to retrieve at the tail end of a log |
| timestamps | [bool](#bool) |  | `Optional` Will prepend RFC3999 timestamps at the beginning of each log line |






<a name="ddev.sites.v1alpha1.MysqlLogsRequest"></a>

### MysqlLogsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name of the site |
| options | [LogOptions](#ddev.sites.v1alpha1.LogOptions) |  | `Optional` Additional options for logging |






<a name="ddev.sites.v1alpha1.MysqlLogsResponse"></a>

### MysqlLogsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  | TODO |






<a name="ddev.sites.v1alpha1.Site"></a>

### Site



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| workspace | [string](#string) |  |  |
| git | [GitRepository](#ddev.sites.v1alpha1.GitRepository) |  |  |
| type | [SiteType](#ddev.sites.v1alpha1.SiteType) |  | The type of the CMS used for the site |
| urls | [string](#string) | repeated | The URLs for the site |
| status | [SiteStatus](#ddev.sites.v1alpha1.SiteStatus) |  | A set of different status descriptions for a site |
| version | [string](#string) |  | The version of the CMS used for the site |
| composerInstall | [bool](#bool) |  | Whether to run composer install when creating the site image |
| composerArgs | [string](#string) | repeated | If `composerInstall` is set, use this flags to specify which args are passed to composer install |
| cron | [Cron](#ddev.sites.v1alpha1.Cron) |  | `Optional` |
| DocRoot | [string](#string) |  | The relative docroot of the site, like &#39;docroot&#39; or &#39;htdocs&#39; or &#39;web&#39;. Defaults to empty, the repository&#39;s root directory. |
| persistentPaths | [string](#string) | repeated | A list of persistent mount paths relative to docroot (ex. content/uploads). |
| ephemeralPaths | [string](#string) | repeated | A list of ephemeral mount paths relative to docroot |






<a name="ddev.sites.v1alpha1.SiteExecRequest"></a>

### SiteExecRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  |  |
| command | [string](#string) | repeated |  |
| quiet | [bool](#bool) |  |  |






<a name="ddev.sites.v1alpha1.SiteExecResponse"></a>

### SiteExecResponse
TODO:


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| stdout | [bytes](#bytes) |  | TODO |
| stderr | [bytes](#bytes) |  | TODO |






<a name="ddev.sites.v1alpha1.SiteLogsRequest"></a>

### SiteLogsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name of the site |
| options | [LogOptions](#ddev.sites.v1alpha1.LogOptions) |  | `Optional` Additional options for logging |






<a name="ddev.sites.v1alpha1.SiteLogsResponse"></a>

### SiteLogsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  | TODO |






<a name="ddev.sites.v1alpha1.SiteStatus"></a>

### SiteStatus
Defines the overall status of a site.  A site is defined as health when all substatus elements are true.


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| server | [bool](#bool) |  | Server healthy status |
| database | [bool](#bool) |  | Database healthy status |
| filestore | [bool](#bool) |  | Filestore healthy status |






<a name="ddev.sites.v1alpha1.UpdateSiteRequest"></a>

### UpdateSiteRequest
TODO






<a name="ddev.sites.v1alpha1.UpdateSiteResponse"></a>

### UpdateSiteResponse
TODO





 


<a name="ddev.sites.v1alpha1.CloneOperationState"></a>

### CloneOperationState


| Name | Number | Description |
| ---- | ------ | ----------- |
| CLONE_CREATED | 0 |  |
| CLONE_SUCCEEDED | 1 |  |
| CLONE_FAILED | 2 |  |



<a name="ddev.sites.v1alpha1.SiteType"></a>

### SiteType


| Name | Number | Description |
| ---- | ------ | ----------- |
| NOT_SET | 0 | NOT_SET indicates no type of site has been specified |
| DRUPAL | 1 |  |
| TYPO3 | 2 |  |
| WORDPRESS | 3 |  |


 

 

 



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

