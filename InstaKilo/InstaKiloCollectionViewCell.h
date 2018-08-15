//
//  InstaKiloCollectionViewCell.h
//  InstaKilo
//
//  Created by Bennett on 2018-08-15.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface InstaKiloCollectionViewCell : UICollectionViewCell
@property (weak, nonatomic) IBOutlet UILabel *subjectLabel;
@property (weak, nonatomic) IBOutlet UILabel *locationLabel;
@property (weak, nonatomic) IBOutlet UIImageView *photoImageView;

@end
