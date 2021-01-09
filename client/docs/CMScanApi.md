# CMScanApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scanFile**](CMScanApi.md#scanfile) | **POST** /virus/scan/file | Scan a file for viruses
[**scanFileAdvanced**](CMScanApi.md#scanfileadvanced) | **POST** /virus/scan/file/advanced | Advanced Scan a file for viruses
[**scanWebsite**](CMScanApi.md#scanwebsite) | **POST** /virus/scan/website | Scan a website for malicious content and threats


# **scanFile**
```objc
-(NSURLSessionTask*) scanFileWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMVirusScanResult* output, NSError* error)) handler;
```

Scan a file for viruses

Scan files and content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.

CMScanApi*apiInstance = [[CMScanApi alloc] init];

// Scan a file for viruses
[apiInstance scanFileWithInputFile:inputFile
          completionHandler: ^(CMVirusScanResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMScanApi->scanFile: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 

### Return type

[**CMVirusScanResult***](CMVirusScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scanFileAdvanced**
```objc
-(NSURLSessionTask*) scanFileAdvancedWithInputFile: (NSURL*) inputFile
    allowExecutables: (NSNumber*) allowExecutables
    allowInvalidFiles: (NSNumber*) allowInvalidFiles
    allowScripts: (NSNumber*) allowScripts
    allowPasswordProtectedFiles: (NSNumber*) allowPasswordProtectedFiles
    restrictFileTypes: (NSString*) restrictFileTypes
        completionHandler: (void (^)(CMVirusScanAdvancedResult* output, NSError* error)) handler;
```

Advanced Scan a file for viruses

Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


NSURL* inputFile = [NSURL fileURLWithPath:@"/path/to/file.txt"]; // Input file to perform the operation on.
NSNumber* allowExecutables = @true; // Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). (optional)
NSNumber* allowInvalidFiles = @true; // Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). (optional)
NSNumber* allowScripts = @true; // Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). (optional)
NSNumber* allowPasswordProtectedFiles = @true; // Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). (optional)
NSString* restrictFileTypes = @"restrictFileTypes_example"; // Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult=false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. (optional)

CMScanApi*apiInstance = [[CMScanApi alloc] init];

// Advanced Scan a file for viruses
[apiInstance scanFileAdvancedWithInputFile:inputFile
              allowExecutables:allowExecutables
              allowInvalidFiles:allowInvalidFiles
              allowScripts:allowScripts
              allowPasswordProtectedFiles:allowPasswordProtectedFiles
              restrictFileTypes:restrictFileTypes
          completionHandler: ^(CMVirusScanAdvancedResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMScanApi->scanFileAdvanced: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **inputFile** | **NSURL***| Input file to perform the operation on. | 
 **allowExecutables** | **NSNumber***| Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). | [optional] 
 **allowInvalidFiles** | **NSNumber***| Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). | [optional] 
 **allowScripts** | **NSNumber***| Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **allowPasswordProtectedFiles** | **NSNumber***| Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). | [optional] 
 **restrictFileTypes** | **NSString***| Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. | [optional] 

### Return type

[**CMVirusScanAdvancedResult***](CMVirusScanAdvancedResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: multipart/form-data
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **scanWebsite**
```objc
-(NSURLSessionTask*) scanWebsiteWithInput: (CMWebsiteScanRequest*) input
        completionHandler: (void (^)(CMWebsiteScanResult* output, NSError* error)) handler;
```

Scan a website for malicious content and threats

Operation includes scanning the content of the URL for various types of malicious content and threats, including viruses and threats (including Phishing).

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMWebsiteScanRequest* input = [[CMWebsiteScanRequest alloc] init]; // 

CMScanApi*apiInstance = [[CMScanApi alloc] init];

// Scan a website for malicious content and threats
[apiInstance scanWebsiteWithInput:input
          completionHandler: ^(CMWebsiteScanResult* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling CMScanApi->scanWebsite: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **input** | [**CMWebsiteScanRequest***](CMWebsiteScanRequest.md)|  | 

### Return type

[**CMWebsiteScanResult***](CMWebsiteScanResult.md)

### Authorization

[Apikey](../README.md#Apikey)

### HTTP request headers

 - **Content-Type**: application/json, text/json, application/xml, text/xml, application/x-www-form-urlencoded
 - **Accept**: application/json, text/json, application/xml, text/xml

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

