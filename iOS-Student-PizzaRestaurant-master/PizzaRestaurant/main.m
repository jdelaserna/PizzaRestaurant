//
//  main.m
//  PizzaRestaurant
//
//  Created by Steven Masuch on 2014-07-19.
//  Copyright (c) 2014 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Pizza.h"

int main(int argc, const char * argv[])
{

    @autoreleasepool {
        
        NSLog(@"Please pick your pizza size and toppings:");
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Pizza *newPizza = [[Pizza alloc] init];
        
        while (TRUE) {
            // Loop forever
            
            NSLog(@"> ");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"%@ pizza", inputString);
            
            // Take the first word of the command as the size, and the rest as the toppings
            NSMutableArray *commandWords = [inputString componentsSeparatedByString:@" "];
            
            NSString *size = [commandWords firstObject];
            [commandWords removeObjectAtIndex:0];
            
            // And then send some message to the kitchen...
            [newPizza initWithSize:size AndToppings:(commandWords)];

        }

    }
    return 0;
}

