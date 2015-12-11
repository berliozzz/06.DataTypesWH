//
//  AppDelegate.m
//  WorkHomeData Types
//
//  Created by Николай Стома on 21.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import "AppDelegate.h"
#import "Tank.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
    
    Tank* kv15 = [[Tank alloc] init];       //create kv15
    Tank* t34 = [[Tank alloc] init];        //create t34
    Tank* t90 = [[Tank alloc] init];        //create t90

    [kv15 setWeight:WeightHeavy];      //assignment properties kv15
    [kv15 setArmor:ArmorHeavy];
    [kv15 setCalibre:CalibreBig];
    [kv15 setCrew:CrewFour];
    [kv15 setManeuverability:ManeuverabilityBad];
    [kv15 setSpeed:SpeedTwo];
    
    
    [t34 setWeight:WeightLight];        //assignment properties t34
    [t34 setArmor:ArmorAverage];
    [t34 setCalibre:CalibreLittle];
    [t34 setCrew:CrewThree];
    [t34 setManeuverability:ManeuverabilityGood];
    [t34 setSpeed:SpeedFour];
    
    [t90 setWeight:WeightAverage];      //assignment properties t90
    [t90 setArmor:ArmorHeavy];
    [t90 setCalibre:CalibreMiddle];
    [t90 setCrew:CrewTwo];
    [t90 setManeuverability:ManeuverabilityGood];
    [t90 setSpeed:SpeedSix];
    
    
 
    //********************* First method *******************************
    
//    CGRect centreRect = CGRectMake(3, 3, 3, 3);
//    CGPoint randomPoint = CGPointMake(0, 0);
//    int x = 0;
//    int y = 0;
//    BOOL inRect = NO;
//    int quantity = 10;
//    int count = 0;
//    
//    for (int i = 0; i < quantity; i++)
//    {
//        x = arc4random() % 11;
//        y = arc4random() % 11;
//        randomPoint = CGPointMake(x, y);
//        inRect = CGRectContainsPoint(centreRect, randomPoint);
//        count++;
//        
//        if (inRect)
//        {
//            NSLog(@"Point%d(%d, %d) in rect!!!", count, x, y);
//        }
//        
//    }
    
  //************************ Second method *****************************
    
    CGRect centreRect = CGRectMake(3, 3, 3, 3);
    NSInteger count = 0;
    
        CGPoint point1 = CGPointMake(arc4random() % 11, arc4random() % 11);   //назначаем рандомные координаты для 10 точек
        CGPoint point2 = CGPointMake(arc4random() % 11, arc4random() % 11);
        CGPoint point3 = CGPointMake(arc4random() % 11, arc4random() % 11);
        CGPoint point4 = CGPointMake(arc4random() % 11, arc4random() % 11);
        CGPoint point5 = CGPointMake(arc4random() % 11, arc4random() % 11);
        CGPoint point6 = CGPointMake(arc4random() % 11, arc4random() % 11);
        CGPoint point7 = CGPointMake(arc4random() % 11, arc4random() % 11);
        CGPoint point8 = CGPointMake(arc4random() % 11, arc4random() % 11);
        CGPoint point9 = CGPointMake(arc4random() % 11, arc4random() % 11);
        CGPoint point10 = CGPointMake(arc4random() % 11, arc4random() % 11);
    
    
        NSArray* arrayPoint = [NSArray arrayWithObjects:                    //оборачиваем координаты в объекты
                               [NSValue valueWithCGPoint:point1],
                               [NSValue valueWithCGPoint:point2],
                               [NSValue valueWithCGPoint:point3],
                               [NSValue valueWithCGPoint:point4],
                               [NSValue valueWithCGPoint:point5],
                               [NSValue valueWithCGPoint:point6],
                               [NSValue valueWithCGPoint:point7],
                               [NSValue valueWithCGPoint:point8],
                               [NSValue valueWithCGPoint:point9],
                               [NSValue valueWithCGPoint:point10],
                               nil];
    
    for (NSValue* value in arrayPoint)                  //каждый объект в массиве arrayPoint
    {
        CGPoint point = [value CGPointValue];           //разворачивается из объекта в структуру CGPoint
        count++;
        
        if (CGRectContainsPoint(centreRect, point))     //если рандомная точка point попала в прямоугольник centreRect
        {
            NSLog(@"Point%d %@ in rect!", count, NSStringFromCGPoint(point));
        }
        else                                                //и если не попала
            NSLog(@"Point%d %@ out of rect!", count, NSStringFromCGPoint(point));

    }
    
    
    return YES;
}

- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
