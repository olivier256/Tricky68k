//
//  MGSColourScheme.h
//  Tricky68k
//
//  Minimal stub to replace FragariaDefaultsCoordinator dependency
//

#import <Foundation/Foundation.h>

NS_ASSUME_NONNULL_BEGIN

@interface MGSColourScheme : NSObject <NSCopying, NSSecureCoding>

@property (nonatomic, copy) NSString *name;
@property (nonatomic, strong) NSDictionary<NSString *, id> *settings;

- (instancetype)initWithPropertyList:(NSDictionary *)plist error:(NSError **)error;
- (NSDictionary *)propertyListRepresentation;

- (instancetype)initWithSchemeFileURL:(NSURL *)url error:(NSError **)error;

@end

NS_ASSUME_NONNULL_END
