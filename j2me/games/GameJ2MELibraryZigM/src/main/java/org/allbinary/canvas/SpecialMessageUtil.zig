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
const Features = @import("org/allbinary/game/configuration/feature/Features.zig").Features;
const OpenGLFeatureFactory = @import("org/allbinary/graphics/opengles/OpenGLFeatureFactory.zig").OpenGLFeatureFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Memory = @import("org/allbinary/system/Memory.zig").Memory;
const GameStatisticsFactory = @import("org/allbinary/canvas/GameStatisticsFactory.zig").GameStatisticsFactory;

pub const SpecialMessageUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.canvas.SpecialMessageUtil";
    var SINGLETON: ?*SpecialMessageUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = SpecialMessageUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*SpecialMessageUtil {
        return Inheritance.upcast(?*SpecialMessageUtil, SpecialMessageUtil.SINGLETON);
    }
    

    pub fn get(self: *Self) ?*String {
        _ = self;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ Memory.getInfo() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(GameStatisticsFactory.getInstance())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" Option: ") });
        if (Inheritance.call(Features.getInstance().?, "isDefault", .{ OpenGLFeatureFactory.getInstance().?.OPENGL_AUTO_SELECT })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(OpenGLFeatureFactory.getInstance().?.OPENGL_AUTO_SELECT.?, "getName").getName() });
        } else {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiverOf(OpenGLFeatureFactory.getInstance().?.OPENGL_MINIMUM.?, "getName").getName() });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

