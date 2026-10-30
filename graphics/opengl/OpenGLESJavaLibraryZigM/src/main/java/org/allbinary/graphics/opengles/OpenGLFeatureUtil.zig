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
// package org.allbinary.graphics.opengles

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const OpenGLConfiguration = @import("org/allbinary/graphics/opengles/OpenGLConfiguration.zig").OpenGLConfiguration;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;

pub const OpenGLFeatureUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.opengles.OpenGLFeatureUtil";
    anyThreed: bool = false,
    var instance: ?*OpenGLFeatureUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = OpenGLFeatureUtil.create();
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn getInstance() ?*OpenGLFeatureUtil {
        return Inheritance.upcast(?*OpenGLFeatureUtil, OpenGLFeatureUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const openGLConfiguration: ?*OpenGLConfiguration = Inheritance.upcast(?*OpenGLConfiguration, OpenGLConfiguration.getInstance());
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        const openGLFeatureFactory: ?*OpenGLFeatureFactory = Inheritance.upcast(?*OpenGLFeatureFactory, OpenGLFeatureFactory.getInstance());
        this.anyThreed = openGLConfiguration.?.isOpenGL() and (Inheritance.call(features.?, "isFeature", .{ openGLFeatureFactory.?.OPENGL_2D_AND_3D }) or Inheritance.call(features.?, "isFeature", .{ openGLFeatureFactory.?.OPENGL_3D }));
        return this;
    }
    

    pub fn isAnyThreed(self: *Self) bool {
        return self.anyThreed;
    }
};

