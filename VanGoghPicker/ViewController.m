//
//  ViewController.m
//  VanGoghPicker
//
//  Created by Rosario Tarabocchia on 3/3/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

#import "ViewController.h"
#import "politicianViewController.h"


@interface ViewController () <UIPickerViewDelegate, UIAlertViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *vanGoghPicker;
@property (nonatomic, strong) NSMutableArray *pictureArray;
@property (strong, nonatomic) ENWPoliticians *politicians;
@property (strong, nonatomic) NSMutableArray *politiciansArray;
@property (nonatomic) BOOL isEoin;
@property (nonatomic) BOOL isCruz;
@property (nonatomic) BOOL isTrump;
@property (nonatomic) BOOL isRubio;



@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.isEoin=NO;
    self.isCruz=NO;
    self.isTrump=NO;
    self.isRubio=NO;
    
    
    
    
    
    self.pictureArray = [NSMutableArray new];
   
    
   ENWPoliticians *eoin=[[ENWPoliticians alloc]initWithSlogan:@"Everybody chill!" dumbIdeas:@[@"everybody gets to go to college",@"everybody gets health care",@"the United States will not go into any more wars",@"free booze for everybody on saturdays",@"no more campaign contributions"] image:[UIImage imageNamed:@"eoin.jpg"] name:@"Eoin Whitney"];
    
    ENWPoliticians *cruz=[[ENWPoliticians alloc]initWithSlogan:@"reigniting the promise of america" dumbIdeas:@[@"the moon might be as intimidating as obamacare",@"i was bitten by an octopus",@"twenty years from now if there is some obscure trivial pursuit question, I am confident I will be the answer",@"I'll work with the martians",@"the obama economy is a disaster, obamacare is a trainwreck, and obama-clinton foreign policy of leading from behind-the whole world is on fire",@"i am a lizard person"] image:[UIImage imageNamed:@"cruz.jpg"] name:@"Ted Cruz"];
    
    ENWPoliticians *trump=[[ENWPoliticians alloc]initWithSlogan:@"make america great again" dumbIdeas:@[@"build a wall",@"deport 11 million people",@"stop muslims from entering the country",@"bring the kkk to prominence",@"restrict freedom of the press"] image:[UIImage imageNamed:@"trump.jpg"] name:@"Donald Trump"];
    
    ENWPoliticians *rubio=[[ENWPoliticians alloc]initWithSlogan:@"a new american century" dumbIdeas:@[@"america is not a planet",@"the decisions that the left want us to make.... will make america a more expensive place to create jobs",@"our nations motto is 'in god we trust,'reminding us that faith in our creator is the most important american value of all",@"no abortions even in case of rape, incest, or life of mother",@"im sweaty"] image:[UIImage imageNamed:@"rubio.jpg"] name:@"Marco Rubio"];
    
    self.politiciansArray=[@[eoin,cruz,rubio,trump]mutableCopy];
    
    
    
    self.pictureArray = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"eoin.jpg"],[UIImage imageNamed:@"trump.jpg"],[UIImage imageNamed:@"cruz.jpg"],[UIImage imageNamed:@"rubio.jpg"], nil];
    
    self.vanGoghPicker.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.0];
    
    // Do any additional setup after loading the view, typically from a nib.
}

- (IBAction)eoinButtonTapped:(id)sender {
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (NSInteger)numberOfComponentsInPickerView:(UIPickerView *)pickerView
{
    return 1;
;
}


- (NSInteger)pickerView:(UIPickerView *)pickerView numberOfRowsInComponent: (NSInteger)component
{
    return 10000;
    
}


-(UIView *)pickerView:(UIPickerView *)pickerView viewForRow:(NSInteger)row forComponent:(NSInteger)component reusingView:(UIView *)view


{
    row = row % self.pictureArray.count;
    
    
    UIImageView *pvView = [[UIImageView alloc] initWithImage:self.pictureArray[row]];
    
    
    return pvView;
    
}
- (IBAction)feelingLuckyButtonTapped:(id)sender {
    NSUInteger random=arc4random_uniform(1000);
    
    
    [self.vanGoghPicker selectRow:random inComponent:0 animated:YES];
    
    
     UIAlertController * alert=[UIAlertController alertControllerWithTitle:@"Your Candidate" message:@"Do You Want This One?" preferredStyle:UIAlertControllerStyleAlert];
    
    UIAlertAction *ok=[UIAlertAction actionWithTitle:@"YES" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        
        if (random%4==0) {
        [self performSegueWithIdentifier:@"eoinSegue" sender:self];
        }
        else if (random%4==1) {
         [self performSegueWithIdentifier:@"trumpSegue" sender:self];
        }
        else if (random%4==2) {
          [self performSegueWithIdentifier:@"cruzSegue" sender:self];
        }
        else if (random%4==3) {
             [self performSegueWithIdentifier:@"rubioSegue" sender:self];
        }
    }];
    [alert addAction:ok];
    
    UIAlertAction *no=[UIAlertAction actionWithTitle:@"NO" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [alert dismissViewControllerAnimated:YES completion:nil];
    }];
    [alert addAction:no];
    
    UIAlertAction *spinAgain=[UIAlertAction actionWithTitle:@"spinAgain" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
        [self feelingLuckyButtonTapped:nil];
        [alert dismissViewControllerAnimated:YES completion:nil];
        
        
        
        
    }];
    [alert addAction:spinAgain];
    
     [self presentViewController:alert animated:YES completion:nil];
}

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {

    return 75;
}

-(void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    if ([[segue identifier] isEqualToString:@"eoinSegue"]) {
        politicianViewController *vc= [segue destinationViewController];
        vc.politician=self.politiciansArray[0];
        
    }
    if ([[segue identifier] isEqualToString:@"trumpSegue"]) {
        politicianViewController *vc= [segue destinationViewController];
        vc.politician=self.politiciansArray[3];
    
}
    if ([[segue identifier] isEqualToString:@"cruzSegue"]) {
        politicianViewController *vc= [segue destinationViewController];
        vc.politician=self.politiciansArray[1];
}
    if ([[segue identifier] isEqualToString:@"rubioSegue"]) {
        politicianViewController *vc= [segue destinationViewController];
        vc.politician=self.politiciansArray[2];
    }
}
@end
