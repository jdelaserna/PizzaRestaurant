//
//  Manager.m
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-30.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"
#import "Kitchen.h"

@implementation Manager : NSObject

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizza:(PizzaSize)size andToppings:(NSArray *)toppings{
    return [toppings containsObject:[@"anchovies" uppercaseString]];
    
}

-(BOOL)shouldUpgrade:(Kitchen *)kitchen{
    return NO;
}

@end
