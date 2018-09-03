#import <Foundation/Foundation.h>

@class CMApiClient;

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


@protocol CMApi <NSObject>

@property(readonly, nonatomic, strong) CMApiClient *apiClient;

-(instancetype) initWithApiClient:(CMApiClient *)apiClient;

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key;
-(NSString*) defaultHeaderForKey:(NSString*)key;

-(NSDictionary *)defaultHeaders;

@end
