#import <Foundation/Foundation.h>
@class MGSColourScheme;

@interface MGSColourSchemeOption : NSObject
@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) MGSColourScheme *scheme;
- (instancetype)initWithName:(NSString *)name scheme:(MGSColourScheme *)scheme;
@end

