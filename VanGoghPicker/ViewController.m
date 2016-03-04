//
//  ViewController.m
//  VanGoghPicker
//
//  Created by Rosario Tarabocchia on 3/3/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

#import "ViewController.h"

@interface ViewController () <UIPickerViewDelegate>
@property (weak, nonatomic) IBOutlet UIPickerView *vanGoghPicker;
@property (nonatomic, strong) NSMutableArray *pictureArray;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.pictureArray = [NSMutableArray new];
    
//    UIImage *slice1 = [UIImage imageNamed:@"slice1"];
//    UIImage *slice2 = [UIImage imageNamed:@"slice2"];
//    UIImage *slice3 = [UIImage imageNamed:@"slice3"];
//    UIImage *slice4 = [UIImage imageNamed:@"slice4"];
//    UIImage *slice5 = [UIImage imageNamed:@"slice5"];
//    UIImage *slice6 = [UIImage imageNamed:@"slice6"];
//    UIImage *slice7 = [UIImage imageNamed:@"slice7"];
//    UIImage *slice8 = [UIImage imageNamed:@"slice8"];
//    UIImage *slice9 = [UIImage imageNamed:@"slice9"];
//    UIImage *slice10 = [UIImage imageNamed:@"slice10"];
//    UIImage *slice11 = [UIImage imageNamed:@"slice11"];
//    UIImage *slice12 = [UIImage imageNamed:@"slice12"];
//    UIImage *slice13 = [UIImage imageNamed:@"slice13"];
//    UIImage *slice14 = [UIImage imageNamed:@"slice14"];
//    UIImage *slice15 = [UIImage imageNamed:@"slice15"];
//    UIImage *slice16 = [UIImage imageNamed:@"slice16"];
//    UIImage *slice17 = [UIImage imageNamed:@"slice17"];
//    
//    self.pictureArray = @[slice1, slice2, slice3, slice4, slice5, slice6, slice7, slice8, slice9, slice10, slice11, slice12, slice13, slice14, slice15, slice16, slice17, slice16, slice15, slice14, slice13, slice12, slice11, slice10, slice9, slice8, slice7, slice6, slice5, slice4, slice3, slice2];
    
    self.pictureArray = [NSMutableArray arrayWithObjects:[UIImage imageNamed:@"Slice1.png"], [UIImage imageNamed:@"Slice2"],[UIImage imageNamed:@"Slice3"],[UIImage imageNamed:@"Slice4"],[UIImage imageNamed:@"Slice5"],[UIImage imageNamed:@"Slice6"],[UIImage imageNamed:@"Slice7"],[UIImage imageNamed:@"Slice8"],[UIImage imageNamed:@"Slice9"],[UIImage imageNamed:@"Slice10"],[UIImage imageNamed:@"Slice11"],[UIImage imageNamed:@"Slice12"],[UIImage imageNamed:@"Slice13"],[UIImage imageNamed:@"Slice14"],[UIImage imageNamed:@"Slice15"],[UIImage imageNamed:@"Slice16"],[UIImage imageNamed:@"Slice17"], nil];
    
    self.vanGoghPicker.backgroundColor = [UIColor colorWithWhite:0.0 alpha:0.0];
    
    // Do any additional setup after loading the view, typically from a nib.
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

- (CGFloat)pickerView:(UIPickerView *)pickerView rowHeightForComponent:(NSInteger)component {

    return 49;
}

@end
