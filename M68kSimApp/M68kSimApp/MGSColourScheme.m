//
//  MGSColourScheme.m
//  Tricky68k
//

#import "MGSColourScheme.h"

@implementation MGSColourScheme

+ (BOOL)supportsSecureCoding {
    return YES;
}

- (instancetype)initWithPropertyList:(NSDictionary *)plist error:(NSError **)error {
    self = [super init];
    if (self) {
        _name = plist[@"name"] ?: @"Untitled";
        _settings = plist ?: @{};
    }
    return self;
}

- (NSDictionary *)propertyListRepresentation {
    NSMutableDictionary *plist = [NSMutableDictionary dictionaryWithDictionary:self.settings];
    plist[@"name"] = self.name ?: @"Untitled";
    return plist;
}

- (id)copyWithZone:(NSZone *)zone {
    MGSColourScheme *copy = [[[self class] allocWithZone:zone] init];
    copy.name = [self.name copy];
    copy.settings = [self.settings copy];
    return copy;
}

- (void)encodeWithCoder:(NSCoder *)coder {
    [coder encodeObject:self.name forKey:@"name"];
    [coder encodeObject:self.settings forKey:@"settings"];
}

- (instancetype)initWithCoder:(NSCoder *)coder {
    self = [super init];
    if (self) {
        _name = [coder decodeObjectOfClass:[NSString class] forKey:@"name"];
        _settings = [coder decodeObjectOfClass:[NSDictionary class] forKey:@"settings"];
    }
    return self;
}

- (instancetype)initWithSchemeFileURL:(NSURL *)url error:(NSError **)error {
    self = [super init];
    if (self) {
        // Charge un plist s’il existe, sinon ignore
        if (url) {
            NSDictionary *dict = [NSDictionary dictionaryWithContentsOfURL:url];
            if (dict) {
                // vous pourriez mapper les couleurs ici
            }
        }
    }
    return self;
}

@end
