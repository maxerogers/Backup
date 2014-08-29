//
//  main.m
//  RandomItems
//
//  Created by Max Rogers on 8/28/14.
//  Copyright (c) 2014 Big Nerd Ranch. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "BNRItem.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        /*
        // insert code here...
        NSLog(@"Hello, World!");
        */
        //Creating a mutable array object, store its address in items variable
        NSMutableArray *items = [[NSMutableArray alloc]init];
        //Sending the message addObject: to the NSMutable Array
        [items addObject:@"One"];
        [items addObject:@"Two"];
        [items addObject:@"Three"];
        [items insertObject:@"Zero" atIndex:0];
        for(NSString *item in items){
            NSLog(@"%@",item);
        }
        BNRItem *item = [[BNRItem alloc] initWithItemName:@"Red Sofa" valueInDollars:100 serialNumber:@"A1B2C"];
        NSLog(@"%@", item);
        NSLog(@"");
        NSLog(@"");
        items = nil;
        item = nil;
        for(int i=0; i<10;i++){
            BNRItem *item = [BNRItem randomItem];
            NSLog(@"%@", item);
        }
    }
    return 0;
}

