#if 0
#elif defined(__arm64__) && __arm64__
// Generated by Apple Swift version 5.7.2 (swiftlang-5.7.2.135.5 clang-1400.0.29.51)
#ifndef YANDEXMOBILEADSINSTREAM_SWIFT_H
#define YANDEXMOBILEADSINSTREAM_SWIFT_H
#pragma clang diagnostic push
#pragma clang diagnostic ignored "-Wgcc-compat"

#if !defined(__has_include)
# define __has_include(x) 0
#endif
#if !defined(__has_attribute)
# define __has_attribute(x) 0
#endif
#if !defined(__has_feature)
# define __has_feature(x) 0
#endif
#if !defined(__has_warning)
# define __has_warning(x) 0
#endif

#if __has_include(<swift/objc-prologue.h>)
# include <swift/objc-prologue.h>
#endif

#pragma clang diagnostic ignored "-Wduplicate-method-match"
#pragma clang diagnostic ignored "-Wauto-import"
#if defined(__OBJC__)
#include <Foundation/Foundation.h>
#endif
#if defined(__cplusplus)
#include <cstdint>
#include <cstddef>
#include <cstdbool>
#else
#include <stdint.h>
#include <stddef.h>
#include <stdbool.h>
#endif

#if !defined(SWIFT_TYPEDEFS)
# define SWIFT_TYPEDEFS 1
# if __has_include(<uchar.h>)
#  include <uchar.h>
# elif !defined(__cplusplus)
typedef uint_least16_t char16_t;
typedef uint_least32_t char32_t;
# endif
typedef float swift_float2  __attribute__((__ext_vector_type__(2)));
typedef float swift_float3  __attribute__((__ext_vector_type__(3)));
typedef float swift_float4  __attribute__((__ext_vector_type__(4)));
typedef double swift_double2  __attribute__((__ext_vector_type__(2)));
typedef double swift_double3  __attribute__((__ext_vector_type__(3)));
typedef double swift_double4  __attribute__((__ext_vector_type__(4)));
typedef int swift_int2  __attribute__((__ext_vector_type__(2)));
typedef int swift_int3  __attribute__((__ext_vector_type__(3)));
typedef int swift_int4  __attribute__((__ext_vector_type__(4)));
typedef unsigned int swift_uint2  __attribute__((__ext_vector_type__(2)));
typedef unsigned int swift_uint3  __attribute__((__ext_vector_type__(3)));
typedef unsigned int swift_uint4  __attribute__((__ext_vector_type__(4)));
#endif

#if !defined(SWIFT_PASTE)
# define SWIFT_PASTE_HELPER(x, y) x##y
# define SWIFT_PASTE(x, y) SWIFT_PASTE_HELPER(x, y)
#endif
#if !defined(SWIFT_METATYPE)
# define SWIFT_METATYPE(X) Class
#endif
#if !defined(SWIFT_CLASS_PROPERTY)
# if __has_feature(objc_class_property)
#  define SWIFT_CLASS_PROPERTY(...) __VA_ARGS__
# else
#  define SWIFT_CLASS_PROPERTY(...)
# endif
#endif

#if __has_attribute(objc_runtime_name)
# define SWIFT_RUNTIME_NAME(X) __attribute__((objc_runtime_name(X)))
#else
# define SWIFT_RUNTIME_NAME(X)
#endif
#if __has_attribute(swift_name)
# define SWIFT_COMPILE_NAME(X) __attribute__((swift_name(X)))
#else
# define SWIFT_COMPILE_NAME(X)
#endif
#if __has_attribute(objc_method_family)
# define SWIFT_METHOD_FAMILY(X) __attribute__((objc_method_family(X)))
#else
# define SWIFT_METHOD_FAMILY(X)
#endif
#if __has_attribute(noescape)
# define SWIFT_NOESCAPE __attribute__((noescape))
#else
# define SWIFT_NOESCAPE
#endif
#if __has_attribute(ns_consumed)
# define SWIFT_RELEASES_ARGUMENT __attribute__((ns_consumed))
#else
# define SWIFT_RELEASES_ARGUMENT
#endif
#if __has_attribute(warn_unused_result)
# define SWIFT_WARN_UNUSED_RESULT __attribute__((warn_unused_result))
#else
# define SWIFT_WARN_UNUSED_RESULT
#endif
#if __has_attribute(noreturn)
# define SWIFT_NORETURN __attribute__((noreturn))
#else
# define SWIFT_NORETURN
#endif
#if !defined(SWIFT_CLASS_EXTRA)
# define SWIFT_CLASS_EXTRA
#endif
#if !defined(SWIFT_PROTOCOL_EXTRA)
# define SWIFT_PROTOCOL_EXTRA
#endif
#if !defined(SWIFT_ENUM_EXTRA)
# define SWIFT_ENUM_EXTRA
#endif
#if !defined(SWIFT_CLASS)
# if __has_attribute(objc_subclassing_restricted)
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_subclassing_restricted)) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# else
#  define SWIFT_CLASS(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
#  define SWIFT_CLASS_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_CLASS_EXTRA
# endif
#endif
#if !defined(SWIFT_RESILIENT_CLASS)
# if __has_attribute(objc_class_stub)
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME) __attribute__((objc_class_stub))
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) __attribute__((objc_class_stub)) SWIFT_CLASS_NAMED(SWIFT_NAME)
# else
#  define SWIFT_RESILIENT_CLASS(SWIFT_NAME) SWIFT_CLASS(SWIFT_NAME)
#  define SWIFT_RESILIENT_CLASS_NAMED(SWIFT_NAME) SWIFT_CLASS_NAMED(SWIFT_NAME)
# endif
#endif

