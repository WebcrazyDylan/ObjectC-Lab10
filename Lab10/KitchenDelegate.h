//
//  KitchenDelegate.h
//  Lab10
//
//  Created by Dylan Park on 2021-07-14.
//

#ifndef KitchenDelegate_h
#define KitchenDelegate_h

#import <Foundation/Foundation.h>
#import "Pizza.h"
@class Kitchen;

@protocol KitchenDelegate <NSObject>

- (BOOL)kitchen:(Kitchen *)kitchen
shouldMakePizzaOfSize:(PizzaSize)size andToppings:(NSArray
*)toppings;
- (BOOL)kitchenShouldUpgradeOrder:(Kitchen *)kitchen;

- (void)kitchenDidMakePizza:(Pizza *)pizza;

@end

#endif /* KitchenDelegate_h */
