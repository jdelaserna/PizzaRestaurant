//
//  Pizza.h
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-26.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface Pizza : NSObject

typedef NS_ENUM(NSInteger,PizzaSize){
    small,
    medium,
    large
};

@property (nonatomic) PizzaSize size;
@property NSArray *toppings;

- (instancetype) initWithSize: (PizzaSize)size AndToppings: (NSArray *)toppings;

@end
