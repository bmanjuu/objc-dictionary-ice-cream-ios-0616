//  FISAppDelegate.m

#import "FISAppDelegate.h"

@implementation FISAppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    return YES;
}

-(NSArray *)namesForIceCream:(NSString *)iceCream{
    
    NSDictionary *iceCreamRequests = @{ @"Joe" : @"Peanut Butter and Chocolate",
                                        @"Tim" : @"Natural Vanilla",
                                        @"Sophie" : @"Mexican Chocolate",
                                        @"Deniz" : @"Natural Vanilla",
                                        @"Tom" : @"Mexican Chocolate",
                                        @"Jim" : @"Natural Vanilla",
                                        @"Mark" : @"Cookies 'n Cream" };
    
    NSMutableArray *peopleForIceCream = [[NSMutableArray alloc] init];
    
    for(NSString *name in iceCreamRequests){
        if([[iceCreamRequests valueForKey:name] isEqualToString:iceCream]){
            [peopleForIceCream addObject:name];
        }
    }
    
    return peopleForIceCream;
}



-(NSDictionary *)countsOfIceCream:(NSDictionary *)iceCreamByName{
    
    NSMutableDictionary *iceCreamCount = [[NSMutableDictionary alloc] init];
    
    for(NSString *iceCreamFlavor in [iceCreamByName allValues]){
        iceCreamCount[iceCreamFlavor] = @([[self namesForIceCream:iceCreamFlavor]count]); 
    }
    
    NSLog(@"%@\n\n\n\n\n\n\n\n", iceCreamCount);
    
    return iceCreamCount;
}

@end
