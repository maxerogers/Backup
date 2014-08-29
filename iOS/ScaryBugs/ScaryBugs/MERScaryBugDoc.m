//
//  MERScaryBugDoc.m
//  ScaryBugs
//
//  Created by Max Rogers on 8/26/14.
//
//

#import "MERScaryBugDoc.h"
#import "MERScaryBugData.h"

@implementation MERScaryBugDoc

@synthesize data = _data;
@synthesize thumbImage = _thumbImage;
@synthesize fullImage = _fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage {
    if ((self = [super init])) {
        self.data = [[MERScaryBugData alloc] initWithTitle:title rating:rating];
        self.thumbImage = thumbImage;
        self.fullImage = fullImage;
    }
    return self;
}


@end
