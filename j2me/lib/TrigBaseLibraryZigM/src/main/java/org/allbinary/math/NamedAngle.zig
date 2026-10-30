// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// package org.allbinary.math

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const Angle = @import("org/allbinary/math/Angle.zig").Angle;

pub const NamedAngle = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.math.NamedAngle";
    base: Angle = undefined,
    name: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create2(angle: i16, name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Angle, "create1", .{ angle }).*;
        this.initFields();
        this.name = name;
        Inheritance.bindOverrides(this);
        return this;
    }
};