#if !defined(SWIFT_PROTOCOL)
# define SWIFT_PROTOCOL(SWIFT_NAME) SWIFT_RUNTIME_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
# define SWIFT_PROTOCOL_NAMED(SWIFT_NAME) SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_PROTOCOL_EXTRA
#endif

#if !defined(SWIFT_EXTENSION)
# define SWIFT_EXTENSION(M) SWIFT_PASTE(M##_Swift_, __LINE__)
#endif

#if !defined(OBJC_DESIGNATED_INITIALIZER)
# if __has_attribute(objc_designated_initializer)
#  define OBJC_DESIGNATED_INITIALIZER __attribute__((objc_designated_initializer))
# else
#  define OBJC_DESIGNATED_INITIALIZER
# endif
#endif
#if !defined(SWIFT_ENUM_ATTR)
# if defined(__has_attribute) && __has_attribute(enum_extensibility)
#  define SWIFT_ENUM_ATTR(_extensibility) __attribute__((enum_extensibility(_extensibility)))
# else
#  define SWIFT_ENUM_ATTR(_extensibility)
# endif
#endif
#if !defined(SWIFT_ENUM)
# define SWIFT_ENUM(_type, _name, _extensibility) enum _name : _type _name; enum SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# if __has_feature(generalized_swift_name)
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) enum _name : _type _name SWIFT_COMPILE_NAME(SWIFT_NAME); enum SWIFT_COMPILE_NAME(SWIFT_NAME) SWIFT_ENUM_ATTR(_extensibility) SWIFT_ENUM_EXTRA _name : _type
# else
#  define SWIFT_ENUM_NAMED(_type, _name, SWIFT_NAME, _extensibility) SWIFT_ENUM(_type, _name, _extensibility)
# endif
#endif
#if !defined(SWIFT_UNAVAILABLE)
# define SWIFT_UNAVAILABLE __attribute__((unavailable))
#endif
#if !defined(SWIFT_UNAVAILABLE_MSG)
# define SWIFT_UNAVAILABLE_MSG(msg) __attribute__((unavailable(msg)))
#endif
#if !defined(SWIFT_AVAILABILITY)
# define SWIFT_AVAILABILITY(plat, ...) __attribute__((availability(plat, __VA_ARGS__)))
#endif
#if !defined(SWIFT_WEAK_IMPORT)
# define SWIFT_WEAK_IMPORT __attribute__((weak_import))
#endif
#if !defined(SWIFT_DEPRECATED)
# define SWIFT_DEPRECATED __attribute__((deprecated))
#endif
#if !defined(SWIFT_DEPRECATED_MSG)
# define SWIFT_DEPRECATED_MSG(...) __attribute__((deprecated(__VA_ARGS__)))
#endif
#if __has_feature(attribute_diagnose_if_objc)
# define SWIFT_DEPRECATED_OBJC(Msg) __attribute__((diagnose_if(1, Msg, "warning")))
#else
# define SWIFT_DEPRECATED_OBJC(Msg) SWIFT_DEPRECATED_MSG(Msg)
#endif
#if defined(__OBJC__)
#if !defined(IBSegueAction)
# define IBSegueAction
#endif
#endif
#if !defined(SWIFT_EXTERN)
# if defined(__cplusplus)
#  define SWIFT_EXTERN extern "C"
# else
#  define SWIFT_EXTERN extern
# endif
#endif
#if !defined(SWIFT_CALL)
# define SWIFT_CALL __attribute__((swiftcall))
#endif
#if defined(__cplusplus)
#if !defined(SWIFT_NOEXCEPT)
# define SWIFT_NOEXCEPT noexcept
#endif
#else
#if !defined(SWIFT_NOEXCEPT)
# define SWIFT_NOEXCEPT 
#endif
#endif
#if defined(__cplusplus)
#if !defined(SWIFT_CXX_INT_DEFINED)
#define SWIFT_CXX_INT_DEFINED
namespace swift {
using Int = ptrdiff_t;
using UInt = size_t;
}
#endif
#endif
#if defined(__OBJC__)
#if __has_feature(modules)
#if __has_warning("-Watimport-in-framework-header")
#pragma clang diagnostic ignored "-Watimport-in-framework-header"
#endif
@import CoreFoundation;
@import Foundation;
@import ObjectiveC;
@import UIKit;
#endif

#endif
#pragma clang diagnostic ignored "-Wproperty-attribute-mismatch"
#pragma clang diagnostic ignored "-Wduplicate-method-arg"
#if __has_warning("-Wpragma-clang-attribute")
# pragma clang diagnostic ignored "-Wpragma-clang-attribute"
#endif
#pragma clang diagnostic ignored "-Wunknown-pragmas"
#pragma clang diagnostic ignored "-Wnullability"
#pragma clang diagnostic ignored "-Wdollar-in-identifier-extension"

