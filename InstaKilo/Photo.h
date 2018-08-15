//
//  Photo.h
//  InstaKilo
//
//  Created by Bennett on 2018-08-15.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Photo : NSObject
@property (nonatomic, strong) NSString *imageName;
@property (nonatomic, strong) NSString *subject;
@property (nonatomic, strong) NSString *location;


-(instancetype)initWithImageName:(NSString*)name subject:(NSString*)subject location:(NSStrnig*)location;
@end
