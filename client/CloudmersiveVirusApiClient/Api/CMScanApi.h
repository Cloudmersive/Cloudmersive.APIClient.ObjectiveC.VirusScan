#import <Foundation/Foundation.h>
#import "CMVirusScanAdvancedResult.h"
#import "CMVirusScanResult.h"
#import "CMWebsiteScanRequest.h"
#import "CMWebsiteScanResult.h"
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



@interface CMScanApi: NSObject <CMApi>

extern NSString* kCMScanApiErrorDomain;
extern NSInteger kCMScanApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// Scan a file for viruses
/// Scan files and content for viruses. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
///
/// @param inputFile Input file to perform the operation on.
/// 
///  code:200 message:"OK"
///
/// @return CMVirusScanResult*
-(NSURLSessionTask*) scanFileWithInputFile: (NSURL*) inputFile
    completionHandler: (void (^)(CMVirusScanResult* output, NSError* error)) handler;


/// Advanced Scan a file for viruses
/// Advanced Scan files with 360-degree Content Protection across Viruses and Malware, executables, invalid files, scripts, and even restrictions on accepted file types with complete content verification. Customize threat rules to your needs. Leverage continuously updated signatures for millions of threats, and advanced high-performance scanning capabilities.  Over 17 million virus and malware signatures.  Continuous cloud-based updates.  Block threats beyond viruses including executables, scripts, invalid files, and more.  Optionally limit input files to a specific set of file types (e.g. PDF and Word Documents only).  Wide file format support including Office, PDF, HTML, Flash.  Zip support including .Zip, .Rar, .DMG, .Tar, and other archive formats.  Multi-threat scanning across viruses, malware, trojans, ransomware, and spyware.  High-speed in-memory scanning delivers subsecond typical response time.
///
/// @param inputFile Input file to perform the operation on.
/// @param allowExecutables Set to false to block executable files (program code) from being allowed in the input file.  Default is false (recommended). (optional)
/// @param allowInvalidFiles Set to false to block invalid files, such as a PDF file that is not really a valid PDF file, or a Word Document that is not a valid Word Document.  Default is false (recommended). (optional)
/// @param allowScripts Set to false to block script files, such as a PHP files, Python scripts, and other malicious content or security threats that can be embedded in the file.  Set to true to allow these file types.  Default is false (recommended). (optional)
/// @param allowPasswordProtectedFiles Set to false to block password protected and encrypted files, such as encrypted zip and rar files, and other files that seek to circumvent scanning through passwords.  Set to true to allow these file types.  Default is false (recommended). (optional)
/// @param restrictFileTypes Specify a restricted set of file formats to allow as clean as a comma-separated list of file formats, such as .pdf,.docx,.png would allow only PDF, PNG and Word document files.  All files must pass content verification against this list of file formats, if they do not, then the result will be returned as CleanResult&#x3D;false.  Set restrictFileTypes parameter to null or empty string to disable; default is disabled. (optional)
/// 
///  code:200 message:"OK"
///
/// @return CMVirusScanAdvancedResult*
-(NSURLSessionTask*) scanFileAdvancedWithInputFile: (NSURL*) inputFile
    allowExecutables: (NSNumber*) allowExecutables
    allowInvalidFiles: (NSNumber*) allowInvalidFiles
    allowScripts: (NSNumber*) allowScripts
    allowPasswordProtectedFiles: (NSNumber*) allowPasswordProtectedFiles
    restrictFileTypes: (NSString*) restrictFileTypes
    completionHandler: (void (^)(CMVirusScanAdvancedResult* output, NSError* error)) handler;


/// Scan a website for malicious content and threats
/// Operation includes scanning the content of the URL for various types of malicious content and threats, including viruses and threats (including Phishing).
///
/// @param input 
/// 
///  code:200 message:"OK"
///
/// @return CMWebsiteScanResult*
-(NSURLSessionTask*) scanWebsiteWithInput: (CMWebsiteScanRequest*) input
    completionHandler: (void (^)(CMWebsiteScanResult* output, NSError* error)) handler;



@end
