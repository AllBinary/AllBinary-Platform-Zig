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
// package org.allbinary.logic.math.vector

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PositionStrings = @import("org/allbinary/math/PositionStrings.zig").PositionStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;

pub const Vertex = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.vector.Vertex";
    x: ?*BasicDecimal = null,
    y: ?*BasicDecimal = null,
    z: ?*BasicDecimal = null,

    fn initFields(this: *Self) void {
        this.x = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
        this.y = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
        this.z = Inheritance.callStatic(BasicDecimal, "create1", .{ 0 });
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const positionStrings: ?*PositionStrings = Inheritance.upcast(?*PositionStrings, PositionStrings.getInstance());
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.X_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.x)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Y_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.y)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ positionStrings.?.Z_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.z)) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

