// MGSPlistColourSchemeTransformer.m
#import "MGSPlistColourSchemeTransformer.h"
#import "MGSColourScheme.h"

NSString * const MGSMutableColourSchemeFromPlistTransformerName = @"MGSMutableColourSchemeFromPlistTransformerName";

@implementation MGSPlistColourSchemeTransformer

+ (Class)transformedValueClass {
    return [MGSColourScheme class];
}

+ (BOOL)allowsReverseTransformation {
    return YES;
}

- (id)transformedValue:(id)value {
    if (!value) return nil;
    return [[MGSColourScheme alloc] initWithPropertyList:value error:nil];
}

- (id)reverseTransformedValue:(id)value {
    if ([value isKindOfClass:[MGSColourScheme class]]) {
        return [(MGSColourScheme *)value propertyListRepresentation];
    }
    return nil;
}

+ (void)load {
    // Éviter un double enregistrement si rechargé (ex. en tests)
    if (![NSValueTransformer valueTransformerForName:MGSMutableColourSchemeFromPlistTransformerName]) {
        [NSValueTransformer setValueTransformer:[MGSPlistColourSchemeTransformer new]
                                        forName:MGSMutableColourSchemeFromPlistTransformerName];
    }
}

@end

