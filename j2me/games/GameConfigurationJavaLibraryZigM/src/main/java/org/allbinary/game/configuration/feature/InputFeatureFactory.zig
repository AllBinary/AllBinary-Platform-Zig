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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const InputFeature = @import("org/allbinary/game/configuration/feature/InputFeature.zig").InputFeature;

pub const InputFeatureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.InputFeatureFactory";
    REMOVE_DUPLICATE_KEY_PRESSES: ?*InputFeature = null,
    INPUT_MAPPING: ?*InputFeature = null,
    MULTI_KEY_PRESS: ?*InputFeature = null,
    SINGLE_KEY_REPEAT_PRESS: ?*InputFeature = null,
    SINGLE_KEY_PRESS: ?*InputFeature = null,
    var instance: ?*InputFeatureFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InputFeatureFactory.create();
    }

    fn initFields(this: *Self) void {
        this.REMOVE_DUPLICATE_KEY_PRESSES = Inheritance.callStatic(InputFeature, "create1", .{ String.literal("Remove Duplicate Key Presses") });
        this.INPUT_MAPPING = Inheritance.callStatic(InputFeature, "create1", .{ String.literal("Input Mapping") });
        this.MULTI_KEY_PRESS = Inheritance.callStatic(InputFeature, "create1", .{ String.literal("Multi Key Press") });
        this.SINGLE_KEY_REPEAT_PRESS = Inheritance.callStatic(InputFeature, "create1", .{ String.literal("Single Key Repeat Press") });
        this.SINGLE_KEY_PRESS = Inheritance.callStatic(InputFeature, "create1", .{ String.literal("Single Key Press") });
    }
    

    pub fn getInstance() ?*InputFeatureFactory {
        return Inheritance.upcast(?*InputFeatureFactory, InputFeatureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn isSingleKeyProcessing(self: *Self) bool {
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ self.SINGLE_KEY_REPEAT_PRESS }) or Inheritance.call(features.?, "isFeature", .{ self.SINGLE_KEY_PRESS })) {
            return true;
        } else {
            return false;
        }
    }
};

