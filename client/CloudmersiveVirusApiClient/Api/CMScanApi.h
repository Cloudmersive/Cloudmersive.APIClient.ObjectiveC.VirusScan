#import <Foundation/Foundation.h>
#import "CMVirusScanResult.h"
#import "CMApi.h"

/**
* virusapi
* Virus API lets you scan files and content for viruses and identify security issues with content.
*
* OpenAPI spec version: v1
* 
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface CMScanApi: NSObject <CMApi>

extern NSString* kCMScanApiErrorDomain;
extern NSInteger kCMScanApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Scan a file for viruses
/// 
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMVirusScanResult*
-(NSURLSessionTask*) scanFileWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMVirusScanResult* output, NSError* error)) handler;



@end