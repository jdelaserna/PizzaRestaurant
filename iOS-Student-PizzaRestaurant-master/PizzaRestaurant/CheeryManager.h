//
//  CheeryManager.h
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-30.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import "KitchenDelegate.h"
#import "DeliveryService.h"

@interface CheeryManager : NSObject <KitchenDelegate>

@property (nonatomic) DeliveryService* deliveryService;

@end
