//
//  ENWLastViewController.m
//  VanGoghPicker
//
//  Created by Janet Lustgarten on 3/7/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

#import "ENWLastViewController.h"



@interface ENWLastViewController ()
@property (weak, nonatomic) IBOutlet UILabel *label;
@property (weak, nonatomic) IBOutlet UIButton *fineButton;

@end

@implementation ENWLastViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    if ([self.politician.name isEqualToString:@"Donald Trump"]||[self.politician.name isEqualToString:@"Ted Cruz"]||[self.politician.name isEqualToString:@"Marco Rubio"]) {
        
        self.label.text= [NSString stringWithFormat:@"YOU IDIOT"];
    }
    else {
        self.label.text=[NSString stringWithFormat:@"GOOD CHOICE"];
        self.fineButton.titleLabel.text=[NSString stringWithFormat:@"OH BOY"];
    }
    // Do any additional setup after loading the view.
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)fineButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
