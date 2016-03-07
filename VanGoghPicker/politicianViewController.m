//
//  politicianViewController.m
//  VanGoghPicker
//
//  Created by Janet Lustgarten on 3/4/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

#import "politicianViewController.h"
#import "ENWLastViewController.h"

@interface politicianViewController ()
@property (weak, nonatomic) IBOutlet UIImageView *image;
@property (weak, nonatomic) IBOutlet UILabel *sloganLabel;
@property (weak, nonatomic) IBOutlet UITextView *quote1;
@property (weak, nonatomic) IBOutlet UITextView *quote2;
@property (weak, nonatomic) IBOutlet UITextView *quote3;
@property (weak, nonatomic) IBOutlet UITextView *quote4;
@property (weak, nonatomic) IBOutlet UITextView *quote5;
@property (weak, nonatomic) IBOutlet UIButton *okayButton;

@end

@implementation politicianViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.okayButton.hidden=NO;
    
    self.image.image=self.politician.image;
    self.sloganLabel.text=self.politician.slogan;
    self.quote1.text=self.politician.dumbIdeas[0];
    self.quote2.text=self.politician.dumbIdeas[1];
    self.quote3.text=self.politician.dumbIdeas[2];
    self.quote4.text=self.politician.dumbIdeas[3];
    self.quote5.text=self.politician.dumbIdeas[4];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)okayButtonTapped:(id)sender {
    [self dismissViewControllerAnimated:YES completion:nil];
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    
    if ([[segue identifier] isEqualToString:@"chooseSegue"]) {
  ENWLastViewController *vc= [segue destinationViewController];
    vc.politician=self.politician;
    }
    
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
