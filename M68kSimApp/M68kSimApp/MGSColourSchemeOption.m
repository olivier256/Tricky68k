#import "MGSColourSchemeOption.h"
#import "MGSColourScheme.h"

@implementation MGSColourSchemeOption
- (instancetype)initWithName:(NSString *)name scheme:(MGSColourScheme *)scheme {
    self = [super init];
    if (self) {
        _name = [name copy];
        _scheme = scheme;
    }
    return self;
}
@end

