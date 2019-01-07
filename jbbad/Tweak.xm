// Class used to check for jailbreaks
%hook JBChecker

// Redefine the behavior of the function that checks
// for jailbreaks
+ (BOOL)isJailbroken
{
	return NO;
}

%end