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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const GraphicsFeature = @import("org/allbinary/game/configuration/feature/GraphicsFeature.zig").GraphicsFeature;

pub const GraphicsFeatureFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.GraphicsFeatureFactory";
    NONE: ?*GraphicsFeature = null,
    TRANSPARENT_IMAGE_CREATION: ?*GraphicsFeature = null,
    IMAGE_GRAPHICS: ?*GraphicsFeature = null,
    IMAGE_ROTATION_ON_THE_FLY: ?*GraphicsFeature = null,
    IMAGE_TO_ARRAY_GRAPHICS: ?*GraphicsFeature = null,
    SPRITE_QUARTER_ROTATION_GRAPHICS: ?*GraphicsFeature = null,
    SPRITE_FULL_GRAPHICS: ?*GraphicsFeature = null,
    VECTOR_GRAPHICS: ?*GraphicsFeature = null,
    VECTOR_TO_IMAGE_GRAPHICS: ?*GraphicsFeature = null,
    var instance: ?*GraphicsFeatureFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GraphicsFeatureFactory.create();
    }

    fn initFields(this: *Self) void {
        this.NONE = Inheritance.callStatic(GraphicsFeature, "create1", .{ StringUtil.getInstance().?.NULL_STRING });
        this.TRANSPARENT_IMAGE_CREATION = Inheritance.callStatic(GraphicsFeature, "create1", .{ String.literal("Transparent Image Creation") });
        this.IMAGE_GRAPHICS = Inheritance.callStatic(GraphicsFeature, "create1", .{ String.literal("Image Graphics") });
        this.IMAGE_ROTATION_ON_THE_FLY = Inheritance.callStatic(GraphicsFeature, "create1", .{ String.literal("Image Rotated On The Fly") });
        this.IMAGE_TO_ARRAY_GRAPHICS = Inheritance.callStatic(GraphicsFeature, "create1", .{ String.literal("Image To Array Graphics") });
        this.SPRITE_QUARTER_ROTATION_GRAPHICS = Inheritance.callStatic(GraphicsFeature, "create1", .{ String.literal("Sprite Quarter Rotation Graphics") });
        this.SPRITE_FULL_GRAPHICS = Inheritance.callStatic(GraphicsFeature, "create1", .{ String.literal("Sprite Full Rotation Graphics") });
        this.VECTOR_GRAPHICS = Inheritance.callStatic(GraphicsFeature, "create1", .{ String.literal("BasicArrayList Graphics") });
        this.VECTOR_TO_IMAGE_GRAPHICS = Inheritance.callStatic(GraphicsFeature, "create1", .{ String.literal("BasicArrayList To Image Graphics") });
    }
    

    pub fn getInstance() ?*GraphicsFeatureFactory {
        return Inheritance.upcast(?*GraphicsFeatureFactory, GraphicsFeatureFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

