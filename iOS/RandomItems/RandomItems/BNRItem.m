//
//  BNRItem.m
//  RandomItems
//
//  Created by Max Rogers on 8/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import "BNRItem.h"

@implementation BNRItem

+(instancetype)randomItem{
    NSArray *randomAdjectiveList = @[@"Fluffy",@"Rusty",@"Shiny"];
    NSArray *randomNounList = @[@"Bear",@"Spork",@"Mac"];
    NSInteger adjectiveIndex = arc4random() % [randomAdjectiveList count];
    NSInteger nounIndex = arc4random() % [randomNounList count];
    NSString *randomName = [NSString stringWithFormat:@"%@ %@", randomAdjectiveList[adjectiveIndex],randomNounList[nounIndex]];
    int randomValue = arc4random() % 100;
    NSString *randomSerial = [NSString stringWithFormat:@"%c%c%c%c%c%c",
                             '0' + arc4random()%10,
                             'A' + arc4random()%26,
                             '0' + arc4random()%10,
                             'A' + arc4random()%26,
                             '0' + arc4random()%10];
    BNRItem *newItem = [[self alloc] initWithItemName:randomName valueInDollars:randomValue serialNumber:randomSerial];
    return newItem ;
}

-(instancetype) initWithItemName:(NSString *)name valueInDollars:(int)value serialNumber:(NSString *)sNumber{
    self = [super init]; //call superclass's designated init
    if(self){
        _itemName = name;
        _valueDollars = value;
        _serialNumber = sNumber;
        _dateCreated = [[NSDate alloc] init];
    }
    return self;
}

-(instancetype) initWithItemName:(NSString *)name{
    return [self initWithItemName:name
                   valueInDollars: 0
                     serialNumber:@""];
}

-(void)setItemName:(NSString *)str{
    _itemName = str;
}
-(NSString *)itemName{
    return _itemName;
}
-(void)setSerialNumber:(NSString *) str{
    _serialNumber = str;
}
-(NSString *)serialNumber{
    return _serialNumber;
}
-(void)setValueInDollars:(int)v{
    _valueDollars = v;
}
-(int)valueInDollars{
    return _valueDollars;
}
-(NSDate *)dateCreated{
    return _dateCreated;
}
-(NSString *)description{
    NSString *description = [[NSString alloc] initWithFormat: @"%@ (%@): Worth $%d recorded on %@", self.itemName, self.serialNumber, self.valueInDollars, self.dateCreated];
    return description;
}
@end