#if __has_attribute(external_source_symbol)
# pragma push_macro("any")
# undef any
# pragma clang attribute push(__attribute__((external_source_symbol(language="Swift", defined_in="YandexMobileAdsInstream",generated_declaration))), apply_to=any(function,enum,objc_interface,objc_category,objc_protocol))
# pragma pop_macro("any")
#endif

#if defined(__OBJC__)

/// Describes amount and current position of ad in ad pod.
SWIFT_PROTOCOL_NAMED("AdPodInfo")
@protocol YMAAdPodInfo
/// Total number of ads in the pod.
@property (nonatomic, readonly) NSInteger adsCount;
/// The position of ad within an ad pod.
@property (nonatomic, readonly) NSInteger adPosition;
@end

@protocol YMAInstreamAdBreakDelegate;
@protocol YMAInstreamAdBreak;
@protocol YMAInstreamAdPlayer;
@class YMAInstreamAdView;

/// This class is responsible for playing inroll ad breaks.
SWIFT_PROTOCOL_NAMED("Inroll")
@protocol YMAInroll
/// This object will be notified about the inroll playback events.
@property (nonatomic, strong) id <YMAInstreamAdBreakDelegate> _Nullable delegate;
/// <code>InstreamAdBreak</code> associated with this inroll.
@property (nonatomic, readonly, strong) id <YMAInstreamAdBreak> _Nonnull instreamAdBreak;
/// Prepare inroll playback. Note that <code>prepare</code> should always be called before <code>play</code> method.
/// \param adPlayer player to play inroll.
///
- (void)prepareWith:(id <YMAInstreamAdPlayer> _Nonnull)adPlayer;
/// Start inroll playback. Note that you can call play only on a prepared inroll.
/// \param adView the view in which inroll will be displayed.
///
- (void)playWith:(YMAInstreamAdView * _Nonnull)adView;
/// Pause inroll playback.
- (void)pause;
/// Resume paused inroll playback.
- (void)resume;
/// Invalidate inroll playback. Call this method right before ad player is invalidated.
/// To resume playback after invalidation you should prepare and start inroll again.
- (void)invalidate;
@end


/// InrollQueue provides ordered set of inrolls.
SWIFT_PROTOCOL_NAMED("InrollQueue")
@protocol YMAInrollQueue
/// Returns count of remaining inrolls in queue.
@property (nonatomic, readonly) NSInteger count;
/// Returns next introll in the queue or nil if the queue is empty.
- (id <YMAInroll> _Nullable)poll SWIFT_WARN_UNUSED_RESULT;
@end

@protocol YMAInstreamAd;

/// InrollQueueProvider provides queue of inrolls.
SWIFT_CLASS_NAMED("InrollQueueProvider")
@interface YMAInrollQueueProvider : NSObject
- (nonnull instancetype)initWithAd:(id <YMAInstreamAd> _Nonnull)ad;
/// Returns the <code>InrollQueue</code> of inrolls. Note that inrolls will be sorted in their position order.
- (id <YMAInrollQueue> _Nonnull)queue SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// Represents an instream ad.
SWIFT_PROTOCOL_NAMED("InstreamAd")
@protocol YMAInstreamAd
/// Array of ad breaks of type <code>InstreamAdBreak</code>.
@property (nonatomic, readonly, copy) NSArray<id <YMAInstreamAdBreak>> * _Nonnull adBreaks;
@end

@protocol YMAInstreamAdBinderDelegate;
@protocol YMAVideoPlayer;

/// InstreamAdBinder automatically presents instream ads.
SWIFT_CLASS_NAMED("InstreamAdBinder")
@interface YMAInstreamAdBinder : NSObject
/// This object will be notified about the instream ad lifecycle.
@property (nonatomic, weak) id <YMAInstreamAdBinderDelegate> _Nullable delegate;
/// Initializes a new object of the InstreamAdBinder class.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     ad: An ad loaded with <code>InstreamAdLoader</code>.
///   </li>
///   <li>
///     adPlayer: Player that manages ad playback.
///   </li>
///   <li>
///     videoPlayer: Player that manages content video playback.
///   </li>
/// </ul>
- (nonnull instancetype)initWithAd:(id <YMAInstreamAd> _Nonnull)ad adPlayer:(id <YMAInstreamAdPlayer> _Nonnull)adPlayer videoPlayer:(id <YMAVideoPlayer> _Nonnull)videoPlayer;
/// Binds <code>InstreamAdBinder</code> to the ad view and starts ad playback.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     adView: <code>InstreamAdView</code> that contains ad and content player views.
///   </li>
/// </ul>
- (void)bindWith:(YMAInstreamAdView * _Nonnull)adView;
/// Unbinds binder from the ad view and frees resources.
- (void)unbind;
/// This method should be called if corresponding <code>VideoPlayer</code> can not be used anymore.
- (void)invalidateVideoPlayer;
/// This method should be called if corresponding <code>InstreamAdPlayer</code> can not be used anymore.
- (void)invalidateAdPlayer;
/// Preloads the ad.
/// Use this method before calling <code>bind</code>.
- (void)prepareAd;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end



