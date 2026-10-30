// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.animation.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const AnimationFactoryInitializationVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.animation.image.AnimationFactoryInitializationVisitor";
    width: i32 = 0,
    height: i32 = 0,
    dx: i32 = 0,
    dy: i32 = 0,
    originalDx: i32 = 0,
    originalDy: i32 = 0,

    fn initFields(this: *Self) void {
        this.width = 0;
        this.height = 0;
        this.dx = 0;
        this.dy = 0;
        this.originalDx = 0;
        this.originalDy = 0;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn visit(self: *Self) void {
        _ = self;
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const commonLabels: ?*CommonLabels = Inheritance.upcast(?*CommonLabels, CommonLabels.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ PositionStrings.getInstance().?.DX_LABEL }).?, "appendfloat", .{ @as(f32, @floatFromInt(self.dx)) });
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ PositionStrings.getInstance().?.DY_LABEL }).?, "appendfloat", .{ @as(f32, @floatFromInt(self.dy)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.WIDTH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.width });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonLabels.?.HEIGHT_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.height });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

