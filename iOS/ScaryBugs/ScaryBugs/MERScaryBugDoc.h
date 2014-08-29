//
//  MERScaryBugDoc.h
//  ScaryBugs
//
//  Created by Max Rogers on 8/26/14.
//
//

#import <Foundation/Foundation.h>

@class MERScaryBugData;

@interface MERScaryBugDoc : NSObject

@property (strong) MERScaryBugData *data;
@property (strong) UIImage *thumbImage;
@property (strong) UIImage *fullImage;

- (id)initWithTitle:(NSString*)title rating:(float)rating thumbImage:(UIImage *)thumbImage fullImage:(UIImage *)fullImage;

@end
