//
//  Autocomplete.m
//
//  Created by Radu Lucaciu on 8/17/10.
//  Copyright 2010. All rights reserved.
//

#import "Autocomplete.h"


@implementation Autocomplete

static Autocomplete * shared;

+(Autocomplete *) sharedSingleton{
	
	static dispatch_once_t done;
	
	dispatch_once(&done, ^{
		shared = [[Autocomplete alloc] init];
	});
	
	return shared;
	
}

- (Autocomplete *)init
{
	self = [super init];
	if (self)
	{
		//candidates = [[NSMutableArray alloc] initWithArray:initialArray];
        listName =[[NSMutableArray alloc]initWithObjects:@"New York",@"London",@"Frankfurt",@"California",@"Berlin", nil];
        ary =[[NSMutableArray alloc]init];

		//[candidates sortUsingSelector:@selector(compare:)];
	}
	
	return self;
}

/*
- (NSMutableArray *)GetSuggestions:(NSString *)root
{
	if ([root length] == 0)
	{
		return candidates;
	}
	
	NSPredicate *startPredicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[c] %@", root];
	return [NSMutableArray arrayWithArray:[candidates filteredArrayUsingPredicate:startPredicate]];
}
 */
-(void)add:(NSString*)str{
    for (int i=0; i<ary.count; i++) {
        if([ary objectAtIndex:i]==str){
            return;
        }
    }
    [ary addObject:str];
}
-(NSMutableArray*)myArray{
    return ary;
}
- (NSMutableArray *)GetSuggestionsForSuburb:(NSString *)root
{
	if ([root length] == 0)
	{
        
		return listName;
       
	}
	NSLog(@" nnnnnnnnnnnnnnnnnnnnnbn ::::::%lu",(unsigned long)self.suburbArray.count);
	NSPredicate *startPredicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[c] %@", root];
	return [NSMutableArray arrayWithArray:[listName filteredArrayUsingPredicate:startPredicate]];
}


- (NSMutableArray *)GetSuggestionsForStreetAddress:(NSString *)root
{
	if ([root length] == 0)
	{
		return self.streetNameArray;
	}
	
	NSPredicate *startPredicate = [NSPredicate predicateWithFormat:@"SELF BEGINSWITH[c] %@", root];
	return [NSMutableArray arrayWithArray:[self.streetNameArray filteredArrayUsingPredicate:startPredicate]];
}


/*
- (void)AddCandidate:(NSString *)candidate
{
	//Is the candidate already in the list?
	for (int i = 0; i < [candidates count]; i++)
	{
		if ([[candidates objectAtIndex:i] isEqualToString:candidate])
		{
			return;
		}
	}
	
	//Add the new candidate
	[candidates addObject:candidate];
	[candidates sortUsingSelector:@selector(compare:)];
}
*/


@end
