//
//  AOFactory.m
//  piratesGame
//
//  Created by Matt Ariane Clarke on 15/04/2015.
//  Copyright (c) 2015 Ariane Oliveira. All rights reserved.
//

#import "AOFactory.h"
#import "Tile.h"

@implementation AOFactory

-(NSArray *)tiles
{
    Tile *tile1 = [[Tile alloc]init];
    tile1.story = @"1 Captain, we need a fearless leader such as you to undertake a voyage. You must stop the evil pirate Boss before he steals any more plunder. Would you like a blunted sword to get started?";
    tile1.backgroudImage= [UIImage imageNamed:@"one.jpg"];
    Weapon * bluntedWeapon = [[Weapon alloc ]init ];
    bluntedWeapon.name = @"Blunted Sword";
    bluntedWeapon.damage = 12;
    tile1.weapon = bluntedWeapon;
    tile1.buttonName = @"Take the Sword";
    
    
    
    Tile *tile2 = [[Tile alloc]init];
    tile2.story = @"2 You have come across an armory. Would you like to upgrade your armor to steel armor?";
    tile2.backgroudImage= [UIImage imageNamed:@"two.jpg"];
    Armor * steelArmor = [[Armor alloc]init];
    steelArmor.name = @"Steel Armor";
    steelArmor.health = 8;
    tile2.buttonName = @"Take Armor";
    tile2.armor = steelArmor;
    
    
    
    Tile *tile3 = [[Tile alloc]init];
    tile3.story = @"3 A mysterious dock appears on the horizon. Should we stop and ask for directions?";
    tile3.backgroudImage= [UIImage imageNamed:@"three.jpg"];
    tile3.healthEffect = 12;
    tile3.buttonName=@"Stop at the Dock";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc]init ];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    
    Tile *tile4 = [[Tile alloc]init];
    tile4.story = @"4 You have found a parrot can be used in your armor slot! Parrots are a great defender and are fiercly loyal to their captain.";
    tile4.backgroudImage= [UIImage imageNamed:@"four.jpg"];
    Armor *parrotArmor = [[Armor alloc]init];
    parrotArmor.health = 20;
    parrotArmor.name= @"Parrot";
    tile4.buttonName= @"Adopt Parrot";
    
    Tile *tile5 = [[Tile alloc]init];
    tile5.story = @"5 You have stumbled upon a cache of pirate weapons. Would you like to upgrade to a pistol?";
    tile5.backgroudImage= [UIImage imageNamed:@"five.jpg"];
    Weapon * pistolWeapon = [[Weapon alloc]init];
    pistolWeapon.name = @"Pistol";
    pistolWeapon.damage = 17;
    tile5.buttonName = @"Use pistol";
    
    Tile *tile6 = [[Tile alloc]init];
    tile6.story = @"6 You have been captured by pirates and are ordered to walk the plank";
    tile6.backgroudImage= [UIImage imageNamed:@"six.jpg"];
    tile6.healthEffect = -22;
    tile6.buttonName= @"Show no fear";
    
 
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc]init ];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    
    Tile *tile7 = [[Tile alloc]init];
    tile7.story = @"7 You sight a pirate battle off the coast";
    tile7.backgroudImage= [UIImage imageNamed:@"seven.jpg"];
    tile7.healthEffect = 8;
    tile7.buttonName = @"Fight those scum";
    
    Tile *tile8 = [[Tile alloc]init];
    tile8.story = @"8 The legend of the deep, the mighty kraken appears";
    tile8.backgroudImage= [UIImage imageNamed:@"eight.jpg"];
    tile8.healthEffect = -46;
    tile8.buttonName = @"Abandon ship";
    
    Tile *tile9 = [[Tile alloc]init];
    tile9.story = @"9 You stumble upon a hidden cave of pirate treasurer";
    tile9.backgroudImage= [UIImage imageNamed:@"nine.jpg"];
    tile9.healthEffect = 20;
    tile9.buttonName = @"Take treasurer";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]init ];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    Tile *tile10 = [[Tile alloc]init];
    tile10.story = @"10 A group of pirates attempts to board your ship";
    tile10.backgroudImage= [UIImage imageNamed:@"ten.jpg"];
    tile10.healthEffect = -15;
    tile10.buttonName = @"Repel the invaders";
    
    Tile *tile11 = [[Tile alloc]init];
    tile11.story = @"11 In the deep of the sea many things live and many things can be found. Will the fortune bring help or ruin?";
    tile11.backgroudImage= [UIImage imageNamed:@"eleven.jpg"];
    tile11.healthEffect = -7;
    tile11.buttonName = @"Swim Deeper";
    
    Tile *tile12 = [[Tile alloc]init];
    tile12.story = @"12 Your final faceoff with the fearsome pirate boss";
    tile12.backgroudImage= [UIImage imageNamed:@"twelve.jpg"];
    tile12.healthEffect= -15;
    tile12.buttonName= @"Fight";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc]init ];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    
    NSArray *tiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

-(Character *) character
{
    Character * character = [[Character alloc]init];
    
    character.health = 100;
    Armor * armor = [[Armor alloc]init];
    armor.name = @"Cloak";
    armor.health = 5;
    character.armor =armor;
    
    Weapon * weapon = [[Weapon alloc]init];
    weapon.name = @"firsts";
    weapon.damage = 10 ;
    
    character.weapon = weapon;
    
    
    return character;
}


-(Boss*) boss
{
    Boss * boss = [[Boss alloc]init];
    boss.health = 65;
    
    return boss;
    
}

@end
