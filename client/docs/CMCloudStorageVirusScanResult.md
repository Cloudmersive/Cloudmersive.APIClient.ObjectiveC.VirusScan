# CMCloudStorageVirusScanResult

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**successful** | **NSNumber*** | True if the operation of retrieving the file, and scanning it were successfully completed, false if the file could not be downloaded from cloud storage, or if the file could not be scanned.  Note that successful completion does not mean the file is clean; for the output of the virus scanning operation itself, use the CleanResult and FoundViruses parameters. | [optional] 
**cleanResult** | **NSNumber*** | True if the scan contained no viruses, false otherwise | [optional] 
**foundViruses** | [**NSArray&lt;CMCloudStorageVirusFound&gt;***](CMCloudStorageVirusFound.md) | Array of viruses found, if any | [optional] 
**errorDetailedDescription** | **NSString*** | Detailed error message if the operation was not successful | [optional] 
**fileSize** | **NSNumber*** | Size in bytes of the file that was retrieved and scanned | [optional] 

[[Back to Model list]](../README.md#documentation-for-models) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to README]](../README.md)


