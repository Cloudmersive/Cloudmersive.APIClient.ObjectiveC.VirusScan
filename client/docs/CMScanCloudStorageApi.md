# CMScanCloudStorageApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scanCloudStorageScanAwsS3File**](CMScanCloudStorageApi.md#scancloudstoragescanawss3file) | **POST** /virus/scan/cloud-storage/aws-s3/single | Scan an AWS S3 file for viruses
[**scanCloudStorageScanAzureBlob**](CMScanCloudStorageApi.md#scancloudstoragescanazureblob) | **POST** /virus/scan/cloud-storage/azure-blob/single | Scan an Azure Blob for viruses
[**scanCloudStorageScanGcpStorageFile**](CMScanCloudStorageApi.md#scancloudstoragescangcpstoragefile) | **POST** /virus/scan/cloud-storage/gcp-storage/single | Scan an Google Cloud Platform (GCP) Storage file for viruses


# **scanCloudStorageScanAwsS3File**
```objc
-(NSURLSessionTask*) scanCloudStorageScanAwsS3FileWithAccessKey: (NSString*) accessKey
    secretKey: (NSString*) secretKey
    bucketRegion: (NSString*) bucketRegion
    bucketName: (NSString*) bucketName
    keyName: (NSString*) keyName
        completionHandler: (void (^)(CMCloudStorageVirusScanResult* output, NSError* error)) handler;
```

Scan an AWS S3 file for viruses

Scan the contents of a single AWS S3 file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* accessKey = @"accessKey_example"; // AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console
NSString* secretKey = @"secretKey_example"; // AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console
NSString* bucketRegion = @"bucketRegion_example"; // Name of the region of the S3 bucket, such as 'US-East-1'
NSString* bucketName = @"bucketName_example"; // Name of the S3 bucket
NSString* keyName = @"keyName_example"; // Key name (also called file name) of the file in S3 that you wish to scan for viruses

CMScanCloudStorageApi*apiInstance = [[CMScanCloudStorageApi alloc] init];

// Scan an AWS S3 file for viruses
[apiInstance scanCloudStorageScanAwsS3FileWithAccessKey:accessKey
              secretKey:secretKey
              bucketRegion:bucketRegion
              bucketName:bucketName
              keyName:keyName
          completionHandler: ^(CMCloudStorageVirusScanResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMScanCloudStorageApi->scanCloudStorageScanAwsS3File: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **accessKey** | **NSString***| AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console | 
 **secretKey** | **NSString***| AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console | 
 **bucketRegion** | **NSString***| Name of the region of the S3 bucket, such as &#39;US-East-1&#39; | 
 **bucketName** | **NSString***| Name of the S3 bucket | 
 **keyName** | **NSString***| Key name (also called file name) of the file in S3 that you wish to scan for viruses | 

### Return type

[**CMCloudStorageVirusScanResult***](CMCloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scanCloudStorageScanAzureBlob**
```objc
-(NSURLSessionTask*) scanCloudStorageScanAzureBlobWithConnectionString: (NSString*) connectionString
    containerName: (NSString*) containerName
    blobPath: (NSString*) blobPath
        completionHandler: (void (^)(CMCloudStorageVirusScanResult* output, NSError* error)) handler;
```

Scan an Azure Blob for viruses

Scan the contents of a single Azure Blob and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* connectionString = @"connectionString_example"; // Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal.
NSString* containerName = @"containerName_example"; // Name of the Blob container within the Azure Blob Storage account
NSString* blobPath = @"blobPath_example"; // Path to the blob within the container, such as 'hello.pdf' or '/folder/subfolder/world.pdf'

CMScanCloudStorageApi*apiInstance = [[CMScanCloudStorageApi alloc] init];

// Scan an Azure Blob for viruses
[apiInstance scanCloudStorageScanAzureBlobWithConnectionString:connectionString
              containerName:containerName
              blobPath:blobPath
          completionHandler: ^(CMCloudStorageVirusScanResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMScanCloudStorageApi->scanCloudStorageScanAzureBlob: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **connectionString** | **NSString***| Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal. | 
 **containerName** | **NSString***| Name of the Blob container within the Azure Blob Storage account | 
 **blobPath** | **NSString***| Path to the blob within the container, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39; | 

### Return type

[**CMCloudStorageVirusScanResult***](CMCloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scanCloudStorageScanGcpStorageFile**
```objc
-(NSURLSessionTask*) scanCloudStorageScanGcpStorageFileWithBucketName: (NSString*) bucketName
    objectName: (NSString*) objectName
    jsonCredentialFile: (NSURL*) jsonCredentialFile
        completionHandler: (void (^)(CMCloudStorageVirusScanResult* output, NSError* error)) handler;
```

Scan an Google Cloud Platform (GCP) Storage file for viruses

Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSString* bucketName = @"bucketName_example"; // Name of the bucket in Google Cloud Storage
NSString* objectName = @"objectName_example"; // Name of the object or file in Google Cloud Storage
NSURL* jsonCredentialFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Service Account credential for Google Cloud stored in a JSON file.

CMScanCloudStorageApi*apiInstance = [[CMScanCloudStorageApi alloc] init];

// Scan an Google Cloud Platform (GCP) Storage file for viruses
[apiInstance scanCloudStorageScanGcpStorageFileWithBucketName:bucketName
              objectName:objectName
              jsonCredentialFile:jsonCredentialFile
          completionHandler: ^(CMCloudStorageVirusScanResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMScanCloudStorageApi->scanCloudStorageScanGcpStorageFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **bucketName** | **NSString***| Name of the bucket in Google Cloud Storage | 
 **objectName** | **NSString***| Name of the object or file in Google Cloud Storage | 
 **jsonCredentialFile** | **NSURL***| Service Account credential for Google Cloud stored in a JSON file. | 

### Return type

[**CMCloudStorageVirusScanResult***](CMCloudStorageVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

