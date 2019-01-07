#line 1 "Tweak.xm"


#include <substrate.h>
#if defined(__clang__)
#if __has_feature(objc_arc)
#define _LOGOS_SELF_TYPE_NORMAL __unsafe_unretained
#define _LOGOS_SELF_TYPE_INIT __attribute__((ns_consumed))
#define _LOGOS_SELF_CONST const
#define _LOGOS_RETURN_RETAINED __attribute__((ns_returns_retained))
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif
#else
#define _LOGOS_SELF_TYPE_NORMAL
#define _LOGOS_SELF_TYPE_INIT
#define _LOGOS_SELF_CONST
#define _LOGOS_RETURN_RETAINED
#endif

@class JBChecker; 
static BOOL (*_logos_meta_orig$_ungrouped$JBChecker$isJailbroken)(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); static BOOL _logos_meta_method$_ungrouped$JBChecker$isJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST, SEL); 

#line 2 "Tweak.xm"





static BOOL _logos_meta_method$_ungrouped$JBChecker$isJailbroken(_LOGOS_SELF_TYPE_NORMAL Class _LOGOS_SELF_CONST __unused self, SEL __unused _cmd) {
	return NO;
}


static __attribute__((constructor)) void _logosLocalInit() {
{Class _logos_class$_ungrouped$JBChecker = objc_getClass("JBChecker"); Class _logos_metaclass$_ungrouped$JBChecker = object_getClass(_logos_class$_ungrouped$JBChecker); MSHookMessageEx(_logos_metaclass$_ungrouped$JBChecker, @selector(isJailbroken), (IMP)&_logos_meta_method$_ungrouped$JBChecker$isJailbroken, (IMP*)&_logos_meta_orig$_ungrouped$JBChecker$isJailbroken);} }
#line 12 "Tweak.xm"
