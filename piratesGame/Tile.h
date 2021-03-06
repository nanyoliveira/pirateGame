//
//  CCTile.h
//  piratesGame
//
//  Created by Matt Ariane Clarke on 15/04/2015.
//  Copyright (c) 2015 Ariane Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Weapon.h"
#import "Armor.h"


@interface Tile : NSObject

@property(strong, nonatomic) NSString * story;
@property(strong, nonatomic) UIImage  * backgroudImage;
@property(strong, nonatomic) NSString * buttonName;
@property (strong, nonatomic) Weapon * weapon;
@property (strong, nonatomic) Armor * armor;
@property (nonatomic) int healthEffect;

@end
