//
//  MERScaryBugData.m
//  ScaryBugs
//
//  Created by Max Rogers on 8/26/14.
//
//

#import "MERScaryBugData.h"

@implementation MERScaryBugData

@synthesize title = _title;
@synthesize rating = _rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating {
    if ((self = [super init])) {
        self.title = title;
        self.rating = rating;
    }
    return self;
}

@end
