// NSTextView+DetabShim.h
#import <Cocoa/Cocoa.h>

@interface NSTextView (DetabShim)

/// Remplace tous les caractères tabulation par des espaces.
/// @param spaces Nombre d'espaces qui remplacent une tabulation.
- (void)performDetabWithNumberOfSpaces:(NSUInteger)spaces;

@end
