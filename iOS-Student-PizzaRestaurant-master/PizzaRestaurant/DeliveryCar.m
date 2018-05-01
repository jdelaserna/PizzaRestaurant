//
//  DeliveryCar.m
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-30.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "DeliveryCar.h"
#import "Pizza.h"

@implementation DeliveryCar

-(BOOL)deliverPizza:(Pizza *)pizza {
    
    NSLog(@"Pizza Delivered - %@", pizza);
    
    return YES;
    
}

@end
