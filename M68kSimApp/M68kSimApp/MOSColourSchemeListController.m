//
//  MOSColourSchemeListController.m
//  Tricky68k
//
//  Created by Daniele Cattaneo on 07/07/2019.
//  Copyright © 2019 Daniele Cattaneo. All rights reserved.
//

#import "MOSColourSchemeListController.h"
#import "MGSColourSchemeOption.h"

@implementation MOSColourSchemeListController

- (void)awakeFromNib
{
  if (!self.defaultScheme) {
    self.defaultScheme = [[MGSColourScheme alloc] init];
  }
}

@synthesize defaultScheme;
@synthesize disableCustomSchemes;

- (NSArray <MGSColourSchemeOption *> *)loadColourSchemes
{
  // Pour l’instant, retournez une liste vide ou vos schémas maison
  return @[];
}

@end
