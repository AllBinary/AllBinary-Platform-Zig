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
// package org.allbinary.game.layer.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const GraphicsFeature = @import("org/allbinary/game/configuration/feature/GraphicsFeature.zig").GraphicsFeature;
const GraphicsFeatureFactory = @import("org/allbinary/game/configuration/feature/GraphicsFeatureFactory.zig").GraphicsFeatureFactory;
const CanvasStrings = @import("org/allbinary/graphics/displayable/CanvasStrings.zig").CanvasStrings;
const OpenGLFeatureUtil = @import("org/allbinary/graphics/opengles/OpenGLFeatureUtil.zig").OpenGLFeatureUtil;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const GameGraphicsResourceUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.resources.GameGraphicsResourceUtil";
    logUtil: ?*LogUtil = null,
    SPRITE: ?*String = null,
    QUARTER: ?*String = null,
    name: ?*String = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.SPRITE = String.literal("_sprite");
        this.QUARTER = String.literal("_quarter");
        this.name = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn getInstance() ?*GameGraphicsResourceUtil {
        if (Object.same(GameGraphicsResourceUtil.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            GameGraphicsResourceUtil.instance = Inheritance.upcast(@TypeOf(GameGraphicsResourceUtil.instance), GameGraphicsResourceUtil.create());
        }
        return Inheritance.cast(?*GameGraphicsResourceUtil, GameGraphicsResourceUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            this.name = Inheritance.upcast(@TypeOf(this.name), this.getString());
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, this, commonStrings.?.CONSTRUCTOR, e });
        return this;
    }
    

    // throws Exception
    pub fn getString(self: *Self) ?*String {
        const graphicsFeatureFactory: ?*GraphicsFeatureFactory = Inheritance.upcast(?*GraphicsFeatureFactory, GraphicsFeatureFactory.getInstance());
        var graphicsFeature: ?*GraphicsFeature = Inheritance.upcast(?*GraphicsFeature, graphicsFeatureFactory.?.NONE);
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.IMAGE_TO_ARRAY_GRAPHICS })) {
            graphicsFeature = Inheritance.upcast(@TypeOf(graphicsFeature), graphicsFeatureFactory.?.IMAGE_TO_ARRAY_GRAPHICS);
        } else if (Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.SPRITE_FULL_GRAPHICS })) {
            graphicsFeature = Inheritance.upcast(@TypeOf(graphicsFeature), graphicsFeatureFactory.?.SPRITE_FULL_GRAPHICS);
        } else if (Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.SPRITE_QUARTER_ROTATION_GRAPHICS })) {
            graphicsFeature = Inheritance.upcast(@TypeOf(graphicsFeature), graphicsFeatureFactory.?.SPRITE_QUARTER_ROTATION_GRAPHICS);
        } else if (Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.IMAGE_ROTATION_ON_THE_FLY })) {
            graphicsFeature = Inheritance.upcast(@TypeOf(graphicsFeature), graphicsFeatureFactory.?.IMAGE_ROTATION_ON_THE_FLY);
        }
        return Inheritance.upcast(?*String, Inheritance.call(self, "getStringForFeature", .{ graphicsFeature }));
    }
    

    // throws Exception
    pub fn getStringForFeature(self: *Self, graphicsFeature: ?*GraphicsFeature) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const graphicsFeatureFactory: ?*GraphicsFeatureFactory = Inheritance.upcast(?*GraphicsFeatureFactory, GraphicsFeatureFactory.getInstance());
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        const features: ?*Features = Inheritance.upcast(?*Features, Features.getInstance());
        if (Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.VECTOR_GRAPHICS })) {
        } else if (Inheritance.call(features.?, "isFeature", .{ graphicsFeatureFactory.?.IMAGE_GRAPHICS })) {
            if (Object.same(graphicsFeature, graphicsFeatureFactory.?.IMAGE_TO_ARRAY_GRAPHICS) or Object.same(graphicsFeature, graphicsFeatureFactory.?.IMAGE_ROTATION_ON_THE_FLY)) {
            } else if (Object.same(graphicsFeature, graphicsFeatureFactory.?.SPRITE_FULL_GRAPHICS)) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPRITE });
            } else if (Object.same(graphicsFeature, graphicsFeatureFactory.?.SPRITE_QUARTER_ROTATION_GRAPHICS)) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.QUARTER });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPRITE });
            } else {
                std.debug.panic("{any}", .{exception: { _ = String.literal("None/Unknown Sub Image Resource Type Specified"); break :exception error.Exception; }});
            }
        } else if (Inheritance.receiverOf(OpenGLFeatureUtil.getInstance().?, "isAnyThreed").isAnyThreed()) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ CanvasStrings.getInstance().?.OBJ_MODEL });
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("None/Unknown Main Image Resource Type Specified"); break :exception error.Exception; }});
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
};