/// This object will be notified about an instream ad lifecycle.
SWIFT_PROTOCOL_NAMED("InstreamAdBinderDelegate")
@protocol YMAInstreamAdBinderDelegate
/// Notifies about the completion of an instream ad playback.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     binder: Binder associated with the ad.
///   </li>
///   <li>
///     instreamAd: Instream ad.
///   </li>
/// </ul>
- (void)instreamAdBinder:(YMAInstreamAdBinder * _Nonnull)binder didComplete:(id <YMAInstreamAd> _Nonnull)instreamAd;
/// Notifies that preroll (if it exists in ad) is prepared.
/// If no preroll exists, callback will be fired immediately after <code>InstreamAdBinder.prepareAd()</code> call.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     binder: Binder associated with the ad.
///   </li>
///   <li>
///     instreamAd: Instream ad.
///   </li>
/// </ul>
- (void)instreamAdBinder:(YMAInstreamAdBinder * _Nonnull)binder didPrepare:(id <YMAInstreamAd> _Nonnull)instreamAd;
/// Notifies about error occured during instream ad playback.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     binder: Binder associated with the ad.
///   </li>
///   <li>
///     instreamAd: Instream ad.
///   </li>
///   <li>
///     error: Error object.
///   </li>
/// </ul>
- (void)instreamAdBinder:(YMAInstreamAdBinder * _Nonnull)binder didFailToPlay:(id <YMAInstreamAd> _Nonnull)instreamAd with:(NSError * _Nonnull)error;
@end

@class NSString;
@class YMAInstreamAdBreakPosition;

/// This class describes an ad break.
SWIFT_PROTOCOL_NAMED("InstreamAdBreak")
@protocol YMAInstreamAdBreak
/// Type of an ad break. See allowed values in <code>InstreamAdBreakType</code> class.
@property (nonatomic, readonly, copy) NSString * _Nonnull type;
/// <code>InstreamAdBreakPosition</code> object that represents content time offset.
@property (nonatomic, readonly, strong) YMAInstreamAdBreakPosition * _Nonnull position;
@end


/// This protocol notifies about events occuring during instream ad break playback.
SWIFT_PROTOCOL_NAMED("InstreamAdBreakDelegate")
@protocol YMAInstreamAdBreakDelegate
/// Notifies that ad break is prepared.
/// \param adBreak prepared ad break.
///
- (void)instreamAdBreakDidPrepare:(id <YMAInstreamAdBreak> _Nonnull)adBreak;
/// Notifies that ad break is started.
/// \param adBreak started ad break.
///
- (void)instreamAdBreakDidStart:(id <YMAInstreamAdBreak> _Nonnull)adBreak;
/// Notifies about completion of instream ad break playback.
/// \param adBreak completed ad break.
///
- (void)instreamAdBreakDidComplete:(id <YMAInstreamAdBreak> _Nonnull)adBreak;
/// Notifies about error occured during instream ad break playback.
/// \param adBreak failed ad break.
///
- (void)instreamAdBreakDidError:(id <YMAInstreamAdBreak> _Nonnull)adBreak;
@end


/// InstreamAdBreakPosition specifies ad position in the content video.
SWIFT_CLASS_NAMED("InstreamAdBreakPosition")
@interface YMAInstreamAdBreakPosition : NSObject
/// Type of the position. See allowed values in <code>InstreamAdBreakPositionType</code>.
@property (nonatomic, readonly, copy) NSString * _Nonnull type;
/// Value of the position.
@property (nonatomic, readonly) NSInteger value;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// InstreamAdBreakPositionType specifies type of the ad position in the content video.
SWIFT_CLASS_NAMED("InstreamAdBreakPositionType")
@interface YMAInstreamAdBreakPositionType : NSObject
/// Percents position type.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull percents;)
+ (NSString * _Nonnull)percents SWIFT_WARN_UNUSED_RESULT;
/// Milliseconds position type.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull milliseconds;)
+ (NSString * _Nonnull)milliseconds SWIFT_WARN_UNUSED_RESULT;
/// Position position type.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull position;)
+ (NSString * _Nonnull)position SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// InstreamAdRequestConfiguration defines ad request.
SWIFT_CLASS_NAMED("InstreamAdBreakRequestConfiguration")
@interface YMAInstreamAdBreakRequestConfiguration : NSObject
/// URL for ad break loading
@property (nonatomic, readonly, copy) NSString * _Nonnull adBreakURL;
/// Custom request parameters.
@property (nonatomic, readonly, copy) NSDictionary<NSString *, NSString *> * _Nullable parameters;
/// Creates <code>InstreamAdBreakRequestConfiguration</code>.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     adBreakUrl: URL for ad break loading.
///   </li>
///   <li>
///     parameters: custom request parameters.
///   </li>
/// </ul>
- (nonnull instancetype)initWithAdBreakURL:(NSString * _Nonnull)adBreakURL parameters:(NSDictionary<NSString *, NSString *> * _Nullable)parameters OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// InstreamAdBreakType specifies type of the ad break.
SWIFT_CLASS_NAMED("InstreamAdBreakType")
@interface YMAInstreamAdBreakType : NSObject
/// Preroll ad break type.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull preroll;)
+ (NSString * _Nonnull)preroll SWIFT_WARN_UNUSED_RESULT;
/// Midroll ad break type.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull midroll;)
+ (NSString * _Nonnull)midroll SWIFT_WARN_UNUSED_RESULT;
/// Postroll ad break type.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull postroll;)
+ (NSString * _Nonnull)postroll SWIFT_WARN_UNUSED_RESULT;
/// Inroll ad break type.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull inroll;)
+ (NSString * _Nonnull)inroll SWIFT_WARN_UNUSED_RESULT;
/// Pauseroll ad break type.
SWIFT_CLASS_PROPERTY(@property (nonatomic, class, readonly, copy) NSString * _Nonnull pauseroll;)
+ (NSString * _Nonnull)pauseroll SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// Objects that implement this protocol allow load inroll ad.
SWIFT_PROTOCOL_NAMED("InstreamAdInrollLoaderProvider")
@protocol YMAInstreamAdInrollLoaderProvider
/// Loads an inroll ad with a request configuration.
- (void)loadInrollWithConfiguration:(YMAInstreamAdBreakRequestConfiguration * _Nonnull)configuration;
@end

