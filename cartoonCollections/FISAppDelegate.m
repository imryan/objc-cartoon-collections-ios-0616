//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

- (NSString *)stringByRollCallingDwarfsInArray:(NSArray *)dwarfs {
    NSMutableString *rollCallString = [NSMutableString string];
    for (NSUInteger i = 0; i < dwarfs.count-1; i++) {
        [rollCallString appendString:[NSString stringWithFormat:@"%lu. %@ | ", i+1, dwarfs[i]]];
    }
    
    [rollCallString appendString:[NSString stringWithFormat:@"%lu. %@", dwarfs.count, [dwarfs lastObject]]];
    
    return rollCallString;
}

- (NSArray *)arrayOfPlaneteerShoutsFromArray:(NSArray *)powers {
    NSMutableArray *newPowers = [NSMutableArray array];
    for (NSString *power in powers) {
        [newPowers addObject:[NSString stringWithFormat:@"%@!", [power uppercaseString]]];
    }
    
    return newPowers;
}

- (NSString *)summonCaptainPlanetWithPowers:(NSArray *)powers {
    NSMutableString *statement = [NSMutableString stringWithString:@"Let our powers combine:\n"];
    powers = [self arrayOfPlaneteerShoutsFromArray:powers];
    
    for (NSString *power in powers) {
        [statement appendString:[NSString stringWithFormat:@"%@\n", power]];
    }
    
    [statement appendString:@"Go Planet!"];
    
    return statement;
}

- (NSString *)firstPremiumCheeseInStock:(NSArray *)cheesesInStock premiumCheeseNames:(NSArray *)premiumCheeseNames {
    NSString *premiumCheeseInStock = @"No premium cheeses in stock.";
    
    for (NSString *cheese in cheesesInStock) {
        for (NSString *premiumCheese in premiumCheeseNames) {
            if ([cheese isEqualToString:premiumCheese]) {
                premiumCheeseInStock = cheese;
            }
        }
    }
    
    return premiumCheeseInStock;
}

- (NSArray *)arrayByConvertingMoneyBagsIntoPaperBills:(NSArray *)moneyBags {
    NSMutableArray *bills = [NSMutableArray array];
    for (NSString *coins in moneyBags) {
        [bills addObject:[NSString stringWithFormat:@"$%lu", coins.length]];
    }
    
    return bills;
}

@end
