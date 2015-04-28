//
//  Character.h
//  piratesGame
//
//  Created by Matt Ariane Clarke on 24/04/2015.
//  Copyright (c) 2015 Ariane Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Armor.h"
#import "Weapon.h"

@interface Character : NSObject

@property (strong, nonatomic) Armor * armor;
@property (strong, nonatomic) Weapon * weapon;
@property(nonatomic) int damage;
@property(nonatomic) int health;

@end
