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
const Feature = @import("org/allbinary/game/configuration/feature/Feature.zig").Feature;

pub const MainFeatureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.MainFeatureFactory";
    FULL_SCREEN: ?*Feature = null,
    TITLE_BAR: ?*Feature = null,
    STATIC: ?*Feature = null,
    LOAD_ONDEMAND: ?*Feature = null,
    LOAD_ALL: ?*Feature = null,
    var instance: ?*MainFeatureFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MainFeatureFactory.create();
    }

    fn initFields(this: *Self) void {
        this.FULL_SCREEN = Inheritance.callStatic(Feature, "create1", .{ String.literal("Full Screen") });
        this.TITLE_BAR = Inheritance.callStatic(Feature, "create1", .{ String.literal("Title Bar") });
        this.STATIC = Inheritance.callStatic(Feature, "create1", .{ String.literal("Static Dependent Feature") });
        this.LOAD_ONDEMAND = Inheritance.callStatic(Feature, "create1", .{ String.literal("Load OnDemand") });
        this.LOAD_ALL = Inheritance.callStatic(Feature, "create1", .{ String.literal("Load All") });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*MainFeatureFactory {
        return Inheritance.upcast(?*MainFeatureFactory, MainFeatureFactory.instance);
    }
};

