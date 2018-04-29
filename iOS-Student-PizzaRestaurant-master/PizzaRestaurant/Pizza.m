//
//  Pizza.m
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-26.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Pizza.h"

@implementation Pizza

- (instancetype) initWithSize: (NSString *)size AndToppings: (NSArray *)toppings {
    self = [super init];
    if(self) {
        self.size = size;
        self.toppings = toppings;
    }
    
    return self;
}

@end
