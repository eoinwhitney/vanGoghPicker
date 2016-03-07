//
//  ENWPoliticans.m
//  VanGoghPicker
//
//  Created by Janet Lustgarten on 3/4/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

#import "ENWPoliticians.h"

@implementation ENWPoliticians

-(instancetype)init {
    self=[self initWithSlogan:@"" dumbIdeas:@[] image:nil name:@""];
    return self;
}




-(instancetype)initWithSlogan:(NSString *)slogan dumbIdeas:(NSArray *)dumbIdeas image:(UIImage *)image name:(NSString *)name {
    self=[super init];
    if (self) {
        _slogan=slogan;
        _dumbIdeas=dumbIdeas;
        _image=image;
        _name=name;
    }
    return self;
}



@end