@protocol YMAInstreamAdLoaderDelegate;
@class YMAInstreamAdRequestConfiguration;

/// InstreamAdLoader loads instream ads.
SWIFT_CLASS_NAMED("InstreamAdLoader")
@interface YMAInstreamAdLoader : NSObject
/// This object will be notified about about loading result.
@property (nonatomic, weak) id <YMAInstreamAdLoaderDelegate> _Nullable delegate;
/// InstreamAdLoader loads instream ads.
- (nonnull instancetype)init;
/// Loads an instream ad with a request configuration.
- (void)loadInstreamAdWithConfiguration:(YMAInstreamAdRequestConfiguration * _Nonnull)configuration;
@end


@interface YMAInstreamAdLoader (SWIFT_EXTENSION(YandexMobileAdsInstream)) <YMAInstreamAdInrollLoaderProvider>
- (void)loadInrollWithConfiguration:(YMAInstreamAdBreakRequestConfiguration * _Nonnull)configuration;
@end



/// This object will be notified about result of an ad download.
SWIFT_PROTOCOL_NAMED("InstreamAdLoaderDelegate")
@protocol YMAInstreamAdLoaderDelegate
/// Notifies that <code>InstreamAd</code> was loaded.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     instreamAdLoader: Loader that loaded the ad.
///   </li>
///   <li>
///     ad: Loaded ad.
///   </li>
/// </ul>
- (void)instreamAdLoader:(YMAInstreamAdLoader * _Nonnull)instreamAdLoader didLoad:(id <YMAInstreamAd> _Nonnull)ad;
/// Notifies that <code>InstreamAd</code> failed to load.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     instreamAdLoader: Loader that failed to load the ad.
///   </li>
///   <li>
///     reason: Failure reason.
///   </li>
/// </ul>
- (void)instreamAdLoader:(YMAInstreamAdLoader * _Nonnull)instreamAdLoader didFailToLoad:(NSString * _Nonnull)reason;
@end

@protocol YMAInstreamAdPlayerDelegate;
@protocol YMAVideoAd;

/// This protocol is used for playing instream ads.
SWIFT_PROTOCOL_NAMED("InstreamAdPlayer")
@protocol YMAInstreamAdPlayer
/// Delegate object. For each event that happend during the playback, the corresponding callback must be called on this object.
@property (nonatomic, weak) id <YMAInstreamAdPlayerDelegate> _Nullable delegate;
/// Indicates whether the player is playing an ad.
@property (nonatomic, readonly) BOOL isPlaying;
/// Ad video duration in seconds.
@property (nonatomic, readonly) NSTimeInterval duration;
/// Ad video position in seconds.
@property (nonatomic, readonly) NSTimeInterval position;
/// Prepares player to play passed media file.
/// \param videoAd Object providing information about current advertising.
/// This object should be passed back in all callbacks to InstreamAdPlayerDelegate.
///
- (void)prepareAdWith:(id <YMAVideoAd> _Nonnull)videoAd;
/// Starts the ad.
- (void)playAd;
/// Pauses the ad.
- (void)pauseAd;
/// Resumes the ad.
- (void)resumeAd;
/// Stops the ad.
- (void)stopAd;
/// Sets ad player volume to the passed value.
/// \param level level of volume to set. The value should be between 0 and 1.
///
- (void)setVolume:(double)level;
@end

@class YMAInstreamAdPlayerError;

