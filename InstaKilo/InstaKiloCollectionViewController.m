//
//  InstaKiloCollectionViewController.m
//  InstaKilo
//
//  Created by Bennett on 2018-08-15.
//  Copyright © 2018 Bennett. All rights reserved.
//

#import "InstaKiloCollectionViewController.h"
#import "Photo.h"
#import "InstaKiloCollectionViewCell.h"

@interface InstaKiloCollectionViewController ()
@property (nonatomic, strong) NSArray <Photo*> *photoArray;
@end

@implementation InstaKiloCollectionViewController

static NSString * const reuseIdentifier = @"Cell";

- (void)viewDidLoad {
    [super viewDidLoad];

    [self setupPhotoArray];
    // Uncomment the following line to preserve selection between presentations
    // self.clearsSelectionOnViewWillAppear = NO;
    
    // Register cell classes
    [self.collectionView registerClass:[UICollectionViewCell class] forCellWithReuseIdentifier:reuseIdentifier];
    
    // Do any additional setup after loading the view.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)setupPhotoArray{
    self.photoArray = @[[[Photo alloc]initWithImageName:@"image1" subject:@"River" location:@"Norway"],
                        [[Photo alloc]initWithImageName:@"image2" subject:@"Lake" location:@"Seattle"],
                        [[Photo alloc]initWithImageName:@"image3" subject:@"Lake" location:@"Portland"],
                        [[Photo alloc]initWithImageName:@"image4" subject:@"Meadows" location:@"Banff"],
                        [[Photo alloc]initWithImageName:@"image5" subject:@"River" location:@"Crotia"],
                        [[Photo alloc]initWithImageName:@"image6" subject:@"Mountain" location:@"Hawaii"],
                        [[Photo alloc]initWithImageName:@"image7" subject:@"Mountain" location:@"Peru"],
                        [[Photo alloc]initWithImageName:@"image8" subject:@"Waterfall" location:@"New Zealand"],
                        [[Photo alloc]initWithImageName:@"image9" subject:@"Glacier" location:@"Argentina"],
                        [[Photo alloc]initWithImageName:@"image10" subject:@"Lake" location:@"Whistler"]
                        ];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

#pragma mark <UICollectionViewDataSource>



- (NSInteger)collectionView:(UICollectionView *)collectionView numberOfItemsInSection:(NSInteger)section {
    return [self.photoArray count];
}

- (UICollectionViewCell *)collectionView:(UICollectionView *)collectionView cellForItemAtIndexPath:(NSIndexPath *)indexPath {
    InstaKiloCollectionViewCell *cell = (InstaKiloCollectionViewCell*)[collectionView dequeueReusableCellWithReuseIdentifier:@"photocell" forIndexPath:indexPath];
    
    Photo* photo = self.photoArray[indexPath.item];
    // Configure the cell
    [cell.photoImageView setImage: [UIImage imageNamed:photo.imageName]];
    cell.subjectLabel.text = photo.subject;
    cell.locationLabel.text = photo.location;
    
    return cell;
}

#pragma mark <UICollectionViewDelegate>

/*
// Uncomment this method to specify if the specified item should be highlighted during tracking
- (BOOL)collectionView:(UICollectionView *)collectionView shouldHighlightItemAtIndexPath:(NSIndexPath *)indexPath {
	return YES;
}
*/

/*
// Uncomment this method to specify if the specified item should be selected
- (BOOL)collectionView:(UICollectionView *)collectionView shouldSelectItemAtIndexPath:(NSIndexPath *)indexPath {
    return YES;
}
*/

/*
// Uncomment these methods to specify if an action menu should be displayed for the specified item, and react to actions performed on the item
- (BOOL)collectionView:(UICollectionView *)collectionView shouldShowMenuForItemAtIndexPath:(NSIndexPath *)indexPath {
	return NO;
}

- (BOOL)collectionView:(UICollectionView *)collectionView canPerformAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	return NO;
}

- (void)collectionView:(UICollectionView *)collectionView performAction:(SEL)action forItemAtIndexPath:(NSIndexPath *)indexPath withSender:(id)sender {
	
}
*/

@end
