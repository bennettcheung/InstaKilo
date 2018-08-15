//
//  Photo.m
//  InstaKilo
//
//  Created by Bennett on 2018-08-15.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "Photo.h"

@implementation Photo

-(instancetype)initWithImageName:(NSString*)name subject:(NSString*)subject location:(NSString*)location{
    self = [super init];
    if (self) {
        _imageName = name;
        _subject = subject;
        _location = location;
    }
    return self;
    
}

- (instancetype)init
{
    return [self initWithImageName:@"Name" subject:@"Subject" location:@"Location"];
}
@end
