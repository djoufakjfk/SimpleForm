//
//  ViewController.m
//  SimpleForm
//
//  Created by Jean Francois Djoufak Kengue on 2017-01-23.
//  Copyright © 2017 Djoufak Corporate. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@end

@implementation ViewController

NSString *FNString = @"";
NSString *LNString = @"";
NSString *PString = @"";
NSString *NString = @"";
NSString *SString = @"";
NSString *CString = @"";
NSString *CoString = @"";
NSString *PCString = @"";

- (void)hideLabels {
    [self.FNLabel setHidden:YES];
    [self.LNLabel setHidden:YES];
    [self.PLabel setHidden:YES];
    [self.NLabel setHidden:YES];
    [self.SLabel setHidden:YES];
    [self.CLabel setHidden:YES];
    [self.CoLabel setHidden:YES];
    [self.PCLabel setHidden:YES];
}

- (void)unhideLabels {
    [self.FNLabel setHidden:NO];
    [self.LNLabel setHidden:NO];
    [self.PLabel setHidden:NO];
    [self.NLabel setHidden:NO];
    [self.SLabel setHidden:NO];
    [self.CLabel setHidden:NO];
    [self.CoLabel setHidden:NO];
    [self.PCLabel setHidden:NO];
}

- (void) hideTexts {
    self.FNText.hidden = YES;
    self.LNText.hidden = YES;
    self.PText.hidden = YES;
    self.NText.hidden = YES;
    self.SText.hidden = YES;
    self.CText.hidden = YES;
    self.Cotext.hidden = YES;
    self.PCText.hidden = YES;
}

- (void) unhideTexts {
    self.FNText.hidden = NO;
    self.LNText.hidden = NO;
    self.PText.hidden = NO;
    self.NText.hidden = NO;
    self.SText.hidden = NO;
    self.CText.hidden = NO;
    self.Cotext.hidden = NO;
    self.PCText.hidden = NO;
}

- (void) setLabels {
    [self.FNLabel setText:FNString];
    [self.LNLabel setText:LNString];
    [self.PLabel setText:PString];
    [self.NLabel setText:NString];
    [self.SLabel setText:SString];
    [self.CLabel setText:CString];
    [self.CoLabel setText:CoString];
    [self.PCLabel setText:PCString];
}

- (void) clearLabels {
    [self.FNLabel setText:@""];
    [self.LNLabel setText:@""];
    [self.PLabel setText:@""];
    [self.NLabel setText:@""];
    [self.SLabel setText:@""];
    [self.CLabel setText:@""];
    [self.CoLabel setText:@""];
    [self.PCLabel setText:@""];
}

- (void) setTexts {
    [self.FNText setText:FNString];
    [self.LNText setText:LNString];
    [self.PText setText:PString];
    [self.NText setText:NString];
    [self.SText setText:SString];
    [self.CText setText:CString];
    [self.Cotext setText:CoString];
    [self.PCText setText:PCString];
}

- (void) clearTexts {
    [self.FNText setText:@""];
    [self.LNText setText:@""];
    [self.PText setText:@""];
    [self.NText setText:@""];
    [self.SText setText:@""];
    [self.CText setText:@""];
    [self.Cotext setText:@""];
    [self.PCText setText:@""];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self hideLabels];
    [self setLabels];
    
    [self unhideTexts];
    [self setTexts];
    
    [self.EButton setHidden:YES];
    [self.CButton setHidden:YES];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)didClickOnSubmit:(id)sender {
    [self setTexts];
    [self hideTexts];
    [self setLabels];
    [self unhideLabels];
    
    [self.EButton setHidden:NO];
    [self.CButton setHidden:NO];
    [self.SButton setHidden:YES];
}

- (IBAction)didClickOnClear:(id)sender {
    [self clearLabels];
    [self hideLabels];
    [self clearTexts];
    [self unhideTexts];
    
    [self.EButton setHidden:YES];
    [self.CButton setHidden:YES];
    [self.SButton setHidden:NO];
}

- (IBAction)didClickOnEdit:(id)sender {
    [self setLabels];
    [self hideLabels];
    [self setTexts];
    [self unhideTexts];
    
    [self.EButton setHidden:YES];
    [self.CButton setHidden:YES];
    [self.SButton setHidden:NO];
}

- (IBAction)didEndEditingFN:(id)sender {
    FNString = [self.FNText text];
}

- (IBAction)didEndEditingLN:(id)sender {
    LNString = [self.LNText text];
}

- (IBAction)didEndEditingP:(id)sender {
    PString = [self.PText text];
}

- (IBAction)didEndEditingN:(id)sender {
    NString = [self.NText text];
}

- (IBAction)didEndEditingS:(id)sender {
    SString = [self.SText text];
}

- (IBAction)didEndEditingC:(id)sender {
    CString = [self.CText text];
}

- (IBAction)didEndEditingCo:(id)sender {
    CoString = [self.Cotext text];
}

- (IBAction)didEndEditingPC:(id)sender {
    PCString = [self.PCText text];
}

- (IBAction)textDidReturn:(id)sender {
    [sender resignFirstResponder];
}

- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event {
    
    UITouch *touch = [[event allTouches] anyObject];
    if ([self.FNText isFirstResponder] && [touch view] != self.FNText) {
        [self.FNText resignFirstResponder];
    }
    else if ([self.LNText isFirstResponder] && [touch view] != self.LNText) {
        [self.LNText resignFirstResponder];
    }
    else if ([self.PText isFirstResponder] && [touch view] != self.PText) {
        [self.PText resignFirstResponder];
    }
    else if ([self.NText isFirstResponder] && [touch view] != self.NText) {
        [self.NText resignFirstResponder];
    }
    else if ([self.SText isFirstResponder] && [touch view] != self.SText) {
        [self.SText resignFirstResponder];
    }
    else if ([self.CText isFirstResponder] && [touch view] != self.CText) {
        [self.CText resignFirstResponder];
    }
    else if ([self.Cotext isFirstResponder] && [touch view] != self.Cotext) {
        [self.Cotext resignFirstResponder];
    }
    else if ([self.PCText isFirstResponder] && [touch view] != self.PCText) {
        [self.PCText resignFirstResponder];
    }
    [super touchesBegan:touches withEvent:event];
}

@end
