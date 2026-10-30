//
// AllBinary Open License Version 1
// Copyright (c) 2011 AllBinary
// 
// By agreeing to this license you and any business entity you represent are
// legally bound to the AllBinary Open License Version 1 legal agreement.
// 
// You may obtain the AllBinary Open License Version 1 legal agreement from
// AllBinary or the root directory of AllBinary's AllBinary Platform repository.
// 
// Created By: Travis Berthelot
//  
// Generated Code Do Not Modify
// package org.allbinary.graphics.canvas.transition.progress

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const Activity = @import("android/app/Activity.zig").Activity;
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const GameFeatureImageCacheFactory = @import("org/allbinary/image/GameFeatureImageCacheFactory.zig").GameFeatureImageCacheFactory;
const PreResourceImageUtil = @import("org/allbinary/image/PreResourceImageUtil.zig").PreResourceImageUtil;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const ExceptionUtil = @import("org/allbinary/logic/java/exception/ExceptionUtil.zig").ExceptionUtil;
const Animation = @import("org/allbinary/animation/Animation.zig").Animation;
const NullAnimationFactory = @import("org/allbinary/animation/NullAnimationFactory.zig").NullAnimationFactory;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const DisplayInfoSingleton = @import("org/allbinary/graphics/displayable/DisplayInfoSingleton.zig").DisplayInfoSingleton;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const DisplayChangeEventHandler = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.zig").DisplayChangeEventHandler;
const DisplayChangeEventListener = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventListener.zig").DisplayChangeEventListener;
const ImageCacheFactory = @import("org/allbinary/image/ImageCacheFactory.zig").ImageCacheFactory;
const ImageScaleUtil = @import("org/allbinary/media/image/ImageScaleUtil.zig").ImageScaleUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const AnimationBehavior = @import("org/allbinary/animation/AnimationBehavior.zig").AnimationBehavior;
const ImageAnimation = @import("org/allbinary/animation/image/ImageAnimation.zig").ImageAnimation;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const NullRunnable = @import("org/allbinary/thread/NullRunnable.zig").NullRunnable;
const DismissTitleProgressBarRunnable = @import("org/allbinary/graphics/canvas/transition/progress/DismissTitleProgressBarRunnable.zig").DismissTitleProgressBarRunnable;
const ProgressCanvas = @import("org/allbinary/graphics/canvas/transition/progress/ProgressCanvas.zig").ProgressCanvas;
const ShowTitleProgressBarRunnable = @import("org/allbinary/graphics/canvas/transition/progress/ShowTitleProgressBarRunnable.zig").ShowTitleProgressBarRunnable;
const TitleProgressBarPortionSetProgressRunnable = @import("org/allbinary/graphics/canvas/transition/progress/TitleProgressBarPortionSetProgressRunnable.zig").TitleProgressBarPortionSetProgressRunnable;
const TitleProgressBarSetProgressRunnable = @import("org/allbinary/graphics/canvas/transition/progress/TitleProgressBarSetProgressRunnable.zig").TitleProgressBarSetProgressRunnable;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const AndroidBasicTitleProgressBar = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.canvas.transition.progress.AndroidBasicTitleProgressBar";
    base: ProgressCanvas = undefined,
    showTitleProgressBarRunnable: ?*ARunnable = null,
    dismissTitleProgressBarRunnable: ?*ARunnable = null,
    titleProgressDialogPortionSetProgressRunnable: ?*ARunnable = null,
    titleProgressDialogSetProgressRunnable: ?*ARunnable = null,
    midletActivity: ?*Activity = null,
    portion: i32 = 0,
    IMAGE: []?*Image = &.{},
    image: ?*Image = null,
    animation: ?*Animation = null,
    // Implements DisplayChangeEventListener
    pub const RESOURCE: ?*String = String.literal("ProgressImage");
    var background: i32 = 0;

    fn initFields(this: *Self) void {
        this.showTitleProgressBarRunnable = Inheritance.upcast(?*ARunnable, NullRunnable.getInstance());
        this.dismissTitleProgressBarRunnable = Inheritance.upcast(?*ARunnable, NullRunnable.getInstance());
        this.titleProgressDialogPortionSetProgressRunnable = Inheritance.upcast(?*ARunnable, NullRunnable.getInstance());
        this.titleProgressDialogSetProgressRunnable = Inheritance.upcast(?*ARunnable, NullRunnable.getInstance());
        this.midletActivity = Inheritance.upcast(?*Activity, AndroidUtil.NULL_ACTIVITY);
        this.portion = 0;
        this.IMAGE = array_N66720: { const array_N66720_array = allocator.alloc(?*Image, @intCast(4)) catch unreachable; @memset(array_N66720_array, null); break :array_N66720 array_N66720_array; };
        this.image = Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
        this.animation = Inheritance.upcast(?*Animation, Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
    }
    

    pub fn create3(title: ?*String, backgroundBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ProgressCanvas, "create3", .{ title, backgroundBasicColor, foregroundBasicColor }).*;
        this.initFields();
        _ = this.init();
        _ = Inheritance.call(DisplayChangeEventHandler.getInstance().?, "addListenerInterface", .{ this });
        const size: i32 = @as(i32, @intCast(this.IMAGE.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            this.IMAGE[@intCast(index)] = Inheritance.upcast(@TypeOf(this.IMAGE[@intCast(index)]), NullImage.NULL_IMAGE);
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn init(self: *Self) void {
        { // try
            if (AndroidBasicTitleProgressBar.background != 0) {
                _ = Inheritance.call(ResourceUtil.getInstance().?, "addResource", .{ AndroidBasicTitleProgressBar.RESOURCE, Inheritance.callStatic(Integer, "create1", .{ AndroidBasicTitleProgressBar.background }) });
                _ = GameFeatureImageCacheFactory.init();
                self.image = Inheritance.upcast(@TypeOf(self.image), Inheritance.call(ImageCacheFactory.getInstance().?, "getWithKey", .{ AndroidBasicTitleProgressBar.RESOURCE }));
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.INIT, e });
    }
    

    pub fn initActivity(self: *Self, activity: ?*Activity) void {
        { // try
            if (!Object.same(self.midletActivity, activity)) {
                self.midletActivity = activity;
                self.showTitleProgressBarRunnable = Inheritance.upcast(@TypeOf(self.showTitleProgressBarRunnable), Inheritance.callStatic(ShowTitleProgressBarRunnable, "create2", .{ self.midletActivity, self }));
                self.dismissTitleProgressBarRunnable = Inheritance.upcast(@TypeOf(self.dismissTitleProgressBarRunnable), Inheritance.callStatic(DismissTitleProgressBarRunnable, "create2", .{ self.midletActivity, self }));
                self.titleProgressDialogSetProgressRunnable = Inheritance.upcast(@TypeOf(self.titleProgressDialogSetProgressRunnable), Inheritance.callStatic(TitleProgressBarSetProgressRunnable, "create2", .{ self.midletActivity, self }));
                self.titleProgressDialogPortionSetProgressRunnable = Inheritance.upcast(@TypeOf(self.titleProgressDialogPortionSetProgressRunnable), Inheritance.callStatic(TitleProgressBarPortionSetProgressRunnable, "create2", .{ self.midletActivity, self }));
                _ = self.loadProgressImages();
            }
            _ = self.updateCurrent();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.INIT, e });
    }
    

    pub fn updateCurrent(self: *Self) void {
        { // try
            if (!Inheritance.receiver(self, "isBackground").isBackground()) {
                self.animation = Inheritance.upcast(@TypeOf(self.animation), Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
            } else if (AndroidBasicTitleProgressBar.background != 0) {
                const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
                var currentImage: ?*Image = null;
                if (displayInfo.?.isPortrait()) {
                    currentImage = Inheritance.upcast(@TypeOf(currentImage), Inheritance.call(self, "getImage", .{ 0 }));
                } else {
                    currentImage = Inheritance.upcast(@TypeOf(currentImage), Inheritance.call(self, "getImage", .{ 2 }));
                }
                if (currentImage == null) {
                    self.animation = Inheritance.upcast(@TypeOf(self.animation), Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
                } else {
                    self.animation = Inheritance.upcast(@TypeOf(self.animation), Inheritance.callStatic(ImageAnimation, "create2", .{ currentImage, AnimationBehavior.getInstance() }));
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE, e });
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onDisplayChangeEvent(self: *Self, displayChangeEvent: ?*DisplayChangeEvent) void {
        _ = displayChangeEvent;
        { // try
            _ = self.loadProgressImages();
            _ = self.updateCurrent();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION_LABEL + Inheritance.call(ExceptionUtil.getInstance().?, "getStackTrace", .{ e }), self, Inheritance.fieldPointer(self, "canvasStrings").*.?.ON_DISPLAY_CHANGE_EVENT });
//             self.animation = Inheritance.upcast(@TypeOf(self.animation), Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
    }
    

    pub fn loadProgressImages(self: *Self) void {
        { // try
            const displayInfo: ?*DisplayInfoSingleton = Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.getInstance());
            const lastWidth: i32 = displayInfo.?.getLastWidth();
            const lastHeight: i32 = displayInfo.?.getLastHeight();
            if (Inheritance.call(displayInfo.?, "isPortraitWH", .{ lastWidth, lastHeight })) {
                _ = Inheritance.call(self, "setImages", .{ 0, lastWidth, lastHeight });
            } else {
                _ = Inheritance.call(self, "setImages", .{ 2, lastWidth, lastHeight });
            }
        }
        // catch (IllegalArgumentException e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ String.plus(String.literal("IllegalArgumentException "), Inheritance.call(ExceptionUtil.getInstance().?, "getStackTrace", .{ e })), self, String.literal("loadProgressImages") });
//             self.animation = Inheritance.upcast(@TypeOf(self.animation), Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION_LABEL + Inheritance.call(ExceptionUtil.getInstance().?, "getStackTrace", .{ e }), self, String.literal("loadProgressImages") });
//             self.animation = Inheritance.upcast(@TypeOf(self.animation), Inheritance.call(NullAnimationFactory.getFactoryInstance().?, "getInstance", .{ 0 }));
    }
    

    pub fn isInitialized(self: *Self) bool {
        if (!Object.same(self.midletActivity, AndroidUtil.NULL_ACTIVITY)) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn start(self: *Self) void {
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.START_METHOD_NAME });
            _ = self.base.start();
            _ = Inheritance.call(self.midletActivity.?, "runOnUiThread", .{ self.showTitleProgressBarRunnable });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.START_METHOD_NAME, e });
    }
    

    pub fn end(self: *Self) void {
        { // try
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.END_METHOD_NAME });
            _ = Inheritance.call(self.midletActivity.?, "runOnUiThread", .{ self.dismissTitleProgressBarRunnable });
            _ = self.base.end();
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.END_METHOD_NAME, e });
    }
    

    pub fn addEarlyPortion(self: *Self, value: i32, text: ?*String, index: i32) void {
        { // try
            self.portion = value;
            _ = Inheritance.call(&self.base, "addEarlyPortion", .{ value, text, index });
            if (!Object.same(self.midletActivity, AndroidUtil.NULL_ACTIVITY)) {
                _ = Inheritance.call(self.midletActivity.?, "runOnUiThread", .{ self.titleProgressDialogPortionSetProgressRunnable });
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "ADD_PORTION").*, e });
    }
    

    pub fn addPortion(self: *Self, value: i32, text: ?*String, index: i32) void {
        { // try
            self.portion = value;
            _ = Inheritance.call(&self.base, "addPortion", .{ value, text, index });
            _ = Inheritance.call(self.midletActivity.?, "runOnUiThread", .{ self.titleProgressDialogPortionSetProgressRunnable });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "ADD_PORTION").*, e });
    }
    

    pub fn addNormalPortion(self: *Self, value: i32, text: ?*String) void {
        { // try
            self.portion = value;
            _ = Inheritance.call(&self.base, "addNormalPortion", .{ value, text });
            _ = Inheritance.call(self.midletActivity.?, "runOnUiThread", .{ self.titleProgressDialogPortionSetProgressRunnable });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "ADD_PORTION").*, e });
    }
    

    pub fn setValue(self: *Self, value: i32) void {
        { // try
            _ = Inheritance.call(&self.base, "setValue", .{ value });
            _ = Inheritance.call(self.midletActivity.?, "runOnUiThread", .{ self.titleProgressDialogSetProgressRunnable });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, String.literal("setValue"), e });
    }
    

    pub fn waitUntilDisplayed(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn setImages(self: *Self, index: i32, lastWidth: i32, lastHeight: i32) void {
        const image: ?*Image = self.image;
        if (!Object.same(image, NullImage.NULL_IMAGE)) {
            if (Inheritance.call(Features.getInstance().?, "isFeature", .{ MainFeatureFactory.getInstance().?.FULL_SCREEN })) {
                if (Object.same(self.IMAGE[@intCast(index)], NullImage.NULL_IMAGE)) {
                    self.IMAGE[@intCast(index)] = Inheritance.upcast(@TypeOf(self.IMAGE[@intCast(index)]), Inheritance.call(ImageScaleUtil.getInstance().?, "createImage2", .{ ImageCacheFactory.getInstance(), image, @as(f32, @floatFromInt(lastWidth)), @as(f32, @floatCast(image.?.getWidth())), @as(f32, @floatFromInt(lastHeight)) - 20.0, @as(f32, @floatCast(image.?.getHeight())), false }));
                }
            } else {
                const nextIndex: i32 = index + 1;
                if (Object.same(self.IMAGE[@intCast(nextIndex)], NullImage.NULL_IMAGE)) {
                    self.IMAGE[@intCast(nextIndex)] = Inheritance.upcast(@TypeOf(self.IMAGE[@intCast(nextIndex)]), Inheritance.call(ImageScaleUtil.getInstance().?, "createImage2", .{ ImageCacheFactory.getInstance(), image, @as(f32, @floatFromInt(lastWidth)), @as(f32, @floatCast(image.?.getWidth())), @as(f32, @floatFromInt(lastHeight)) - 28.0, @as(f32, @floatCast(image.?.getHeight())), false }));
                }
            }
        }
    }
    

    // throws Exception
    pub fn initOpenGL(self: *Self, graphics: ?*Graphics) void {
        _ = graphics;
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.INIT });
        self.image = Inheritance.upcast(@TypeOf(self.image), Inheritance.call(GameFeatureImageCacheFactory.getInstance().?, "getWithKey", .{ AndroidBasicTitleProgressBar.RESOURCE }));
        const preResourceImageUtil: ?*PreResourceImageUtil = Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.getInstance());
        const size: i32 = @as(i32, @intCast(self.IMAGE.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (!Object.same(self.IMAGE[@intCast(index)], NullImage.NULL_IMAGE)) {
                self.IMAGE[@intCast(index)] = Inheritance.upcast(@TypeOf(self.IMAGE[@intCast(index)]), Inheritance.call(preResourceImageUtil.?, "encapsulate", .{ self.IMAGE[@intCast(index)] }));
            }
            }
        }
        _ = self.updateCurrent();
    }
    

    // throws Exception
    pub fn update(self: *Self, graphics: ?*Graphics) void {
        _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.START, self, Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE });
        _ = Inheritance.call(self, "initOpenGL", .{ graphics });
        self.image = Inheritance.upcast(@TypeOf(self.image), Inheritance.call(GameFeatureImageCacheFactory.getInstance().?, "getWithKey", .{ AndroidBasicTitleProgressBar.RESOURCE }));
        const preResourceImageUtil: ?*PreResourceImageUtil = Inheritance.upcast(?*PreResourceImageUtil, PreResourceImageUtil.getInstance());
        const size: i32 = @as(i32, @intCast(self.IMAGE.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            if (!Object.same(self.IMAGE[@intCast(index)], NullImage.NULL_IMAGE)) {
                _ = Inheritance.call(preResourceImageUtil.?, "update", .{ graphics, self.IMAGE[@intCast(index)] });
            }
            }
        }
    }
    

    // throws Exception
    pub fn getImage(self: *Self, index: i32) ?*Image {
        var image: ?*Image = Inheritance.upcast(?*Image, NullImage.NULL_IMAGE);
        if (Inheritance.call(Features.getInstance().?, "isFeature", .{ MainFeatureFactory.getInstance().?.FULL_SCREEN })) {
            image = Inheritance.upcast(@TypeOf(image), self.IMAGE[@intCast(index)]);
        } else {
            image = Inheritance.upcast(@TypeOf(image), self.IMAGE[@intCast(index + 1)]);
        }
        return image;
    }
    

    pub fn paint2(self: *Self, graphics: ?*Graphics) void {
        { // try
            _ = Inheritance.call(self.animation.?, "paintXY", .{ graphics, 0, 20 });
            _ = Inheritance.call(&self.base, "paint2", .{ graphics });
        }
        // catch (Exception e):
//             _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "canvasStrings").*.?.PAINT, e });
    }
    

    pub fn setBackgroundResource(background_: i32) void {
        AndroidBasicTitleProgressBar.background = Inheritance.upcast(@TypeOf(AndroidBasicTitleProgressBar.background), background_);
    }
    

    pub fn setBackground(self: *Self, background_: bool) void {
        _ = Inheritance.call(&self.base, "setBackground", .{ background_ });
        _ = self.updateCurrent();
    }
    

    pub fn setPortion(self: *Self, portion: i32) void {
        self.portion = portion;
    }
    

    pub fn getPortion(self: *Self) i32 {
        return self.portion;
    }
};

