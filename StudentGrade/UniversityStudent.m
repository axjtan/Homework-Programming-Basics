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
    
    for(int studentNo = 1; studentNo <= students; studentNo++){
        sumOfGrades += studentGrade[studentNo-1];
    }
    self.averageGrade = sumOfGrades/students;
    
    return self.averageGrade;
}

// Calculate the Class Average Grade with additional bonus using Student Grade and Size of the Class
-(float) calculateClassAverageGradewithBonusByStudentGrade:(float [])studentGrade andSizeOfClass:(int) students{
    float sumOfGrades =0.0;
    
    for(int studentNo = 1; studentNo <= students; studentNo++){
        studentGrade[studentNo-1]+= (float)kBONUS;
        sumOfGrades += studentGrade[studentNo-1];
    }
    self.averageGradeWithBonus = sumOfGrades/students;
    
    return self.averageGradeWithBonus;
}

// Classify Class according to "Excellent", "Good" or "Average"
-(NSString *) classificationByAverageGrade:(float)averageGrade{
    if (averageGrade >=70) {
        self.classification = @"Excellent\n";
    }
    else if (averageGrade >=60 && averageGrade <70){
        self.classification = @"Good\n";
    }
    else if(averageGrade<60){
        self.classification = @"Average\n";
    }
    
    return self.classification;
}

// Calculate the Class Standard Deviation Grade using Student Grade, Average Grade and Size of the Class
-(float) calculateClassStandardDeviationByStudentGrade:(float [])studentGrade andAverageGradeWithBonus: (float)averageGradeWithBonus andSizeOfClass:(int) students{
    
    float varianceOfGrades = 0.0;
    for(int studentNo = 1; studentNo <= students; studentNo++){
        studentGrade[studentNo]+= 5.0;
        varianceOfGrades += powf((studentGrade[studentNo]-averageGradeWithBonus),2);
    }
    self.standardDeviation = sqrtf(varianceOfGrades/students);
    
    return self.standardDeviation;
}

@end
