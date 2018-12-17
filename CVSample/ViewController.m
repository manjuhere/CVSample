//
//  ViewController.m
//  CVSample
//
//  Created by Manjunath Chandrashekar on 17/12/18.
//  Copyright © 2018 manju. All rights reserved.
//

#import "ViewController.h"
#import <CVCalendar/CVCalendar-Swift.h>

@interface ViewController () <CVCalendarViewDelegate, CVCalendarViewAppearanceDelegate, CVCalendarMenuViewDelegate>
    
    @property (weak, nonatomic) IBOutlet CVCalendarView *calMainView;
    @property (weak, nonatomic) IBOutlet CVCalendarMenuView *calMenuView;

@end

@implementation ViewController

-(void)viewDidLayoutSubviews    {
    [super viewDidLayoutSubviews];
    [self.calMainView commitCalendarViewUpdate];
    [self.calMenuView commitMenuViewUpdate];
    
}
    
- (void)viewDidLoad {
    [super viewDidLoad];
}

-(BOOL)supplementaryViewWithShouldDisplayOnDayView:(CVCalendarDayView *)dayView {
    return YES;
}
    
-(UIView *)supplementaryViewWithViewOnDayView:(CVCalendarDayView *)dayView  {
    UIView *borderView = [[UIView alloc] initWithFrame:dayView.frame];
    borderView.layer.borderColor = [UIColor darkGrayColor].CGColor;
    borderView.layer.borderWidth = 0.75f;
    borderView.backgroundColor = [UIColor colorWithRed:0.33 green:0.74 blue:0.33 alpha:0.95];
    return borderView;
}
    
-(enum CVCalendarWeekday)firstWeekday   {
    return CVCalendarWeekdaySunday;
}
    
-(enum CVCalendarViewPresentationMode)presentationMode  {
    return CVCalendarViewPresentationModeMonthView;
}
    
-(BOOL)shouldShowWeekdaysOut {
    return YES;
}
    
-(UIColor *)dayOfWeekTextColor  {
    return [UIColor blackColor];
}
    
    
-(UIFont *)dayOfWeekFont  {
    return [UIFont systemFontOfSize:11.0f weight:2.0f];
}
    
-(BOOL)dotMarkerWithShouldShowOnDayView:(CVCalendarDayView *)dayView    {
    return NO;
}
    
-(NSArray<UIColor *> *)dotMarkerWithColorOnDayView:(CVCalendarDayView *)dayView {
    return @[[UIColor whiteColor]];
}
    
-(UIColor *)dotMarkerColor  {
    return [UIColor whiteColor];
}
    
-(CGFloat)dotMarkerWithSizeOnDayView:(CVCalendarDayView *)dayView {
    return dayView.frame.size.height/3.5;
}
    
-(CGFloat)dotMarkerWithMoveOffsetOnDayView:(CVCalendarDayView *)dayView {
    return 11.0;
}

@end
