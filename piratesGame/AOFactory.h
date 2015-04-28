//
//  AOFactory.h
//  piratesGame
//
//  Created by Matt Ariane Clarke on 15/04/2015.
//  Copyright (c) 2015 Ariane Oliveira. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Character.h"
#import "Boss.h"

@interface AOFactory : NSObject

-(NSArray *)tiles;

-(Character *) character;

-(Boss*) boss;


@end
