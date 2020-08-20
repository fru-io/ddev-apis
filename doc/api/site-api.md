# Protocol Documentation
<a name="top"></a>

## Table of Contents

- [live/sites/v1alpha1/file.proto](#live/sites/v1alpha1/file.proto)
    - [BackupFilesRequest](#ddev.sites.v1alpha1.BackupFilesRequest)
    - [BackupFilesResponse](#ddev.sites.v1alpha1.BackupFilesResponse)
    - [File](#ddev.sites.v1alpha1.File)
    - [FileBackup](#ddev.sites.v1alpha1.FileBackup)
    - [FileBackupMetadata](#ddev.sites.v1alpha1.FileBackupMetadata)
    - [ListFileBackupsRequest](#ddev.sites.v1alpha1.ListFileBackupsRequest)
    - [ListFileBackupsResponse](#ddev.sites.v1alpha1.ListFileBackupsResponse)
    - [PullFilesRequest](#ddev.sites.v1alpha1.PullFilesRequest)
    - [PullFilesResponse](#ddev.sites.v1alpha1.PullFilesResponse)
    - [PushFilesRequest](#ddev.sites.v1alpha1.PushFilesRequest)
    - [PushFilesResponse](#ddev.sites.v1alpha1.PushFilesResponse)
    - [RestoreFilesRequest](#ddev.sites.v1alpha1.RestoreFilesRequest)
    - [RestoreFilesResponse](#ddev.sites.v1alpha1.RestoreFilesResponse)
  
- [live/sites/v1alpha1/service.proto](#live/sites/v1alpha1/service.proto)
    - [Sites](#ddev.sites.v1alpha1.Sites)
  
- [live/sites/v1alpha1/database.proto](#live/sites/v1alpha1/database.proto)
    - [BackupDatabaseRequest](#ddev.sites.v1alpha1.BackupDatabaseRequest)
    - [BackupDatabaseResponse](#ddev.sites.v1alpha1.BackupDatabaseResponse)
    - [DatabaseBackup](#ddev.sites.v1alpha1.DatabaseBackup)
    - [DatabaseBackupMetadata](#ddev.sites.v1alpha1.DatabaseBackupMetadata)
    - [ListDatabaseBackupsRequest](#ddev.sites.v1alpha1.ListDatabaseBackupsRequest)
    - [ListDatabaseBackupsResponse](#ddev.sites.v1alpha1.ListDatabaseBackupsResponse)
    - [PullDatabaseRequest](#ddev.sites.v1alpha1.PullDatabaseRequest)
    - [PullDatabaseResponse](#ddev.sites.v1alpha1.PullDatabaseResponse)
    - [PushDatabaseRequest](#ddev.sites.v1alpha1.PushDatabaseRequest)
    - [PushDatabaseResponse](#ddev.sites.v1alpha1.PushDatabaseResponse)
    - [RestoreDatabaseRequest](#ddev.sites.v1alpha1.RestoreDatabaseRequest)
    - [RestoreDatabaseResponse](#ddev.sites.v1alpha1.RestoreDatabaseResponse)
  
    - [BackupState](#ddev.sites.v1alpha1.BackupState)
  
- [live/sites/v1alpha1/site.proto](#live/sites/v1alpha1/site.proto)
    - [AccessLogsRequest](#ddev.sites.v1alpha1.AccessLogsRequest)
    - [AccessLogsResponse](#ddev.sites.v1alpha1.AccessLogsResponse)
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
    - [LogOptions](#ddev.sites.v1alpha1.LogOptions)
    - [MysqlLogsRequest](#ddev.sites.v1alpha1.MysqlLogsRequest)
    - [MysqlLogsResponse](#ddev.sites.v1alpha1.MysqlLogsResponse)
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
| site | [string](#string) |  | `Required` The name of the site. |






<a name="ddev.sites.v1alpha1.BackupFilesResponse"></a>

### BackupFilesResponse







<a name="ddev.sites.v1alpha1.File"></a>

### File



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name, including path, of this file |
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






<a name="ddev.sites.v1alpha1.PullFilesRequest"></a>

### PullFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [string](#string) |  | `Required` The name of the backup to pull. |






<a name="ddev.sites.v1alpha1.PullFilesResponse"></a>

### PullFilesResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [FileBackup](#ddev.sites.v1alpha1.FileBackup) |  | `OutputOnly` The staged files for the requested backup |






<a name="ddev.sites.v1alpha1.PushFilesRequest"></a>

### PushFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to stage files for |
| files | [File](#ddev.sites.v1alpha1.File) | repeated | `Required` The files to stage for the site |
| directory | [string](#string) |  | `Optional` Destination directory for the files |






<a name="ddev.sites.v1alpha1.PushFilesResponse"></a>

### PushFilesResponse







<a name="ddev.sites.v1alpha1.RestoreFilesRequest"></a>

### RestoreFilesRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to restore files to. |
| backup | [string](#string) |  | `Required` The name of the backup to restore files from. |






<a name="ddev.sites.v1alpha1.RestoreFilesResponse"></a>

### RestoreFilesResponse






 

 

 

 



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
| SiteExecStream | [SiteExecRequest](#ddev.sites.v1alpha1.SiteExecRequest) stream | [SiteExecResponse](#ddev.sites.v1alpha1.SiteExecResponse) stream | SiteExecStream allows for the streaming execution of commands inside a site container |
| BackupDatabase | [BackupDatabaseRequest](#ddev.sites.v1alpha1.BackupDatabaseRequest) | [BackupDatabaseResponse](#ddev.sites.v1alpha1.BackupDatabaseResponse) | BackupDatabase backs up a database associated with a site |
| RestoreDatabase | [RestoreDatabaseRequest](#ddev.sites.v1alpha1.RestoreDatabaseRequest) | [RestoreDatabaseResponse](#ddev.sites.v1alpha1.RestoreDatabaseResponse) | RestoreDatabase restores a sites databases to a known backup |
| BackupFiles | [BackupFilesRequest](#ddev.sites.v1alpha1.BackupFilesRequest) | [BackupFilesResponse](#ddev.sites.v1alpha1.BackupFilesResponse) | BackupFiles backs up files associated with a site |
| RestoreFiles | [RestoreFilesRequest](#ddev.sites.v1alpha1.RestoreFilesRequest) | [RestoreFilesResponse](#ddev.sites.v1alpha1.RestoreFilesResponse) | RestoreFiles restores a sites files to a known backup |
| PushFiles | [PushFilesRequest](#ddev.sites.v1alpha1.PushFilesRequest) | [PushFilesResponse](#ddev.sites.v1alpha1.PushFilesResponse) | PushFiles upload file assets to a site&#39;s environment |
| PullFiles | [PullFilesRequest](#ddev.sites.v1alpha1.PullFilesRequest) | [PullFilesResponse](#ddev.sites.v1alpha1.PullFilesResponse) | PullFiles pulls down files locally |
| ListFileBackups | [ListFileBackupsRequest](#ddev.sites.v1alpha1.ListFileBackupsRequest) | [ListFileBackupsResponse](#ddev.sites.v1alpha1.ListFileBackupsResponse) | Lists file backups known for a provided site |
| PushDatabase | [PushDatabaseRequest](#ddev.sites.v1alpha1.PushDatabaseRequest) | [PushDatabaseResponse](#ddev.sites.v1alpha1.PushDatabaseResponse) | PushDatabase uploads a database asset to a site&#39;s environment |
| PullDatabase | [PullDatabaseRequest](#ddev.sites.v1alpha1.PullDatabaseRequest) | [PullDatabaseResponse](#ddev.sites.v1alpha1.PullDatabaseResponse) | PullDatabase pulls down a database locally |
| ListDatabaseBackups | [ListDatabaseBackupsRequest](#ddev.sites.v1alpha1.ListDatabaseBackupsRequest) | [ListDatabaseBackupsResponse](#ddev.sites.v1alpha1.ListDatabaseBackupsResponse) | Lists database backups known for a provided site |

 



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
| CRC32c | [string](#string) |  | `Optional` CRC32c checksum of the data, as described in RFC 4960, Appendix B; encoded using base64 in big-endian byte order. If provided a checksum mismatch will result in an error on the receiver. |
| MD5 | [string](#string) |  | `Optional` MD5 hash of the data; encoded using base64. If provided a checksum mismatch will result in an error on the receiver. |






<a name="ddev.sites.v1alpha1.DatabaseBackupMetadata"></a>

### DatabaseBackupMetadata
The backup object


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | The name of the backup |
| databaseReference | [string](#string) |  | The database this backup references |
| created | [int64](#int64) |  | The unix timestamp in which this backup was taken |
| state | [BackupState](#ddev.sites.v1alpha1.BackupState) |  | The state of this backup |






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






<a name="ddev.sites.v1alpha1.PullDatabaseRequest"></a>

### PullDatabaseRequest
Pull database pulls the state of a specified database backup


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [string](#string) |  | `Required` The name of the backup to pull. |






<a name="ddev.sites.v1alpha1.PullDatabaseResponse"></a>

### PullDatabaseResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| backup | [DatabaseBackup](#ddev.sites.v1alpha1.DatabaseBackup) |  | `OutputOnly` The backup object |






<a name="ddev.sites.v1alpha1.PushDatabaseRequest"></a>

### PushDatabaseRequest
Push a single database to a site


| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| site | [string](#string) |  | `Required` The name of the site to push to. |
| backup | [DatabaseBackup](#ddev.sites.v1alpha1.DatabaseBackup) |  | The backup object |






<a name="ddev.sites.v1alpha1.PushDatabaseResponse"></a>

### PushDatabaseResponse







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


 

 

 



<a name="live/sites/v1alpha1/site.proto"></a>
<p align="right"><a href="#top">Top</a></p>

## live/sites/v1alpha1/site.proto



<a name="ddev.sites.v1alpha1.AccessLogsRequest"></a>

### AccessLogsRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| name | [string](#string) |  | `Required` The name of the site |
| type | [SiteType](#ddev.sites.v1alpha1.SiteType) |  | `Required` The type of site being deleted |
| options | [LogOptions](#ddev.sites.v1alpha1.LogOptions) |  | `Optional` Additional options for logging |






<a name="ddev.sites.v1alpha1.AccessLogsResponse"></a>

### AccessLogsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  | TODO |






<a name="ddev.sites.v1alpha1.CreateSiteRequest"></a>

### CreateSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
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
| persistentPaths | [string](#string) | repeated | `Optional` A list of persistent mount paths relative to docroot (ex. content/uploads). Defaults to &#34;sites/default/files&#34;,&#34;/var/www/drupal-private/&#34;,&#34;sites/default/files/config/sync&#34; |
| ephemeralPaths | [string](#string) | repeated | `Optional` A list of ephemeral mount paths relative to docroot |






<a name="ddev.sites.v1alpha1.GetSiteRequest"></a>

### GetSiteRequest



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
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
| type | [SiteType](#ddev.sites.v1alpha1.SiteType) |  | `Required` The type of site being deleted |
| follow | [bool](#bool) |  | `Optional` Continues to follow and send logs until the maximum allotted connection time has been reached |






<a name="ddev.sites.v1alpha1.MysqlLogsResponse"></a>

### MysqlLogsResponse



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| content | [bytes](#bytes) |  | TODO |






<a name="ddev.sites.v1alpha1.Site"></a>

### Site



| Field | Type | Label | Description |
| ----- | ---- | ----- | ----------- |
| drupal | [DrupalSite](#ddev.sites.v1alpha1.DrupalSite) |  |  |
| typo3 | [Typo3Site](#ddev.sites.v1alpha1.Typo3Site) |  |  |
| wordpress | [WordpressSite](#ddev.sites.v1alpha1.WordpressSite) |  |  |






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
| type | [SiteType](#ddev.sites.v1alpha1.SiteType) |  | `Required` The type of site being deleted |
| options | [LogOptions](#ddev.sites.v1alpha1.LogOptions) |  | `Optional` Additional options for logging |






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
| workspace | [string](#string) |  | `OutputOnly` The workspace of the site |
| name | [string](#string) |  | `OutputOnly` The name of the site |
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
| persistentPaths | [string](#string) | repeated | `Optional` A list of persistent mount paths relative to docroot (ex. content/uploads). |
| ephemeralPaths | [string](#string) | repeated | `Optional` A list of ephemeral mount paths relative to docroot |






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