/// Ad player delegate.
/// For each event that happend during the ad playback, the corresponding callback must be called on this object.
SWIFT_PROTOCOL_NAMED("InstreamAdPlayerDelegate")
@protocol YMAInstreamAdPlayerDelegate
/// Fire this callback when instream ad player is ready to present the mediaFile.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     player: The ad player.
///   </li>
///   <li>
///     videoAd: Prepared video ad.
///   </li>
/// </ul>
- (void)instreamAdPlayer:(id <YMAInstreamAdPlayer> _Nonnull)player didPrepare:(id <YMAVideoAd> _Nonnull)videoAd;
/// Fire this callback when instream ad player started the mediaFile.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     player: The ad player.
///   </li>
///   <li>
///     videoAd: Started video ad.
///   </li>
/// </ul>
- (void)instreamAdPlayer:(id <YMAInstreamAdPlayer> _Nonnull)player didStart:(id <YMAVideoAd> _Nonnull)videoAd;
/// Fire this callback when instream ad player paused the mediaFile.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     player: The ad player.
///   </li>
///   <li>
///     videoAd: Paused video ad.
///   </li>
/// </ul>
- (void)instreamAdPlayer:(id <YMAInstreamAdPlayer> _Nonnull)player didPause:(id <YMAVideoAd> _Nonnull)videoAd;
/// Fire this callback when instream ad player resumed the mediaFile.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     player: The ad player.
///   </li>
///   <li>
///     videoAd: Resumed video ad.
///   </li>
/// </ul>
- (void)instreamAdPlayer:(id <YMAInstreamAdPlayer> _Nonnull)player didResume:(id <YMAVideoAd> _Nonnull)videoAd;
/// Fire this callback when instream ad player completed the mediaFile.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     player: The ad player.
///   </li>
///   <li>
///     videoAd: Completed video ad.
///   </li>
/// </ul>
- (void)instreamAdPlayer:(id <YMAInstreamAdPlayer> _Nonnull)player didComplete:(id <YMAVideoAd> _Nonnull)videoAd;
/// Fire this callback when instream ad player stopped the mediaFile.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     player: The ad player.
///   </li>
///   <li>
///     videoAd: Stopped video ad.
///   </li>
/// </ul>
- (void)instreamAdPlayer:(id <YMAInstreamAdPlayer> _Nonnull)player didStop:(id <YMAVideoAd> _Nonnull)videoAd;
/// Fire this callback if an error occures in instream ad player while preparing or playing the mediaFile.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     player: The ad player.
///   </li>
///   <li>
///     videoAd: Video ad that failed to play.
///   </li>
/// </ul>
- (void)instreamAdPlayer:(id <YMAInstreamAdPlayer> _Nonnull)player didFailVideoAd:(id <YMAVideoAd> _Nonnull)videoAd withError:(YMAInstreamAdPlayerError * _Nonnull)error;
/// Fire this callback when instream ad player volume was updated.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     player: The ad player.
///   </li>
///   <li>
///     videoAd:  Muted video ad.
///   </li>
///   <li>
///     volume: Volume value that was set to the player
///   </li>
/// </ul>
- (void)instreamAdPlayer:(id <YMAInstreamAdPlayer> _Nonnull)player videoAd:(id <YMAVideoAd> _Nonnull)videoAd didUpdated:(double)volume;
@end


SWIFT_CLASS_NAMED("InstreamAdPlayerError")
@interface YMAInstreamAdPlayerError : NSObject
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end

typedef SWIFT_ENUM_NAMED(NSInteger, YMAInstreamAdPlayerErrorReason, "InstreamAdPlayerErrorReason", open) {
/// Video playing failed becuse recived file wasn’t a valid video file.
  YMAInstreamAdPlayerErrorReasonInvalidFile = 0,
/// Video playing failed because video file wasn’t found.
  YMAInstreamAdPlayerErrorReasonFileNotFound = 1,
/// Video playing failed bacause of loading video file timeout.
  YMAInstreamAdPlayerErrorReasonTimedOut = 2,
/// Video playing failed because network is unavailable.
  YMAInstreamAdPlayerErrorReasonNetwrokUnavailable = 3,
/// Video playing failed because of unsupported file format.
  YMAInstreamAdPlayerErrorReasonUnsupportedFileFormat = 4,
/// Video playing failed because of unsupported codec.
  YMAInstreamAdPlayerErrorReasonUnsupportedCodec = 5,
/// Video playing failed due to an unknown error.
  YMAInstreamAdPlayerErrorReasonUnknown = 6,
};


/// InstreamAdRequestConfiguration defines ad request.
SWIFT_CLASS_NAMED("InstreamAdRequestConfiguration")
@interface YMAInstreamAdRequestConfiguration : NSObject
/// Unique ID created in the Partner interface.
@property (nonatomic, readonly, copy) NSString * _Nonnull pageID;
/// Category identifier.
@property (nonatomic, readonly, copy) NSString * _Nonnull categoryID;
/// Custom request parameters.
@property (nonatomic, readonly, copy) NSDictionary<NSString *, NSString *> * _Nullable parameters;
/// Creates <code>InstreamAdRequestConfiguration</code>.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     pageID: unique ID created in the Partner interface.
///   </li>
///   <li>
///     categoryID: category identifier.
///   </li>
///   <li>
///     parameters: custom request parameters.
///   </li>
/// </ul>
- (nonnull instancetype)initWithPageID:(NSString * _Nonnull)pageID categoryID:(NSString * _Nonnull)categoryID parameters:(NSDictionary<NSString *, NSString *> * _Nullable)parameters OBJC_DESIGNATED_INITIALIZER;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// Describes whether an ad is skippable and a skip offset.
SWIFT_PROTOCOL_NAMED("InstreamAdSkipInfo")
@protocol YMAInstreamAdSkipInfo
/// Indicates whether the ad break can be skipped by the user.
@property (nonatomic, readonly) BOOL isSkippable;
/// Number of seconds of ad break playback before it becomes skippable.
@property (nonatomic, readonly) NSTimeInterval skipOffset;
@end

