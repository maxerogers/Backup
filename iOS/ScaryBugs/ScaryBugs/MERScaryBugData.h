//
//  MERScaryBugData.h
//  ScaryBugs
//
//  Created by Max Rogers on 8/26/14.
//
//

#import <Foundation/Foundation.h>

@interface MERScaryBugData : NSObject

@property (strong) NSString *title;
@property (assign) float rating;

- (id)initWithTitle:(NSString*)title rating:(float)rating;

@end
