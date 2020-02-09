#import <Foundation/Foundation.h>
#import "CMObject.h"

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


#import "CMVirusFound.h"
@protocol CMVirusFound;
@class CMVirusFound;



@protocol CMVirusScanAdvancedResult
@end

@interface CMVirusScanAdvancedResult : CMObject

/* True if the scan contained no viruses, false otherwise [optional]
 */
@property(nonatomic) NSNumber* cleanResult;
/* True if the scan contained an executable (application code), which can be a significant risk factor [optional]
 */
@property(nonatomic) NSNumber* containsExecutable;
/* True if the scan contained an invalid file (such as a PDF that is not a valid PDF, Word Document that is not a valid Word Document, etc.), which can be a significant risk factor [optional]
 */
@property(nonatomic) NSNumber* containsInvalidFile;
/* True if the scan contained a script (such as a PHP script, Python script, etc.) which can be a significant risk factor [optional]
 */
@property(nonatomic) NSNumber* containsScript;
/* True if the uploaded file is of a type that is not allowed based on the optional restrictFileTypes parameter, false otherwise; if restrictFileTypes is not set, this will always be false [optional]
 */
@property(nonatomic) NSNumber* containsRestrictedFileFormat;
/* For file format verification-supported file formats, the contents-verified file format of the file.  Null indicates that the file format is not supported for contents verification.  If a Virus or Malware is found, this field will always be set to Null. [optional]
 */
@property(nonatomic) NSString* verifiedFileFormat;
/* Array of viruses found, if any [optional]
 */
@property(nonatomic) NSArray<CMVirusFound>* foundViruses;

@end
