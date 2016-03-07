//
//  ENWPoliticans.h
//  VanGoghPicker
//
//  Created by Janet Lustgarten on 3/4/16.
//  Copyright © 2016 RLDT. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface ENWPoliticians : NSObject

@property (strong, nonatomic) NSString *name;
@property (strong, nonatomic) NSString *slogan;
@property (strong, nonatomic) NSArray *dumbIdeas;
@property (strong, nonatomic) UIImage *image;



-(instancetype)init;

-(instancetype) initWithSlogan:(NSString*)slogan
                     dumbIdeas:(NSArray*)dumbIdeas
                         image:(UIImage*)image
                          name:(NSString*)name;

@end
