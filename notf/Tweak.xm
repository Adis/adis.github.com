%hook SpringBoard

-(void)applicationDidFinishLaunching:(id)application {
    %orig;
    
    UIAlertView *alert = [[UIAlertView alloc] initWithTitle:@"NOTF" 
        message:@"Ping" 
        delegate:nil 
        cancelButtonTitle:@"Pong" 
        otherButtonTitles:nil];
    [alert show];
    [alert release];
}

%end