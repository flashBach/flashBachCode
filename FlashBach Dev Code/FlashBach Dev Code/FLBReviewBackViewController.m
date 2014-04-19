//
//  FLBCardResultViewController.m
//  FlashBach Dev Code
//
//  Created by CS121 on 3/6/14.
//  Copyright (c) 2014 CS121. All rights reserved.
//

#import "FLBReviewBackViewController.h"

@implementation FLBReviewBackViewController

@synthesize cardKeys;


- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];

    return self;
}

// In a story board-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender
{
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
    if([[segue identifier] isEqualToString:@"ReviewToEdit"])
    {
        FLBAddCardViewController *detailViewController = [segue destinationViewController];
        
        // TODO update the current cardID whenever entering review.
        // TODO once there is a cardID member present, uncomment the following line the edit card button should work
        //detailViewController.cardID = cardID;
    }
}

- (void)viewDidLoad
{
    [super viewDidLoad];

    [self addButtonBorders];
}

- (void) addButtonBorders
{
    _buttonEasy.layer.borderWidth = 0.7f;
    _buttonEasy.layer.borderColor = [[UIColor greenColor]CGColor];
    _buttonEasy.layer.cornerRadius = 7;
    
    _buttonNormal.layer.borderWidth = 0.7f;
    _buttonNormal.layer.borderColor = [[UIColor blueColor]CGColor];
    _buttonNormal.layer.cornerRadius = 7;
    
    _buttonHard.layer.borderWidth = 0.7f;
    _buttonHard.layer.borderColor = [[UIColor redColor]CGColor];
    _buttonHard.layer.cornerRadius = 7;
    
    _buttonEditCard.layer.borderWidth = 0.7f;
    _buttonEditCard.layer.borderColor = [[UIColor blueColor]CGColor];
    _buttonEditCard.layer.cornerRadius = 7;
}

@end
