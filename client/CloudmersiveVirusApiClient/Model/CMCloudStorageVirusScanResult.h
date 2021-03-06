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


#import "CMCloudStorageVirusFound.h"
@protocol CMCloudStorageVirusFound;
@class CMCloudStorageVirusFound;



@protocol CMCloudStorageVirusScanResult
@end

@interface CMCloudStorageVirusScanResult : CMObject

/* True if the operation of retrieving the file, and scanning it were successfully completed, false if the file could not be downloaded from cloud storage, or if the file could not be scanned.  Note that successful completion does not mean the file is clean; for the output of the virus scanning operation itself, use the CleanResult and FoundViruses parameters. [optional]
 */
@property(nonatomic) NSNumber* successful;
/* True if the scan contained no viruses, false otherwise [optional]
 */
@property(nonatomic) NSNumber* cleanResult;
/* Array of viruses found, if any [optional]
 */
@property(nonatomic) NSArray<CMCloudStorageVirusFound>* foundViruses;
/* Detailed error message if the operation was not successful [optional]
 */
@property(nonatomic) NSString* errorDetailedDescription;
/* Size in bytes of the file that was retrieved and scanned [optional]
 */
@property(nonatomic) NSNumber* fileSize;

@end
