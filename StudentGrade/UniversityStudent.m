//
//  Student.m
//  StudentGrade
//
//  Created by NP ECE BME Centre on 6/7/15.
//  Copyright (c) 2015 NP ECE BME Centre. All rights reserved.
//

#import "UniversityStudent.h"

@implementation UniversityStudent

// Calculate the Class Average Grade using Student Grade and Size of the Class
-(float) calculateClassAverageGradeByStudentGrade:(float [])studentGrade andSizeOfClass:(int) students{

    float sumOfGrades =0.0;
    float averageGrade;
    
    for(int studentNo = 1; studentNo <= students; studentNo++){
        sumOfGrades += studentGrade[studentNo-1];
    }
    averageGrade = sumOfGrades/students;
    
    return averageGrade;
}

// Calculate the Class Average Grade with additional bonus using Student Grade and Size of the Class
-(float) calculateClassAverageGradewithBonusByStudentGrade:(float [])studentGrade andSizeOfClass:(int) students{
    
    float sumOfGrades =0.0;
    float averageGradeWithBonus;
    
    for(int studentNo = 1; studentNo <= students; studentNo++){
        studentGrade[studentNo-1]+= (float)kBONUS;
        sumOfGrades += studentGrade[studentNo-1];
    }
    averageGradeWithBonus = sumOfGrades/students;
    
    return averageGradeWithBonus;
}

// Classify Class according to "Excellent", "Good" or "Average"
-(NSString *) classificationByAverageGrade:(float)averageGrade{
    
    NSString *classification;
    
    if (averageGrade >=70) {
        classification = @"Excellent\n";
    }
    else if (averageGrade >=60 && averageGrade <70){
        classification = @"Good\n";
    }
    else if(averageGrade<60){
        classification = @"Average\n";
    }
    
    return classification;
}

// Calculate the Class Standard Deviation Grade using Student Grade, Average Grade and Size of the Class
-(float) calculateClassStandardDeviationByStudentGrade:(float [])studentGrade andAverageGradeWithBonus: (float)averageGradeWithBonus andSizeOfClass:(int) students{
    
    float varianceOfGrades = 0.0;
    float standardDeviation;
    
    for(int studentNo = 1; studentNo <= students; studentNo++){
        studentGrade[studentNo]+= 5.0;
        varianceOfGrades += powf((studentGrade[studentNo]-averageGradeWithBonus),2);
    }
    standardDeviation = sqrtf(varianceOfGrades/students);
    
    return standardDeviation;
}

@end
