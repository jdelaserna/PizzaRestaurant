//
//  DeliveryService.m
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-30.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "DeliveryService.h"
#import "DeliveryCar.h"
#import "Pizza.h"

@implementation DeliveryService

- (instancetype)init {
    self = [super init];
    if (self) {
        _descriptionOfPizza = [[NSMutableArray alloc] init];
    }
    return self;
}

- (BOOL)deliverPizza:(Pizza *)pizza {
    DeliveryCar *myCar = [[DeliveryCar alloc] init];
    BOOL delivered = [myCar deliverPizza:pizza];
    [_descriptionOfPizza addObject:pizza.description];

    return delivered;
}

- (NSMutableArray *) deliveredPizzaDescription {
    return _descriptionOfPizza;
}

@end
