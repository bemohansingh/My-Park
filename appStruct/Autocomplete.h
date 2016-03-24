//
//  Autocomplete.m
//
//  Created by Radu Lucaciu on 8/17/10.
//  Copyright 2010. All rights reserved.
//

#import <Foundation/Foundation.h>


@interface Autocomplete : NSObject
{
	//NSMutableArray *candidates;
	//NSMutableArray *candidatesSuburbArray;
	//NSMutableArray *candidatesStreetNameArray;
    NSMutableArray *listName;
    NSMutableArray *ary;
}

@property(nonatomic,strong) NSMutableArray *suburbArray;
@property(nonatomic,strong) NSMutableArray *streetNameArray;

//- (Autocomplete *)initWithArray:(NSArray *)initialArray;


//- (NSMutableArray *)GetSuggestions:(NSString *)root;

- (NSMutableArray *)GetSuggestionsForSuburb:(NSString *)root;
- (NSMutableArray *)GetSuggestionsForStreetAddress:(NSString *)root;
-(void)add:(NSString*)str;
-(NSMutableArray*)myArray;
//- (void)AddCandidate:(NSString *)candidate;

+( Autocomplete *) sharedSingleton;

@end
