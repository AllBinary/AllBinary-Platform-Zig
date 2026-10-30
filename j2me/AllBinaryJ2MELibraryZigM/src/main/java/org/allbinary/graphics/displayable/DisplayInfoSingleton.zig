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
// package org.allbinary.graphics.displayable

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Displayable = @import("javax/microedition/lcdui/Displayable.zig").Displayable;
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const DisplayChangeEvent = @import("org/allbinary/graphics/displayable/event/DisplayChangeEvent.zig").DisplayChangeEvent;
const DisplayChangeEventHandler = @import("org/allbinary/graphics/displayable/event/DisplayChangeEventHandler.zig").DisplayChangeEventHandler;
const LastDisplayChangeEventHandler = @import("org/allbinary/graphics/displayable/event/LastDisplayChangeEventHandler.zig").LastDisplayChangeEventHandler;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const SWTJOGLProcessor = @import("org/allbinary/graphics/threed/SWTJOGLProcessor.zig").SWTJOGLProcessor;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const GenericOperatingSystem = @import("org/allbinary/logic/system/os/GenericOperatingSystem.zig").GenericOperatingSystem;
const OperatingSystemFactory = @import("org/allbinary/logic/system/os/OperatingSystemFactory.zig").OperatingSystemFactory;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BaseScalable = @import("org/allbinary/graphics/displayable/BaseScalable.zig").BaseScalable;
const ScalableListener = @import("org/allbinary/graphics/displayable/ScalableListener.zig").ScalableListener;

