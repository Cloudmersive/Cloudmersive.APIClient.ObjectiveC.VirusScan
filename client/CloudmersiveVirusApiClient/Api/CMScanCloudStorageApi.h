#import <Foundation/Foundation.h>
#import "CMCloudStorageVirusScanResult.h"
#import "CMApi.h"

/**
* virusapi
* The Cloudmersive Virus Scan API lets you scan files and content for viruses and identify security issues with content.
*
* OpenAPI spec version: v1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface CMScanCloudStorageApi: NSObject <CMApi>

extern NSString* kCMScanCloudStorageApiErrorDomain;
extern NSInteger kCMScanCloudStorageApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Scan an AWS S3 file for viruses
/// Scan the contents of a single AWS S3 file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
///
/// @param accessKey AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console
/// @param secretKey AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console
/// @param bucketRegion Name of the region of the S3 bucket, such as &#39;US-East-1&#39;
/// @param bucketName Name of the S3 bucket
/// @param keyName Key name (also called file name) of the file in S3 that you wish to scan for viruses
/// 
///  code:200 message:"OK"
///
/// @return CMCloudStorageVirusScanResult*
-(NSURLSessionTask*) scanCloudStorageScanAwsS3FileWithAccessKey: (NSString*) accessKey
    secretKey: (NSString*) secretKey
    bucketRegion: (NSString*) bucketRegion
    bucketName: (NSString*) bucketName
    keyName: (NSString*) keyName
    completionHandler: (void (^)(CMCloudStorageVirusScanResult* output, NSError* error)) handler;


/// Scan an Azure Blob for viruses
/// Scan the contents of a single Azure Blob and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
///
/// @param connectionString Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal.
/// @param containerName Name of the Blob container within the Azure Blob Storage account
/// @param blobPath Path to the blob within the container, such as &#39;hello.pdf&#39; or &#39;/folder/subfolder/world.pdf&#39;
/// 
///  code:200 message:"OK"
///
/// @return CMCloudStorageVirusScanResult*
-(NSURLSessionTask*) scanCloudStorageScanAzureBlobWithConnectionString: (NSString*) connectionString
    containerName: (NSString*) containerName
    blobPath: (NSString*) blobPath
    completionHandler: (void (^)(CMCloudStorageVirusScanResult* output, NSError* error)) handler;


/// Scan an Google Cloud Platform (GCP) Storage file for viruses
/// Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
///
/// @param bucketName Name of the bucket in Google Cloud Storage
/// @param objectName Name of the object or file in Google Cloud Storage
/// @param jsonCredentialFile Service Account credential for Google Cloud stored in a JSON file.
/// 
///  code:200 message:"OK"
///
/// @return CMCloudStorageVirusScanResult*
-(NSURLSessionTask*) scanCloudStorageScanGcpStorageFileWithBucketName: (NSString*) bucketName
    objectName: (NSString*) objectName
    jsonCredentialFile: (NSURL*) jsonCredentialFile
    completionHandler: (void (^)(CMCloudStorageVirusScanResult* output, NSError* error)) handler;



@end
