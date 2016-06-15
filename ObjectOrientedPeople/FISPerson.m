//
//  FISPerson.m
//  ObjectOrientedPeople
//
//  Created by Jordan Kiley on 6/14/16.
//  Copyright © 2016 al-tyus.com. All rights reserved.
//

#import "FISPerson.h"
@interface FISPerson()

@property (strong, nonatomic, readwrite) NSString *name ;
@property (nonatomic, readwrite) NSUInteger ageInYears ;
@property (nonatomic, readwrite) NSUInteger heightInInches ;
@property (strong, nonatomic, readwrite) NSMutableArray *skills ;

@end

@implementation FISPerson

- (instancetype)init {
    
    // Default
    self = [ self initWithName:@"Jordan" ageInYears:29 heightInInches:66];
    return self;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears {
    
    //Convenience
    self = [self initWithName:name ageInYears:ageInYears heightInInches:66];
    return self ;
}

- (instancetype)initWithName:(NSString *)name ageInYears:(NSUInteger)ageInYears heightInInches:(NSUInteger)heightInInches {
    
    // Designated
    
    self = [ super init ];
    if (self) {
        _name = name ;
        _ageInYears = ageInYears ;
        _heightInInches = heightInInches ;
        _skills = [[ NSMutableArray alloc] init];
    }
    
    return self;
}

- (NSString *)celebrateBirthday {
    self.ageInYears++ ;
    NSString *ageOrdinal = [ self ordinalForInteger:self.ageInYears];
    NSString *birthdayMessage = [[NSString stringWithFormat:@"HAPPY %lu%@ BIRTHDAY, %@!!!", self.ageInYears, ageOrdinal, self.name ] uppercaseString];
    NSLog(@"%@", birthdayMessage);
    return birthdayMessage;
}

- (NSString *)ordinalForInteger:(NSUInteger)integer {
    NSString *ordinal = @"th";
    if (integer % 10 == 1 && integer % 100 != 11) {
        ordinal = @"st";
    } else if (integer % 10 == 2 && integer % 100 != 12) {
        ordinal = @"nd";
    } else if (integer % 10 == 3 && integer % 100 != 13) {
        ordinal = @"rd";
    }
    return ordinal;
}

- (void)learnSkillBash {
    if ( self.skills == nil ) {
        self.skills = [@[ @"bash"] mutableCopy];
    } else if (![self.skills containsObject:@"bash"] || [self.skills count] == 0) {
        [ self.skills addObject:@"bash"];
    }
}

- (void)learnSkillXcode {
    if ( self.skills == nil ) {
        self.skills = [@[ @"Xcode"] mutableCopy];
    } else if (![self.skills containsObject:@"Xcode"] || [self.skills count] == 0) {
        [ self.skills addObject:@"Xcode"];
    }
}

- (void)learnSkillObjectiveC {
    if ( self.skills == nil ) {
        self.skills = [@[ @"Objective-C"] mutableCopy];
    } else if (![self.skills containsObject:@"Objective-C"] || [self.skills count] == 0) {
        [ self.skills addObject:@"Objective-C"];
    }
}

- (void)learnSkillObjectOrientedProgramming {
    if ( self.skills == nil ) {
        self.skills = [@[ @"Object-Oriented Programming"] mutableCopy];
    } else if (![self.skills containsObject:@"Object-Oriented Programming"] || [self.skills count] == 0) {
        [ self.skills addObject:@"Object-Oriented Programming"];
    }
}

- (void)learnSkillInterfaceBuilder {
    if ( self.skills == nil ) {
        self.skills = [@[ @"Interface Builder"] mutableCopy];
    } else if (![self.skills containsObject:@"Interface Builder"] || [self.skills count] == 0) {
        [ self.skills addObject:@"Interface Builder"];
    }

}

- (BOOL)isQualifiedTutor {
    if ( [ self.skills count] > 3 ) {
        NSLog(@"%li", [self.skills count] );
        return YES;
    } else { return NO ; }

}


@end
