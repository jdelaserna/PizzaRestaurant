//
//  CheeryManager.m
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-30.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "CheeryManager.h"

#import "Pizza.h"
#import "DeliveryService.h"


@implementation CheeryManager

-(BOOL)kitchen:(Kitchen *)kitchen shouldMakePizza:(PizzaSize)size andToppings:(NSArray *)toppings{
    return YES;
}

-(BOOL)shouldUpgrade:(Kitchen *)kitchen{
    return YES;
}

-(void)kitchenDidMakePizza:(Pizza *)pizza{
    NSLog(@"Thank you and enjoy your pizza!");
    
    [self.deliveryService deliverPizza:pizza];
}

@end
