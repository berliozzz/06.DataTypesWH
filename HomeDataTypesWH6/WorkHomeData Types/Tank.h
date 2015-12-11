//
//  Tank.h
//  WorkHomeData Types
//
//  Created by Николай Стома on 21.08.15.
//  Copyright (c) 2015 Nikolay Berlioz. All rights reserved.
//

#import <Foundation/Foundation.h>


typedef enum        //список вес
{
    WeightHeavy,
    WeightAverage,
    WeightLight
}Weight;

typedef enum        //список броня
{
    ArmorHeavy,
    ArmorAverage,
    ArmorLight
}Armor;

typedef enum        //список калибр
{
    CalibreLittle = 100,
    CalibreMiddleLittle = 150,
    CalibreMiddle = 200,
    CalibreBig = 250
}Calibre;

typedef enum        //список экипаж
{
    CrewTwo = 2,
    CrewThree = 3,
    CrewFour = 4
}Crew;

typedef enum        //список скорость
{
    SpeedOne = 40,
    SpeedTwo = 50,
    SpeedThree = 60,
    SpeedFour = 70,
    SpeedFive = 80,
    SpeedSix = 90
}Speed;

typedef enum        //список маневренность
{
    ManeuverabilityGood,
    ManeuverabilityBad
}Maneuverability;


@interface Tank : NSObject

@property (assign, nonatomic) Weight weight;                    //свойство вес
@property (assign, nonatomic) Armor armor;                      //свойство броня
@property (assign, nonatomic) Calibre calibre;                  //свойство калибр
@property (assign, nonatomic) Crew crew;                        //свойство экипаж
@property (assign, nonatomic) Speed speed;                      //свойство скорость
@property (assign, nonatomic) Maneuverability maneuverability;  //свойство маневренность



@end
