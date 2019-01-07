%hook ViewController

- (void)viewDidLoad
{
	%orig
	UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"Hello"
                                                                   message:@"You've been jailbreak broken."
                                                            preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *ok = [UIAlertAction actionWithTitle:@"Okey dokey"
                                                 style:UIAlertActionStyleDefault
                                               handler:nil];

    [alert addAction:ok];
    [self presentViewController:alert animated:YES completion:nil];
}

%end

// Class used to check for jailbreaks
%hook JBChecker

// Redefine the behavior of the function that checks
// for jailbreaks
+ (BOOL)isJailbroken
{
	%log; BOOL r = %orig; 
	HBLogDebug(@" = %d", r);
	return NO;
}

%end