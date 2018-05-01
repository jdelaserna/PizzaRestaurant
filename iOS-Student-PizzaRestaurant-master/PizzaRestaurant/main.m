//
//  main.m
//  PizzaRestaurant
//
//  Created by Jorge Serna on 2018-04-30.
//  Copyright © 2018 Lighthouse Labs. All rights reserved.
//

#import <Foundation/Foundation.h>

#import "Kitchen.h"
#import "Manager.h"
#import "CheeryManager.h"
#import "DeliveryService.h"

int main(int argc, const char * argv[]) {

    @autoreleasepool {
        
        Kitchen *restaurantKitchen = [Kitchen new];
        Manager *badManager = nil;
        CheeryManager *goodManager = nil;
        DeliveryService *deliveryServce = [DeliveryService new];
        
        while (TRUE) {
            
            NSLog(@"Which manager would you like? \na. Bad Manager \nb. Good Manager \nc. None \nPick your choice:");
            char manager[100];
            fgets(manager, 100, stdin);
            
            NSString *managerChoice = [[NSString alloc] initWithUTF8String:manager];
            
            if ([managerChoice characterAtIndex:0] == 'a') {
                if (badManager == nil) {
                    badManager = [Manager new];
                }
                restaurantKitchen.kitchenDelegate = badManager;
            } else if ([managerChoice characterAtIndex:0] == 'b') {
                if (goodManager == nil) {
                    goodManager = [CheeryManager new];
                    goodManager.deliveryService = deliveryServce;
                }
                restaurantKitchen.kitchenDelegate = goodManager;
            } else {
                restaurantKitchen.kitchenDelegate = nil;
            }
            
            NSLog(@"Please pick your pizza size and toppings:");
            char str[100];
            fgets (str, 100, stdin);
            
            NSString *inputString = [[NSString alloc] initWithUTF8String:str];
            inputString = [inputString stringByTrimmingCharactersInSet:[NSCharacterSet whitespaceAndNewlineCharacterSet]];
            
            NSLog(@"%@ pizza", inputString);
            
            NSMutableArray *toppings = [inputString componentsSeparatedByString:@" "];
            
            NSString *firstIndex = [toppings firstObject];
            [toppings removeObjectAtIndex:0];
            
            PizzaSize size = large;
            
            if ([firstIndex isEqualToString: @"small"]) {
                size = small;
            } else if ([firstIndex isEqualToString:@"medium"]) {
                size  = medium;
            }
                
            Pizza* newPizza = [restaurantKitchen makePizzaWithSize:(size) toppings:(toppings)];
            if (newPizza) {
                NSLog(@"Size %i", (int)newPizza.size);
                NSLog(@"Toppings %@", toppings);
            } else {
                NSLog(@"No Pizza was created");
            }
            
            NSMutableArray *resultPizza = [deliveryServce deliveredPizzaDescription];
            NSLog(@" HOLA %@", resultPizza);

        }

    }
    
    return 0;
}

