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



@protocol CMVirusScanResult
@end

@interface CMVirusScanResult : CMObject

/* True if the scan contained no viruses, false otherwise [optional]
 */
@property(nonatomic) NSNumber* cleanResult;
/* Array of viruses found, if any [optional]
 */
@property(nonatomic) NSArray<CMVirusFound>* foundViruses;

@end