@class NSCoder;

/// Used by <code>InstreamAdBinder</code> to bind views hierarchy to an instream ad.
/// Should contain content and ad players as subviews.
SWIFT_CLASS_NAMED("InstreamAdView")
@interface YMAInstreamAdView : UIView
- (nonnull instancetype)initWithFrame:(CGRect)frame OBJC_DESIGNATED_INITIALIZER;
- (nullable instancetype)initWithCoder:(NSCoder * _Nonnull)coder OBJC_DESIGNATED_INITIALIZER;
@end


/// Describes methods that should be called on custom click API state changes.
SWIFT_PROTOCOL_NAMED("InstreamCustomClickConnector")
@protocol YMAInstreamCustomClickConnector
/// The method should be called as a reaction to user interaction beginning
- (void)connectToLeaveApplicationEvent;
/// The method should be called as a reaction to user interaction ending.
- (void)connectToReturnToApplicationEvent;
@end

@class NSURL;

/// Any object conforming to CustomClickHandler protocol can open provided Url as reaction to user interaction with ad.
SWIFT_PROTOCOL_NAMED("InstreamCustomClickHandler")
@protocol YMAInstreamCustomClickHandler
/// Method implementation can open Url as reaction to user interaction with ad.
/// <ul>
///   <li>
///     Parameters:
///   </li>
///   <li>
///     url: Url corresponding to ad or ad asset tapped by user.
///   </li>
///   <li>
///     instreamAdBreak: AdBreak which was clicked
///   </li>
///   <li>
///     customClickConnector: Connector controls custom click API states
///   </li>
/// </ul>
- (void)handleCustomClickWith:(NSURL * _Nonnull)url instreamAdBreak:(id <YMAInstreamAdBreak> _Nonnull)instreamAdBreak customClickConnector:(id <YMAInstreamCustomClickConnector> _Nonnull)customClickConnector;
@end


/// Objects that implement this protocol allow custom click handling.
SWIFT_PROTOCOL_NAMED("InstreamCustomClickable")
@protocol YMAInstreamCustomClickable
/// Sets an InstreamCustomClickHandler
/// \param customClickHandler Custom click handler.
///
- (void)setCustomClickHandler:(id <YMAInstreamCustomClickHandler> _Nullable)customClickHandler;
@end

/// Error description.
typedef SWIFT_ENUM_NAMED(NSInteger, YMAInstreamErrorCode, "InstreamErrorCode", open) {
/// This error occurs when the server answer was incorrect.
  YMAInstreamErrorCodeBadResponse = 0,
/// This error occurs when a <code>VideoPlayer</code> implementation calls error callback.
  YMAInstreamErrorCodeVideoPlayerError = 1,
};


/// Represents an instream ad.
SWIFT_CLASS_NAMED("InstreamVideoAd")
@interface YMAInstreamVideoAd : NSObject <YMAInstreamAd>
/// Defines an array of ad breaks inside of an instream ad.
@property (nonatomic, readonly, copy) NSArray<id <YMAInstreamAdBreak>> * _Nonnull adBreaks;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


@interface YMAInstreamVideoAd (SWIFT_EXTENSION(YandexMobileAdsInstream)) <YMAInstreamCustomClickable>
- (void)setCustomClickHandler:(id <YMAInstreamCustomClickHandler> _Nullable)customClickHandler;
@end


/// This protocol allows to get VideoAd from AdBreak
SWIFT_PROTOCOL_NAMED("InstreamVideoAdsProvider")
@protocol YMAInstreamVideoAdsProvider
/// Returns VideoAd array.
@property (nonatomic, readonly, copy) NSArray<id <YMAVideoAd>> * _Nonnull videoAds;
@end


/// Describes a media file for an instream ad.
SWIFT_PROTOCOL_NAMED("MediaFile")
@protocol YMAMediaFile
/// Media file height.
@property (nonatomic, readonly) NSInteger adHeight;
/// Media file width.
@property (nonatomic, readonly) NSInteger adWidth;
/// Describes the media file url.
@property (nonatomic, readonly, copy) NSString * _Nonnull url;
@end


/// MobileInstreamAds manages settings of the YandexMobileAdsInstream library.
SWIFT_CLASS_NAMED("MobileInstreamAds")
@interface YMAMobileInstreamAds : NSObject
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
/// Indicates whether playback controls are enabled.
/// \param enabled If set to <code>true</code>, playback controls will be enabled, otherwise disabled. Default value is <code>true</code>.
///
+ (void)setControlsEnabled:(BOOL)enabled;
/// Indicates wheather  discard ad group on skip is enabled.
/// \param enabled If set to <code>true</code>, ad break will be discarded on skip. Default value is <code>false</code>.
///
+ (void)setDiscardAdGroupOnSkipEnabled:(BOOL)enabled;
@end


