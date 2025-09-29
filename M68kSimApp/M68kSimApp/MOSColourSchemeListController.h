//
//  MOSColourSchemeListController.h
//  Tricky68k
//
//  Created by Daniele Cattaneo on 07/07/2019.
//  Copyright © 2019 Daniele Cattaneo. All rights reserved.
//

#import "MGSColourScheme.h"

NS_ASSUME_NONNULL_BEGIN

@class MGSColourSchemeOption;

@interface MOSColourSchemeListController : NSObject

@property (nonatomic, strong) MGSColourScheme *defaultScheme;
@property (nonatomic, assign) BOOL disableCustomSchemes;

- (NSArray <MGSColourSchemeOption *> *)loadColourSchemes;

@end

NS_ASSUME_NONNULL_END
