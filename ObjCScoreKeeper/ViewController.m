//
//  ViewController.m
//  ObjCScoreKeeper
//
//  Created by Garrett Barker on 9/13/17.
//  Copyright © 2017 Garrett Barker. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()
@property (strong, nonatomic) IBOutlet UILabel *team1LBL;
@property (strong, nonatomic) IBOutlet UIStepper *team1stp;
@property (strong, nonatomic) IBOutlet UILabel *team2LBL;
@property (strong, nonatomic) IBOutlet UIStepper *team2stp;

@end

@implementation ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
  
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    [self.view endEditing:YES];
}

- (IBAction)team1Stepper:(UIStepper *)sender {
    NSNumber *stepValue = [NSNumber numberWithDouble:_team1stp.value];
    _team1LBL.text = [stepValue stringValue];
}

- (IBAction)team2Stepper:(UIStepper *)sender {
    NSNumber *stepValue = [NSNumber numberWithDouble:_team2stp.value];
    _team2LBL.text = [stepValue stringValue];
}

- (IBAction)resetBTN:(UIButton *)sender {
    _team1stp.value = 0;
    _team2stp.value = 0;
    _team1LBL.text = @"0";
    _team2LBL.text = @"0";
    
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
