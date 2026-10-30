// 
// AllBinary Open License Version 1 
// Copyright (c) 2026 AllBinary 
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
// package org.allbinary.logic

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Vector = @import("java/util/Vector.zig").Vector;
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;

pub const VectorUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.VectorUtil";
    var instance: ?*VectorUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = VectorUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*VectorUtil {
        return Inheritance.upcast(?*VectorUtil, VectorUtil.instance);
    }
    

    pub fn getSize(self: *Self, anyType: ?Object) i32 {
        _ = self;
        const vector: ?*Vector = Inheritance.cast(?*Vector, anyType);
        return vector.?.size();
    }
    

    pub fn elementAt(self: *Self, anyType: ?Object, index: i32) ?Object {
        _ = self;
        const vector: ?*Vector = Inheritance.cast(?*Vector, anyType);
        return Inheritance.upcast(?Object, Inheritance.call(vector.?, "elementAt", .{ index }));
    }
};

