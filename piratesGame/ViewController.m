//
//  ViewController.m
//  piratesGame
//
//  Created by Matt Ariane Clarke on 14/04/2015.
//  Copyright (c) 2015 Ariane Oliveira. All rights reserved.
//

#import "ViewController.h"
#import "AOFactory.h"
#import "Tile.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    AOFactory * factory = [[AOFactory alloc]init];
    self.tiles = [factory tiles];
    self.character =    [factory character];
    self.boss = [ factory boss];
    self.currentPoint = CGPointMake(0, 0);
    
    [self updateCharacterStatesForArmor:nil withWeapon:nil withHealthEffect:0];
    
    [self updateTile];
    [self updateButtons];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)actionButtonPressed:(UIButton *)sender {
    
    Tile * tile = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y];
    if(tile.healthEffect == -15)
    {
        self.boss.health = self.boss.health - self.character.damage;
    }
    
    if(self.character.health <= 0)
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Death Message" message:@"you have died, please restart the game!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil ];
        [alert show];
    }else if(self.boss.health <= 0)
    {
        UIAlertView * alert = [[UIAlertView alloc]initWithTitle:@"Victory Message" message:@"you have defeated the evil pirate boss!" delegate:nil cancelButtonTitle:@"Ok" otherButtonTitles: nil ];
        [alert show];
    }
    
    
    [self updateCharacterStatesForArmor:tile.armor withWeapon:tile.weapon withHealthEffect:tile.healthEffect];
    [self updateTile];
    
}

- (IBAction)northButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y +1);
    [self updateButtons];
    [self updateTile];
    
}

- (IBAction)westButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x -1, self.currentPoint.y);

    [self updateButtons];
    [self updateTile];
}

- (IBAction)southButtonPressed:(UIButton *)sender {
    self.currentPoint = CGPointMake(self.currentPoint.x, self.currentPoint.y -1);
    
    [self updateButtons];
    [self updateTile];
}

- (IBAction)eastButtonPressed:(UIButton *)sender {
    
    self.currentPoint = CGPointMake(self.currentPoint.x +1, self.currentPoint.y);
    
    [self updateButtons];
    [self updateTile];
}

- (IBAction)resetGameButton:(UIButton *)sender {
    self.character = nil;
    self.boss = nil;
    [self viewDidLoad];
    
}


-(void)updateTile
{
    Tile * tileModel = [[self.tiles objectAtIndex:self.currentPoint.x] objectAtIndex:self.currentPoint.y ];
    self.storyLabel.text = tileModel.story;
    self.backgroundImageView.image = tileModel.backgroudImage;
    self.healthLabel.text = [NSString stringWithFormat:@" %i", self.character.health];
    self.damageLabel.text = [NSString stringWithFormat:@" %i", self.character.damage];
    self.armorLabel.text = self.character.armor.name;
    self.weaponLabel.text = self.character.weapon.name;
    [self.actionButton setTitle:tileModel.buttonName forState:UIControlStateNormal];
}

-(void)updateButtons
{
    self.westButton.hidden= [self tileExistsAtPoint:CGPointMake(self.currentPoint.x - 1, self.currentPoint.y )];
    self.eastButton.hidden =  [self tileExistsAtPoint:CGPointMake(self.currentPoint.x + 1, self.currentPoint.y )];
    self.northButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x , self.currentPoint.y + 1 )];
    self.southButton.hidden = [self tileExistsAtPoint:CGPointMake(self.currentPoint.x , self.currentPoint.y - 1 )];

}


-(BOOL)tileExistsAtPoint:(CGPoint)point
{
    if(point.y >= 0 &&
       point.x >=0  &&
       point.x < [self.tiles count] &&
       point.y <[[self.tiles objectAtIndex:point.x] count])
    {
        return NO;
    }
    else
    {
    return YES;
    }

}


-(void)updateCharacterStatesForArmor:(Armor *)armor withWeapon:(Weapon *) weapon withHealthEffect: (int) healthEffect
{
    if(armor != nil)
    {
        self.character.health = self.character.health - self.character.armor.health + armor.health;
        self.character.armor = armor;
    }
    else if(weapon != nil)
    {
        self.character.damage = self.character.damage - self.character.weapon.damage + weapon.damage;
        self.character.weapon = weapon;
    }
    else if(healthEffect != 0)
    {
        self.character.health = self.character.health + healthEffect;
    }
    else{
        self.character.health = self.character.health + self.character.armor.health;
        self.character.damage = self.character.damage + self.character.weapon.damage;
    }
}

@end
