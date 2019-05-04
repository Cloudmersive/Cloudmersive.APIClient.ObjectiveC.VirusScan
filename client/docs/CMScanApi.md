# CMScanApi

All URIs are relative to *https://api.cloudmersive.com*

Method | HTTP request | Description
------------- | ------------- | -------------
[**scanFile**](CMScanApi.md#scanfile) | **POST** /virus/scan/file | Scan a file for viruses
[**scanWebsite**](CMScanApi.md#scanwebsite) | **POST** /virus/scan/website | Scan a website for malicious content including viruses and threats (including Phishing)


# **scanFile**
```objc
-(NSURLSessionTask*) scanFileWithInputFile: (NSURL*) inputFile
        completionHandler: (void (^)(CMVirusScanResult* output, NSError* error)) handler;
```

Scan a file for viruses

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

# **scanWebsite**
```objc
-(NSURLSessionTask*) scanWebsiteWithInput: (CMWebsiteScanRequest*) input
        completionHandler: (void (^)(CMWebsiteScanResult* output, NSError* error)) handler;
```

Scan a website for malicious content including viruses and threats (including Phishing)

### Example 
```objc
CMDefaultConfiguration *apiConfig = [CMDefaultConfiguration sharedConfig];

// Configure API key authorization: (authentication scheme: Apikey)
[apiConfig setApiKey:@"YOUR_API_KEY" forApiKeyIdentifier:@"Apikey"];
// Uncomment below to setup prefix (e.g. Bearer) for API key, if needed
//[apiConfig setApiKeyPrefix:@"Bearer" forApiKeyIdentifier:@"Apikey"];


CMWebsiteScanRequest* input = [[CMWebsiteScanRequest alloc] init]; // 

CMScanApi*apiInstance = [[CMScanApi alloc] init];

// Scan a website for malicious content including viruses and threats (including Phishing)
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

