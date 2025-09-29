#import "MGSFragaria+Breakpoints.h"
#import <objc/runtime.h>

static const void *kBreakpointDelegateKey = &kBreakpointDelegateKey;

@implementation MGSFragaria (Breakpoints)

- (void)setBreakpointDelegate:(id<MGSBreakpointDelegate>)delegate {
    objc_setAssociatedObject(self, kBreakpointDelegateKey, delegate, OBJC_ASSOCIATION_ASSIGN);
}

- (id<MGSBreakpointDelegate>)breakpointDelegate {
    return objc_getAssociatedObject(self, kBreakpointDelegateKey);
}

- (void)reloadBreakpointData {
    // Stub : votre logique pourra être ajoutée plus tard
    NSLog(@"reloadBreakpointData called (stub)");
}

@end

