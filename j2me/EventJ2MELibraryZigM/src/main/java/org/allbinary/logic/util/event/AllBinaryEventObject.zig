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
// package org.allbinary.logic.util.event

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;

pub const AllBinaryEventObject = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.event.AllBinaryEventObject";
    source: ?Object = null,
    pub var NULL_EVENT: ?*AllBinaryEventObject = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_EVENT = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ NullUtil.getInstance().?.NULL_OBJECT });
    }

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(anyType: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.source = anyType;
        return this;
    }
    

    pub fn getSource(self: *Self) ?Object {
        return self.source;
    }
    

    pub fn setSource(self: *Self, source: ?Object) void {
        self.source = source;
    }
};

