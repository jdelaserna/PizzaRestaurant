//
//  Kitchen.m
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-26.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "Kitchen.h"
#import "KitchenDelegate.h"

@implementation Kitchen

- (Pizza *)makePizzaWithSize:(PizzaSize)size toppings:(NSArray *)toppings {
    
    Pizza* newPizza = nil;
    
    if (_kitchenDelegate) {
        
        if ([self.kitchenDelegate kitchen:self shouldMakePizza:size andToppings:toppings]) {
            BOOL shouldBeLarge = [self.kitchenDelegate shouldUpgrade:self];
            
            if (shouldBeLarge) {
                newPizza = [[Pizza alloc] initWithSize:(size) AndToppings:(toppings)];
                
            } else {
                newPizza = [[Pizza alloc] initWithSize:(size) AndToppings:(toppings)];
            }
            
            if ([self.kitchenDelegate respondsToSelector:@selector(kitchenDidMakePizza:)]) {
                [self.kitchenDelegate kitchenDidMakePizza:newPizza];
            }
            
            return newPizza;
            
        } else {
            return newPizza;
        }
        
    }
    
    return [[Pizza alloc] initWithSize:(size) AndToppings:(toppings)];

}

@end
