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
    tile1.story = @"story 1";
    
    Tile *tile2 = [[Tile alloc]init];
    tile2.story = @"story 2";
    
    Tile *tile3 = [[Tile alloc]init];
    tile3.story = @"story 3";
    
    NSMutableArray *firstColumn = [[NSMutableArray alloc]init ];
    [firstColumn addObject:tile1];
    [firstColumn addObject:tile2];
    [firstColumn addObject:tile3];
    
    
    Tile *tile4 = [[Tile alloc]init];
    tile4.story = @"story 4";
    
    Tile *tile5 = [[Tile alloc]init];
    tile5.story = @"story 5";
    
    Tile *tile6 = [[Tile alloc]init];
    tile6.story = @"story 6";
 
    
    NSMutableArray *secondColumn = [[NSMutableArray alloc]init ];
    [secondColumn addObject:tile4];
    [secondColumn addObject:tile5];
    [secondColumn addObject:tile6];
    
    
    Tile *tile7 = [[Tile alloc]init];
    tile7.story = @"story 7";
    
    Tile *tile8 = [[Tile alloc]init];
    tile8.story = @"story 8";
    
    Tile *tile9 = [[Tile alloc]init];
    tile9.story = @"story 9";
    
    NSMutableArray *thirdColumn = [[NSMutableArray alloc]init ];
    [thirdColumn addObject:tile7];
    [thirdColumn addObject:tile8];
    [thirdColumn addObject:tile9];
    
    
    Tile *tile10 = [[Tile alloc]init];
    tile10.story = @"story 10";
    
    Tile *tile11 = [[Tile alloc]init];
    tile11.story = @"story 11";
    
    Tile *tile12 = [[Tile alloc]init];
    tile12.story = @"story 12";
    
    NSMutableArray *fourthColumn = [[NSMutableArray alloc]init ];
    [fourthColumn addObject:tile10];
    [fourthColumn addObject:tile11];
    [fourthColumn addObject:tile12];
    
    
    NSArray *tiles = [[NSArray alloc]initWithObjects:firstColumn, secondColumn, thirdColumn, fourthColumn, nil];
    
    return tiles;
}

@end
