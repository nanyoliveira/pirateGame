//
//  ViewController.h
//  piratesGame
//
//  Created by Matt Ariane Clarke on 14/04/2015.
//  Copyright (c) 2015 Ariane Oliveira. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "Character.h"
#import "Boss.h"

@interface ViewController : UIViewController

//iVars
@property (nonatomic) CGPoint currentPoint;
@property (strong, nonatomic) NSArray * tiles;
@property(strong, nonatomic) Character *character;
@property(strong, nonatomic) Boss *boss;

//IBOutlets

@property (weak, nonatomic) IBOutlet UIImageView *backgroundImageView;

@property (weak, nonatomic) IBOutlet UILabel *healthLabel;
@property (weak, nonatomic) IBOutlet UILabel *damageLabel;
@property (weak, nonatomic) IBOutlet UILabel *weaponLabel;
@property (weak, nonatomic) IBOutlet UILabel *armorLabel;
@property (weak, nonatomic) IBOutlet UILabel *storyLabel;
@property (weak, nonatomic) IBOutlet UIButton *actionButton;
@property (weak, nonatomic) IBOutlet UIButton *northButton;
@property (weak, nonatomic) IBOutlet UIButton *westButton;
@property (weak, nonatomic) IBOutlet UIButton *southButton;
@property (weak, nonatomic) IBOutlet UIButton *eastButton;


//IBActions


- (IBAction)actionButtonPressed:(UIButton *)sender;
- (IBAction)northButtonPressed:(UIButton *)sender;
- (IBAction)westButtonPressed:(UIButton *)sender;
- (IBAction)southButtonPressed:(UIButton *)sender;
- (IBAction)eastButtonPressed:(UIButton *)sender;
- (IBAction)resetGameButton:(UIButton *)sender;


@end