/// This class is responsible for playing pauseroll ad breaks.
SWIFT_PROTOCOL_NAMED("Pauseroll")
@protocol YMAPauseroll
/// This object will be notified about the pauseroll playback events.
@property (nonatomic, strong) id <YMAInstreamAdBreakDelegate> _Nullable delegate;
/// <code>InstreamAdBreak</code> associated with this pauseroll.
@property (nonatomic, readonly, strong) id <YMAInstreamAdBreak> _Nonnull instreamAdBreak;
/// Prepare pauseroll playback. Note that <code>prepare</code> should always be called before <code>play</code> method.
/// \param adPlayer player to play pauseroll.
///
- (void)prepareWith:(id <YMAInstreamAdPlayer> _Nonnull)adPlayer;
/// Start pauseroll playback. Note that you can call play only on a prepared pauseroll.
/// \param adView the view in which pauseroll will be displayed.
///
- (void)playWith:(YMAInstreamAdView * _Nonnull)adView;
/// Pause pauseroll playback.
- (void)pause;
/// Resume paused pauseroll playback.
- (void)resume;
/// Invalidate pauseroll playback. Call this method right before ad player is invalidated.
/// To resume playback after invalidation you should prepare and start pauseroll again.
- (void)invalidate;
@end


/// PauserollQueue provides ordered set of pauserolls.
SWIFT_PROTOCOL_NAMED("PauserollQueue")
@protocol YMAPauserollQueue
/// Returns count of remaining pauserolls in queue.
@property (nonatomic, readonly) NSInteger count;
/// Returns next pauseroll in the queue or nil if the queue is empty.
- (id <YMAPauseroll> _Nullable)poll SWIFT_WARN_UNUSED_RESULT;
@end


/// PauserollQueueProvider provides queue of pauserolls.
SWIFT_CLASS_NAMED("PauserollQueueProvider")
@interface YMAPauserollQueueProvider : NSObject
- (nonnull instancetype)initWithAd:(id <YMAInstreamAd> _Nonnull)ad;
/// Returns the <code>PauserollQueue</code> of pauserolls. Note that pauserolls will be sorted in their position order.
- (id <YMAPauserollQueue> _Nonnull)queue SWIFT_WARN_UNUSED_RESULT;
- (nonnull instancetype)init SWIFT_UNAVAILABLE;
+ (nonnull instancetype)new SWIFT_UNAVAILABLE_MSG("-init is unavailable");
@end


/// Describes a skip offset of an ad.
SWIFT_PROTOCOL_NAMED("SkipInfo")
@protocol YMASkipInfo
/// Number of seconds of ad break playback before it becomes skippable.
@property (nonatomic, readonly) NSTimeInterval skipOffset;
@end




/// Provides information about video ad.
SWIFT_PROTOCOL_NAMED("VideoAd")
@protocol YMAVideoAd
/// Describes a media file for an ad.
@property (nonatomic, readonly, strong) id <YMAMediaFile> _Nonnull mediaFile;
/// Describes amount and current position of ad in ad pod.
@property (nonatomic, readonly, strong) id <YMAAdPodInfo> _Nonnull adPodInfo;
/// Describes skip information of an ad.
@property (nonatomic, readonly, strong) id <YMASkipInfo> _Nullable skipInfo;
/// Describes information about an ad.
@property (nonatomic, readonly, copy) NSString * _Nullable adInfo;
@end

@protocol YMAVideoPlayerDelegate;

/// This protocol is used for playing content video.
SWIFT_PROTOCOL_NAMED("VideoPlayer")
@protocol YMAVideoPlayer
/// Delegate object. For each event that happend during the playback, the corresponding callback must be called on this object.
@property (nonatomic, weak) id <YMAVideoPlayerDelegate> _Nullable delegate;
/// Content video position in seconds.
@property (nonatomic, readonly) NSTimeInterval position;
/// Content video duration in seconds.
@property (nonatomic, readonly) NSTimeInterval duration;
/// Prepares player to play content video.
- (void)prepareVideo;
/// Pauses content video.
- (void)pauseVideo;
/// Resumes content video.
- (void)resumeVideo;
@end


/// Content player delegate.
/// For each event that happend during the content playback, the corresponding callback must be called on this object.
SWIFT_PROTOCOL_NAMED("VideoPlayerDelegate")
@protocol YMAVideoPlayerDelegate
/// Fire this callback when the content player prepared the content video.
/// \param videoPlayer Video player that triggered the event.
///
- (void)videoPlayerDidPrepare:(id <YMAVideoPlayer> _Nonnull)videoPlayer;
/// Fire this callback when the content player completed the content video.
/// \param videoPlayer Video player that triggered the event.
///
- (void)videoPlayerDidComplete:(id <YMAVideoPlayer> _Nonnull)videoPlayer;
/// Fire this callback when the content player resumed the content video.
/// \param videoPlayer Video player that triggered the event.
///
- (void)videoPlayerDidResume:(id <YMAVideoPlayer> _Nonnull)videoPlayer;
/// Fire this callback when the content player paused the content video.
/// \param videoPlayer Video player that triggered the event.
///
- (void)videoPlayerDidPause:(id <YMAVideoPlayer> _Nonnull)videoPlayer;
/// Fire this callback if the content player failed to play the content video.
/// \param videoPlayer Video player that triggered the event.
///
- (void)videoPlayerDidFail:(id <YMAVideoPlayer> _Nonnull)videoPlayer;
@end

#endif
#if defined(__cplusplus)
#endif
#if __has_attribute(external_source_symbol)
# pragma clang attribute pop
#endif
#pragma clang diagnostic pop
#endif

#else
#error unsupported Swift architecture
#endif
