#import <Foundation/Foundation.h>
#import "CMObject.h"

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





@protocol CMWebsiteScanResult
@end

@interface CMWebsiteScanResult : CMObject

/* True if the scan contained no threats, false otherwise [optional]
 */
@property(nonatomic) NSNumber* cleanResult;
/* Type of threat returned; can be None, Malware, ForcedDownload or Phishing [optional]
 */
@property(nonatomic) NSString* websiteThreatType;

@end