pub const DisplayInfoSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.displayable.DisplayInfoSingleton";
    logUtil: ?*LogUtil = null,
    commonLabels: ?*CommonLabels = null,
    commonSeps: ?*CommonSeps = null,
    commonStrings: ?*CommonStrings = null,
    ORIENTATION: ?*String = null,
    ADJUSTING_FOR_SCALING_IN_PORTRAIT: ?*String = null,
    ADJUSTING_FOR_SCALING_IN_LANDSCAPE: ?*String = null,
    last: []i32 = &.{},
    lastHalf: []i32 = &.{},
    full: []i32 = &.{},
    top: i32 = 0,
    left: i32 = 0,
    xOffset: i32 = 0,
    yOffset: i32 = 0,
    scaleLargestTo: f32 = 0.0,
    WIDTH: i32 = 0,
    HEIGHT: i32 = 0,
    CUSTOM_WIDTH: i32 = 0,
    CUSTOM_HEIGHT: i32 = 0,
    scalableListener: ?*BaseScalable = null,
    displayRatio: f32 = 0.0,
    ratio: f32 = 0.0,
    SET_LAST_SIZE_METHOD_NAME: ?*String = null,
    FULL_WIDTH: ?*String = null,
    FULL_HEIGHT: ?*String = null,
    LAST_WIDTH: ?*String = null,
    LAST_HEIGHT: ?*String = null,
    PORTRAIT: ?*String = null,
    LANDSCAPE: ?*String = null,
    displayChangeEvent: ?*DisplayChangeEvent = null,
    FIRE_METHOD_NAME: ?*String = null,
    REASON: ?*String = null,
    UPDATE_FROM_ORIENTATION_CHANGE: ?*String = null,
    list: ?*BasicArrayList = null,
    DISPLAY_INFO: ?*String = null,
    FULL: ?*String = null,
    LAST: ?*String = null,
    LAST_HALF: ?*String = null,
    var SINGLETON: ?*DisplayInfoSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = DisplayInfoSingleton.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.ORIENTATION = String.literal("ORIENTATION");
        this.ADJUSTING_FOR_SCALING_IN_PORTRAIT = String.literal("Adjusting for Scaling in portrait display ratio: ");
        this.ADJUSTING_FOR_SCALING_IN_LANDSCAPE = String.literal("Adjusting for Scaling in landscape display ratio: ");
        this.last = array_N66560: { const array_N66560_array = allocator.alloc(i32, @intCast(4)) catch unreachable; @memset(array_N66560_array, 0); break :array_N66560 array_N66560_array; };
        this.lastHalf = array_N66610: { const array_N66610_array = allocator.alloc(i32, @intCast(4)) catch unreachable; @memset(array_N66610_array, 0); break :array_N66610 array_N66610_array; };
        this.full = array_N66660: { const array_N66660_array = allocator.alloc(i32, @intCast(4)) catch unreachable; @memset(array_N66660_array, 0); break :array_N66660 array_N66660_array; };
        this.top = 0;
        this.left = 0;
        this.xOffset = 0;
        this.yOffset = 0;
        this.scaleLargestTo = 0.0;
        this.WIDTH = 0;
        this.HEIGHT = 1;
        this.CUSTOM_WIDTH = 2;
        this.CUSTOM_HEIGHT = 3;
        this.scalableListener = BaseScalable.create();
        this.displayRatio = 0.0;
        this.ratio = 1.0;
        this.SET_LAST_SIZE_METHOD_NAME = String.literal("setLastSize");
        this.FULL_WIDTH = String.literal(" FullWidth: ");
        this.FULL_HEIGHT = String.literal(" FullHeight: ");
        this.LAST_WIDTH = String.literal("LastWidth: ");
        this.LAST_HEIGHT = String.literal(" LastHeight: ");
        this.PORTRAIT = String.literal("Portrait");
        this.LANDSCAPE = String.literal("Landscape");
        this.displayChangeEvent = Inheritance.callStatic(DisplayChangeEvent, "create1", .{ this });
        this.FIRE_METHOD_NAME = String.literal("fire");
        this.REASON = String.literal("reason: ");
        this.UPDATE_FROM_ORIENTATION_CHANGE = String.literal("Updating from Orientation Change ");
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.DISPLAY_INFO = String.literal("Display Info: ");
        this.FULL = String.literal("full");
        this.LAST = String.literal("last");
        this.LAST_HALF = String.literal("lastHalf");
    }
    

    pub fn getInstance() ?*DisplayInfoSingleton {
        return Inheritance.upcast(?*DisplayInfoSingleton, DisplayInfoSingleton.SINGLETON);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const size: i32 = @as(i32, @intCast(this.last.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            this.last[@intCast(index)] = 0;
            this.lastHalf[@intCast(index)] = 0;
            this.full[@intCast(index)] = 0;
            }
        }
        if (AndroidUtil.isAndroid()) {
            this.scaleLargestTo = 640.0;
        } else {
            this.scaleLargestTo = 1080.0;
        }
        return this;
    }
    

    pub fn getLastHalf(self: *Self) []i32 {
        return self.lastHalf;
    }
    

    pub fn getLast(self: *Self) []i32 {
        return self.last;
    }
    

    pub fn getFull(self: *Self) []i32 {
        return self.full;
    }
    

    pub fn getScaleLargestTo(self: *Self) f32 {
        return self.scaleLargestTo;
    }
    

    pub fn setScaleLargestTo(self: *Self, scaleLargestTo: i32) void {
        self.scaleLargestTo = @as(f32, @floatFromInt(scaleLargestTo));
    }
    

    pub fn setLastSize(self: *Self, aLastWidth: i32, aLastHeight: i32, reason: ?*String) void {
        if (self.full[@intCast(self.WIDTH)] != aLastWidth or self.full[@intCast(self.HEIGHT)] != aLastHeight) {
            _ = Inheritance.call(self, "setLastSizeForce", .{ aLastWidth, aLastHeight, reason });
        }
    }
    

    pub fn setLastSizeForce(self: *Self, aLastWidthParameter: i32, aLastHeightParameter: i32, reason: ?*String) void {
        var aLastWidth = aLastWidthParameter;
        var aLastHeight = aLastHeightParameter;
        const stringMaker: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ reason }))), self, self.SET_LAST_SIZE_METHOD_NAME });
        const aFullWidth: i32 = aLastWidth;
        const aFullHeight: i32 = aLastHeight;
        _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.FULL_WIDTH }).?, "appendint", .{ aFullWidth }).?, "append", .{ self.FULL_HEIGHT }).?, "appendint", .{ aFullHeight }).?, "append", .{ Object.toString(Object.of(self)) }))), self, self.SET_LAST_SIZE_METHOD_NAME });
        const operatingSystemInterface: ?*GenericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
        if (operatingSystemInterface.?.isOverScan()) {
            aLastWidth = (divide_N68731: { const left_N68731 = aLastWidth * operatingSystemInterface.?.getOverScanXPercent(); const right_N68731 = 100; break :divide_N68731 if (comptime @typeInfo(@TypeOf(left_N68731)) == .int or @TypeOf(left_N68731) == comptime_int) @divTrunc(left_N68731, right_N68731) else left_N68731 / right_N68731; });
            aLastHeight = (divide_N68786: { const left_N68786 = aLastHeight * operatingSystemInterface.?.getOverScanYPercent(); const right_N68786 = 100; break :divide_N68786 if (comptime @typeInfo(@TypeOf(left_N68786)) == .int or @TypeOf(left_N68786) == comptime_int) @divTrunc(left_N68786, right_N68786) else left_N68786 / right_N68786; });
        }
        if (operatingSystemInterface.?.isScalable()) {
            if (Inheritance.call(self, "isPortraitWH", .{ aLastWidth, aLastHeight })) {
                if (@as(f32, @floatFromInt(aLastHeight)) > self.scaleLargestTo) {
                    self.displayRatio = self.scaleLargestTo / @as(f32, @floatFromInt(aLastHeight));
                    self.ratio = @divTrunc(@as(f32, @floatFromInt(aLastHeight)), self.scaleLargestTo);
                    _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.ADJUSTING_FOR_SCALING_IN_PORTRAIT }).?, "appendfloat", .{ self.displayRatio }))), self, self.SET_LAST_SIZE_METHOD_NAME });
                    aLastWidth = @as(i32, @intFromFloat((@as(f32, @floatFromInt(aLastWidth)) * self.displayRatio)));
                    aLastHeight = @as(i32, @intFromFloat((@as(f32, @floatFromInt(aLastHeight)) * self.displayRatio)));
                    _ = Inheritance.call(self.scalableListener.?, "scale", .{ self.ratio });
                } else {
                    self.ratio = 1.0;
                    _ = Inheritance.call(self.scalableListener.?, "scale", .{ self.ratio });
                }
            } else {
                if (@as(f32, @floatFromInt(aLastWidth)) > self.scaleLargestTo) {
                    self.displayRatio = self.scaleLargestTo / @as(f32, @floatFromInt(aLastWidth));
                    self.ratio = @divTrunc(@as(f32, @floatFromInt(aLastWidth)), self.scaleLargestTo);
                    _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE }).?, "appendfloat", .{ self.displayRatio }))), self, self.SET_LAST_SIZE_METHOD_NAME });
                    aLastWidth = @as(i32, @intFromFloat((@as(f32, @floatFromInt(aLastWidth)) * self.displayRatio)));
                    aLastHeight = @as(i32, @intFromFloat((@as(f32, @floatFromInt(aLastHeight)) * self.displayRatio)));
                    _ = Inheritance.call(self.scalableListener.?, "scale", .{ self.ratio });
                } else {
                    self.ratio = 1.0;
                    _ = Inheritance.call(self.scalableListener.?, "scale", .{ self.ratio });
                }
            }
        }
        _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.LAST_WIDTH }).?, "appendint", .{ aLastWidth }).?, "append", .{ self.LAST_HEIGHT }).?, "appendint", .{ aLastHeight }))), self, self.SET_LAST_SIZE_METHOD_NAME });
        self.xOffset = aFullWidth - aLastWidth;
        self.yOffset = aFullHeight - aLastHeight;
        self.left = Inheritance.call(self.scalableListener.?, "getLeft", .{ self.xOffset });
        self.top = Inheritance.call(self.scalableListener.?, "getTop", .{ self.yOffset });
        self.full[@intCast(self.WIDTH)] = aFullWidth;
        self.full[@intCast(self.HEIGHT)] = aFullHeight;
        self.last[@intCast(self.WIDTH)] = aLastWidth;
        self.lastHalf[@intCast(self.WIDTH)] = (self.last[@intCast(self.WIDTH)] >> @intCast(1));
        self.last[@intCast(self.HEIGHT)] = aLastHeight;
        self.lastHalf[@intCast(self.HEIGHT)] = (self.last[@intCast(self.HEIGHT)] >> @intCast(1));
        _ = Inheritance.call(SWTJOGLProcessor.getInstance().?, "setCustom", .{ aLastWidth, aLastHeight, self.ratio });
        _ = Inheritance.call(self, "add", .{ self.SET_LAST_SIZE_METHOD_NAME });
    }
    

    pub fn isPortraitWH(self: *Self, lastWidth: i32, lastHeight: i32) bool {
        _ = self;
        if (lastHeight > lastWidth) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isPortrait(self: *Self) bool {
        return Inheritance.call(self, "isPortraitWH", .{ self.last[@intCast(self.WIDTH)], self.last[@intCast(self.HEIGHT)] });
    }
    

    pub fn add(self: *Self, reason: ?*String) void {
        const stringMaker: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.REASON }).?, "append", .{ reason }))), self, self.FIRE_METHOD_NAME });
        _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.call(self, "toStringAppend", .{ stringMaker }), self, self.FIRE_METHOD_NAME });
        _ = Inheritance.call(self.list.?, "add", .{ reason });
    }
    

    pub fn process(self: *Self) void {
        { // try
            if (self.list.?.size() > 0) {
                _ = self.processForced();
            }
            _ = self.list.?.clear();
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self, self.FIRE_METHOD_NAME, e });
    }
    

    pub fn processForced(self: *Self) void {
        { // try
            const swtJOGLProcessor: ?*SWTJOGLProcessor = Inheritance.upcast(?*SWTJOGLProcessor, SWTJOGLProcessor.getInstance());
            _ = swtJOGLProcessor.?.clear();
            _ = Inheritance.call(DisplayChangeEventHandler.getInstance().?, "fireEvent", .{ self.displayChangeEvent });
            _ = Inheritance.call(LastDisplayChangeEventHandler.getInstance().?, "fireEvent", .{ self.displayChangeEvent });
            _ = swtJOGLProcessor.?.onSurfaceChanged();
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self, self.FIRE_METHOD_NAME, e });
    }
    

    pub fn update(self: *Self, displayable: ?*Displayable, reason: ?*String) void {
        var aLastWidth: i32 = displayable.?.getWidth();
        var aLastHeight: i32 = displayable.?.getHeight();
        const aFullWidth: i32 = aLastWidth;
        const aFullHeight: i32 = aLastHeight;
        const stringMaker: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ CommonLabels.getInstance().?.START_LABEL }).?, "append", .{ reason }).?, "append", .{ self.LAST_WIDTH }).?, "appendint", .{ aLastWidth }).?, "append", .{ self.LAST_HEIGHT }).?, "appendint", .{ aLastHeight }).?, "append", .{ self.commonSeps.?.SPACE }).?, "append", .{ Object.toString(Object.of(self)) }))), self, self.commonStrings.?.UPDATE });
        if (aLastWidth > 0 and aLastHeight > 0) {
            const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
            const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
            if (!Inheritance.call(features.?, "isDefault", .{ openGLFeatureFactory.?.OPENGL }) or self.last[@intCast(self.WIDTH)] != aLastWidth or self.last[@intCast(self.HEIGHT)] != aLastHeight) {
                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(stringMaker.?, "append", .{ self.UPDATE_FROM_ORIENTATION_CHANGE }))), self, self.commonStrings.?.UPDATE });
                const operatingSystemInterface: ?*GenericOperatingSystem = Inheritance.upcast(?*GenericOperatingSystem, Inheritance.receiverOf(OperatingSystemFactory.getInstance().?, "getOperatingSystemInstance").getOperatingSystemInstance());
                if (operatingSystemInterface.?.isOverScan()) {
                    aLastWidth = (divide_N73004: { const left_N73004 = aLastWidth * operatingSystemInterface.?.getOverScanXPercent(); const right_N73004 = 100; break :divide_N73004 if (comptime @typeInfo(@TypeOf(left_N73004)) == .int or @TypeOf(left_N73004) == comptime_int) @divTrunc(left_N73004, right_N73004) else left_N73004 / right_N73004; });
                    aLastHeight = (divide_N73059: { const left_N73059 = aLastHeight * operatingSystemInterface.?.getOverScanYPercent(); const right_N73059 = 100; break :divide_N73059 if (comptime @typeInfo(@TypeOf(left_N73059)) == .int or @TypeOf(left_N73059) == comptime_int) @divTrunc(left_N73059, right_N73059) else left_N73059 / right_N73059; });
                }
                if (operatingSystemInterface.?.isScalable()) {
                    if (Inheritance.call(self, "isPortraitWH", .{ aLastWidth, aLastHeight })) {
                        if (@as(f32, @floatFromInt(aLastHeight)) > self.scaleLargestTo) {
                            self.displayRatio = self.scaleLargestTo / @as(f32, @floatFromInt(aLastHeight));
                            self.ratio = @divTrunc(@as(f32, @floatFromInt(aLastHeight)), self.scaleLargestTo);
                            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.ADJUSTING_FOR_SCALING_IN_PORTRAIT }).?, "appendfloat", .{ self.displayRatio }))), self, self.commonStrings.?.UPDATE });
                            aLastWidth = @as(i32, @intFromFloat((@as(f32, @floatFromInt(aLastWidth)) * self.displayRatio)));
                            aLastHeight = @as(i32, @intFromFloat((@as(f32, @floatFromInt(aLastHeight)) * self.displayRatio)));
                            _ = Inheritance.call(self.scalableListener.?, "scale", .{ self.ratio });
                        } else {
                            self.ratio = 1.0;
                            _ = Inheritance.call(self.scalableListener.?, "scale", .{ self.ratio });
                        }
                    } else {
                        if (@as(f32, @floatFromInt(aLastWidth)) > self.scaleLargestTo) {
                            self.displayRatio = self.scaleLargestTo / @as(f32, @floatFromInt(aLastWidth));
                            self.ratio = @divTrunc(@as(f32, @floatFromInt(aLastWidth)), self.scaleLargestTo);
                            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.ADJUSTING_FOR_SCALING_IN_LANDSCAPE }).?, "appendfloat", .{ self.displayRatio }))), self, self.commonStrings.?.UPDATE });
                            aLastWidth = @as(i32, @intFromFloat((@as(f32, @floatFromInt(aLastWidth)) * self.displayRatio)));
                            aLastHeight = @as(i32, @intFromFloat((@as(f32, @floatFromInt(aLastHeight)) * self.displayRatio)));
                            _ = Inheritance.call(self.scalableListener.?, "scale", .{ self.ratio });
                        } else {
                            self.ratio = 1.0;
                            _ = Inheritance.call(self.scalableListener.?, "scale", .{ self.ratio });
                        }
                    }
                }
                _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ self.UPDATE_FROM_ORIENTATION_CHANGE }).?, "append", .{ self.LAST_WIDTH }).?, "appendint", .{ aLastWidth }).?, "append", .{ self.LAST_HEIGHT }).?, "appendint", .{ aLastHeight }))), self, self.commonStrings.?.UPDATE });
                self.xOffset = aFullWidth - aLastWidth;
                self.yOffset = aFullHeight - aLastHeight;
                self.left = Inheritance.call(self.scalableListener.?, "getLeft", .{ self.xOffset });
                self.top = Inheritance.call(self.scalableListener.?, "getTop", .{ self.yOffset });
                self.full[@intCast(self.WIDTH)] = aFullWidth;
                self.full[@intCast(self.HEIGHT)] = aFullHeight;
                self.last[@intCast(self.WIDTH)] = aLastWidth;
                self.lastHalf[@intCast(self.WIDTH)] = (self.last[@intCast(self.WIDTH)] >> @intCast(1));
                self.last[@intCast(self.HEIGHT)] = aLastHeight;
                self.lastHalf[@intCast(self.HEIGHT)] = (self.last[@intCast(self.HEIGHT)] >> @intCast(1));
                _ = Inheritance.call(SWTJOGLProcessor.getInstance().?, "setCustom", .{ aLastWidth, aLastHeight, self.ratio });
                _ = Inheritance.call(self, "add", .{ self.commonStrings.?.UPDATE });
            }
        }
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        return Inheritance.upcast(?*String, Inheritance.call(self, "toStringAppend", .{ stringBuffer }));
    }
    

    pub fn toStringAppend(self: *Self, stringBuffer: ?*StringMaker) ?*String {
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.DISPLAY_INFO });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.FULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonLabels.?.WIDTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.full[@intCast(self.WIDTH)] });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.FULL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonLabels.?.HEIGHT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.full[@intCast(self.HEIGHT)] });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.LAST });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonLabels.?.WIDTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.last[@intCast(self.WIDTH)] });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.LAST });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonLabels.?.HEIGHT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.last[@intCast(self.HEIGHT)] });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.LAST_HALF });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonLabels.?.WIDTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.lastHalf[@intCast(self.WIDTH)] });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.LAST_HALF });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonLabels.?.HEIGHT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.lastHalf[@intCast(self.HEIGHT)] });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ (if (self.isPortrait()) self.PORTRAIT else self.LANDSCAPE) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getTop(self: *Self) i32 {
        return self.top;
    }
    

    pub fn getLeft(self: *Self) i32 {
        return self.left;
    }
    

    pub fn getLastWidth(self: *Self) i32 {
        return self.last[@intCast(self.WIDTH)];
    }
    

    pub fn getLastHeight(self: *Self) i32 {
        return self.last[@intCast(self.HEIGHT)];
    }
    

    pub fn getLastHalfWidth(self: *Self) i32 {
        return self.lastHalf[@intCast(self.WIDTH)];
    }
    

    pub fn getLastHalfHeight(self: *Self) i32 {
        return self.lastHalf[@intCast(self.HEIGHT)];
    }
    

    pub fn getCustomLastWidth(self: *Self) i32 {
        return self.last[@intCast(self.CUSTOM_WIDTH)];
    }
    

    pub fn getCustomLastHeight(self: *Self) i32 {
        return self.last[@intCast(self.CUSTOM_HEIGHT)];
    }
    

    pub fn getRawLastWidth(self: *Self) i32 {
        return self.last[@intCast(self.WIDTH)];
    }
    

    pub fn getRawLastHeight(self: *Self) i32 {
        return self.last[@intCast(self.HEIGHT)];
    }
    

    pub fn setCustom(self: *Self, width: i32, height: i32) void {
        self.last[@intCast(self.CUSTOM_WIDTH)] = width;
        self.lastHalf[@intCast(self.CUSTOM_WIDTH)] = (self.last[@intCast(self.CUSTOM_WIDTH)] >> @intCast(1));
        self.last[@intCast(self.CUSTOM_HEIGHT)] = height;
        self.lastHalf[@intCast(self.CUSTOM_HEIGHT)] = (self.last[@intCast(self.CUSTOM_HEIGHT)] >> @intCast(1));
    }
    

    pub fn setScalableListener(self: *Self, scalableListener: ?*BaseScalable) void {
        self.scalableListener = scalableListener;
    }
    

    pub fn getScalableListener(self: *Self) ?*ScalableListener {
        return Inheritance.upcast(?*ScalableListener, self.scalableListener);
    }
    

    pub fn getRatio(self: *Self) f32 {
        return self.ratio;
    }
    

    pub fn getDisplayRatio(self: *Self) f32 {
        return self.displayRatio;
    }
    

    pub fn setOffset(self: *Self, left: i32, top: i32) void {
        _ = top;
        self.left = left;
    }
    

    pub fn getxOffset(self: *Self) i32 {
        return self.xOffset;
    }
    

    pub fn getyOffset(self: *Self) i32 {
        return self.yOffset;
    }
};

