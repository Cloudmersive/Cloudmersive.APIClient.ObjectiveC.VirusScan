#import "CMScanCloudStorageApi.h"
#import "CMQueryParamCollection.h"
#import "CMApiClient.h"
#import "CMCloudStorageVirusScanResult.h"


@interface CMScanCloudStorageApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation CMScanCloudStorageApi

NSString* kCMScanCloudStorageApiErrorDomain = @"CMScanCloudStorageApiErrorDomain";
NSInteger kCMScanCloudStorageApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[CMApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(CMApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// Scan an AWS S3 file for viruses
/// Scan the contents of a single AWS S3 file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
///  @param accessKey AWS S3 access key for the S3 bucket; you can get this from My Security Credentials in the AWS console 
///
///  @param secretKey AWS S3 secret key for the S3 bucket; you can get this from My Security Credentials in the AWS console 
///
///  @param bucketRegion Name of the region of the S3 bucket, such as 'US-East-1' 
///
///  @param bucketName Name of the S3 bucket 
///
///  @param keyName Key name (also called file name) of the file in S3 that you wish to scan for viruses 
///
///  @returns CMCloudStorageVirusScanResult*
///
-(NSURLSessionTask*) scanCloudStorageScanAwsS3FileWithAccessKey: (NSString*) accessKey
    secretKey: (NSString*) secretKey
    bucketRegion: (NSString*) bucketRegion
    bucketName: (NSString*) bucketName
    keyName: (NSString*) keyName
    completionHandler: (void (^)(CMCloudStorageVirusScanResult* output, NSError* error)) handler {
    // verify the required parameter 'accessKey' is set
    if (accessKey == nil) {
        NSParameterAssert(accessKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"accessKey"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'secretKey' is set
    if (secretKey == nil) {
        NSParameterAssert(secretKey);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"secretKey"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'bucketRegion' is set
    if (bucketRegion == nil) {
        NSParameterAssert(bucketRegion);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"bucketRegion"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'bucketName' is set
    if (bucketName == nil) {
        NSParameterAssert(bucketName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"bucketName"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'keyName' is set
    if (keyName == nil) {
        NSParameterAssert(keyName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"keyName"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/virus/scan/cloud-storage/aws-s3/single"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (accessKey != nil) {
        headerParams[@"accessKey"] = accessKey;
    }
    if (secretKey != nil) {
        headerParams[@"secretKey"] = secretKey;
    }
    if (bucketRegion != nil) {
        headerParams[@"bucketRegion"] = bucketRegion;
    }
    if (bucketName != nil) {
        headerParams[@"bucketName"] = bucketName;
    }
    if (keyName != nil) {
        headerParams[@"keyName"] = keyName;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMCloudStorageVirusScanResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMCloudStorageVirusScanResult*)data, error);
                                }
                            }];
}

///
/// Scan an Azure Blob for viruses
/// Scan the contents of a single Azure Blob and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
///  @param connectionString Connection string for the Azure Blob Storage Account; you can get this connection string from the Access Keys tab of the Storage Account blade in the Azure Portal. 
///
///  @param containerName Name of the Blob container within the Azure Blob Storage account 
///
///  @param blobPath Path to the blob within the container, such as 'hello.pdf' or '/folder/subfolder/world.pdf' 
///
///  @returns CMCloudStorageVirusScanResult*
///
-(NSURLSessionTask*) scanCloudStorageScanAzureBlobWithConnectionString: (NSString*) connectionString
    containerName: (NSString*) containerName
    blobPath: (NSString*) blobPath
    completionHandler: (void (^)(CMCloudStorageVirusScanResult* output, NSError* error)) handler {
    // verify the required parameter 'connectionString' is set
    if (connectionString == nil) {
        NSParameterAssert(connectionString);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"connectionString"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'containerName' is set
    if (containerName == nil) {
        NSParameterAssert(containerName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"containerName"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'blobPath' is set
    if (blobPath == nil) {
        NSParameterAssert(blobPath);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"blobPath"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/virus/scan/cloud-storage/azure-blob/single"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (connectionString != nil) {
        headerParams[@"connectionString"] = connectionString;
    }
    if (containerName != nil) {
        headerParams[@"containerName"] = containerName;
    }
    if (blobPath != nil) {
        headerParams[@"blobPath"] = blobPath;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMCloudStorageVirusScanResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMCloudStorageVirusScanResult*)data, error);
                                }
                            }];
}

///
/// Scan an Google Cloud Platform (GCP) Storage file for viruses
/// Scan the contents of a single Google Cloud Platform (GCP) Storage file and its content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
///  @param bucketName Name of the bucket in Google Cloud Storage 
///
///  @param objectName Name of the object or file in Google Cloud Storage 
///
///  @param jsonCredentialFile Service Account credential for Google Cloud stored in a JSON file. 
///
///  @returns CMCloudStorageVirusScanResult*
///
-(NSURLSessionTask*) scanCloudStorageScanGcpStorageFileWithBucketName: (NSString*) bucketName
    objectName: (NSString*) objectName
    jsonCredentialFile: (NSURL*) jsonCredentialFile
    completionHandler: (void (^)(CMCloudStorageVirusScanResult* output, NSError* error)) handler {
    // verify the required parameter 'bucketName' is set
    if (bucketName == nil) {
        NSParameterAssert(bucketName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"bucketName"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'objectName' is set
    if (objectName == nil) {
        NSParameterAssert(objectName);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"objectName"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'jsonCredentialFile' is set
    if (jsonCredentialFile == nil) {
        NSParameterAssert(jsonCredentialFile);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"jsonCredentialFile"] };
            NSError* error = [NSError errorWithDomain:kCMScanCloudStorageApiErrorDomain code:kCMScanCloudStorageApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/virus/scan/cloud-storage/gcp-storage/single"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (bucketName != nil) {
        headerParams[@"bucketName"] = bucketName;
    }
    if (objectName != nil) {
        headerParams[@"objectName"] = objectName;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json", @"text/json", @"application/xml", @"text/xml"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"multipart/form-data"]];

    // Authentication setting
    NSArray *authSettings = @[@"Apikey"];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];
    localVarFiles[@"jsonCredentialFile"] = jsonCredentialFile;

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"POST"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"CMCloudStorageVirusScanResult*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((CMCloudStorageVirusScanResult*)data, error);
                                }
                            }];
}



@end
