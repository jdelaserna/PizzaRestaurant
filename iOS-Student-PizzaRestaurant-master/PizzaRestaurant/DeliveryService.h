//
//  DeliveryService.h
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-30.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "Pizza.h"

@interface DeliveryService : NSObject

@property NSMutableArray *descriptionOfPizza;

- (BOOL)deliverPizza:(Pizza *)pizza;

- (NSMutableArray *) deliveredPizzaDescription;

@end
