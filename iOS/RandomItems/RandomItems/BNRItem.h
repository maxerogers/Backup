//
//  BNRItem.h
//  RandomItems
//
//  Created by Max Rogers on 8/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface BNRItem : NSObject{
NSString *_itemName;
NSString *_serialNumber;
NSDate *_dateCreated;
int _valueDollars;
}

//Designated Initializer
-(instancetype)initWithItemName: (NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber;
-(instancetype)initWithItemName: (NSString *)name;

//Class Methods
+(instancetype)randomItem;

-(void)setItemName: (NSString *)str;
-(void)setSerialNumber: (NSString *)str;
-(NSString *)itemName;
-(NSString *)serialNumber;
-(void)setValueInDollars:(int)v;
-(int)valueInDollars;
-(NSDate *)dateCreated;
@end
