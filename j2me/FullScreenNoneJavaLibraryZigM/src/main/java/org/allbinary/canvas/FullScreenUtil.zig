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
// package org.allbinary.canvas

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Canvas = @import("javax/microedition/lcdui/Canvas.zig").Canvas;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const MainFeatureFactory = @import("org/allbinary/game/configuration/feature/MainFeatureFactory.zig").MainFeatureFactory;

pub const FullScreenUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.FullScreenUtil";
    var instance: ?*FullScreenUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FullScreenUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*FullScreenUtil {
        return Inheritance.upcast(?*FullScreenUtil, FullScreenUtil.instance);
    }
    

    // throws Exception
    pub fn initOnRun(self: *Self, fullScreenInterface: ?*Canvas, commandListener: ?*CommandListener) void {
        if (commandListener != null) {
            _ = Inheritance.call(self, "init", .{ fullScreenInterface });
        }
    }
    

    pub fn init(self: *Self, fullScreenInterface: ?*Canvas) void {
        _ = fullScreenInterface;
        _ = self;
    }
    

    pub fn isScreenChange(self: *Self, isFullScreen: bool) bool {
        _ = self;
        const mainFeatureFactory: ?*MainFeatureFactory = Inheritance.upcast(?*MainFeatureFactory, MainFeatureFactory.getInstance());
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ mainFeatureFactory.?.FULL_SCREEN }) != isFullScreen) {
            return true;
        }
        return false;
    }
    

    pub fn isScreenChangeCanvas(self: *Self, fullScreenInterface: ?*Canvas) bool {
        _ = fullScreenInterface;
        return Inheritance.call(self, "isScreenChange", .{ false });
    }
};

