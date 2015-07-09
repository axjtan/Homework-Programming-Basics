//
//  Student.h
//  StudentGrade
//
//  Created by NP ECE BME Centre on 6/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import <Foundation/Foundation.h>

#define kBONUS 5;

@interface UniversityStudent : NSObject

@property NSString *firstName;
@property NSString *lastName;

@property float studentGrade;
@property float averageGrade;
@property float averageGradeWithBonus;
@property NSString *classification;
@property float standardDeviation;

-(float) calculateClassAverageGradeByStudentGrade:(float [])studentGrade andSizeOfClass:(int) students;
-(float) calculateClassAverageGradewithBonusByStudentGrade:(float [])studentGrade andSizeOfClass:(int) students;
-(NSString *) classificationByAverageGrade:(float)averageGrade;
-(float) calculateClassStandardDeviationByStudentGrade:(float [])studentGrade andAverageGradeWithBonus: (float)averageGradeWithBonus andSizeOfClass:(int) students;


@end
