//
//  KitchenDelegate.h
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-26.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Kitchen.h"

@class Kitchen;

@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen:(Kitchen *)kitchen shouldMakePizza:(PizzaSize)size andToppings:(NSArray *)toppings;
- (BOOL)shouldUpgrade:(Kitchen *)kitchen;

@optional
- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end
