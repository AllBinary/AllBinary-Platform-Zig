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
// package org.allbinary.game.configuration.feature

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TouchFeature = @import("org/allbinary/game/configuration/feature/TouchFeature.zig").TouchFeature;

pub const TouchFeatureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.TouchFeatureFactory";
    TOUCH_ENABLED: ?*TouchFeature = null,
    SHOW_SCREEN_BUTTONS: ?*TouchFeature = null,
    AUTO_HIDE_SHOW_SCREEN_BUTTONS: ?*TouchFeature = null,
    HIDE_SCREEN_BUTTONS: ?*TouchFeature = null,
    var instance: ?*TouchFeatureFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = TouchFeatureFactory.create();
    }

    fn initFields(this: *Self) void {
        this.TOUCH_ENABLED = Inheritance.callStatic(TouchFeature, "create1", .{ String.literal("Touch Enabled") });
        this.SHOW_SCREEN_BUTTONS = Inheritance.callStatic(TouchFeature, "create1", .{ String.literal("Show") });
        this.AUTO_HIDE_SHOW_SCREEN_BUTTONS = Inheritance.callStatic(TouchFeature, "create1", .{ String.literal("Auto Hide (One Level)") });
        this.HIDE_SCREEN_BUTTONS = Inheritance.callStatic(TouchFeature, "create1", .{ String.literal("Hide") });
    }
    

    pub fn getInstance() ?*TouchFeatureFactory {
        return Inheritance.upcast(?*TouchFeatureFactory, TouchFeatureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

