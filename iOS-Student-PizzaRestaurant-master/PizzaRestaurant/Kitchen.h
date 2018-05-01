//
//  Kitchen.h
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-26.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"
#import "KitchenDelegate.h"

@interface Kitchen : NSObject

@property (nonatomic, weak) id<KitchenDelegate> kitchenDelegate;

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings;

@end
