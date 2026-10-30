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
// package org.allbinary.logic.util.visitor

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const VisitorInterface = @import("org/allbinary/logic/util/visitor/VisitorInterface.zig").VisitorInterface;

pub const Visitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.visitor.Visitor";
    pub const java_interfaces = .{ VisitorInterface };
    nullUtil: ?*NullUtil = null,
    // Implements VisitorInterface
    var instance: ?*Visitor = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Visitor.create();
    }

    fn initFields(this: *Self) void {
        this.nullUtil = Inheritance.upcast(?*NullUtil, NullUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn visit(self: *Self, anyType: ?Object) ?Object {
        _ = anyType;
        return Inheritance.upcast(?Object, self.nullUtil.?.NULL_OBJECT);
    }
    

    pub fn getInstance() ?*Visitor {
        return Inheritance.upcast(?*Visitor, Visitor.instance);
    }
};

