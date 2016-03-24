//
//  MapViewController.h
//  appStruct
//
//  Created by Developer8 on 3/22/16.
//  Copyright © 2016 Mohan. All rights reserved.
//

#import <UIKit/UIKit.h>
#import <MapKit/MapKit.h>
#import "CoreLocation/CoreLocation.h"
@interface MapViewController : UIViewController<MKMapViewDelegate>
@property (strong, nonatomic) IBOutlet MKMapView *mapView;
@property(nonatomic,retain)CLLocationManager *locationManager;

@end
