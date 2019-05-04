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





@protocol CMWebsiteScanRequest
@end

@interface CMWebsiteScanRequest : CMObject

/* URL of the website to scan; should begin with http:// or https:// [optional]
 */
@property(nonatomic) NSString* url;

@end
