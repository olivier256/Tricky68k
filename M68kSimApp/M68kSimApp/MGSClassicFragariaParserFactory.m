#import "MGSClassicFragariaParserFactory.h"

@implementation MGSClassicFragariaParserFactory

+ (instancetype)sharedInstance {
    static MGSClassicFragariaParserFactory *shared = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        shared = [[self alloc] init];
    });
    return shared;
}

@end

