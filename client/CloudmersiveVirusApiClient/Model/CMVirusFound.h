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





@protocol CMVirusFound
@end

@interface CMVirusFound : CMObject

/* Name of the file containing the virus [optional]
 */
@property(nonatomic) NSString* fileName;
/* Name of the virus that was found [optional]
 */
@property(nonatomic) NSString* virusName;

@end