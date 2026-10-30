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
// package org.allbinary.logic.java.bool

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const BooleanFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.bool.BooleanFactory";
    TRUE: ?*Boolean = null,
    FALSE: ?*Boolean = null,
    TRUE_STRING: ?*String = null,
    FALSE_STRING: ?*String = null,
    YES: ?*String = null,
    NO: ?*String = null,
    var instance: ?*BooleanFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BooleanFactory.create();
    }

    fn initFields(this: *Self) void {
        this.TRUE = Inheritance.callStatic(Boolean, "create1", .{ true });
        this.FALSE = Inheritance.callStatic(Boolean, "create1", .{ false });
        this.TRUE_STRING = Inheritance.upcast(?*String, String.valueOf(this.TRUE.?));
        this.FALSE_STRING = Inheritance.upcast(?*String, String.valueOf(this.FALSE.?));
        this.YES = String.literal("yes");
        this.NO = String.literal("no");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BooleanFactory {
        return Inheritance.upcast(?*BooleanFactory, BooleanFactory.instance);
    }
    

    pub fn toStringb(self: *Self, @"bool": bool) ?*String {
        if (@"bool") {
            return self.TRUE_STRING;
        } else {
            return self.FALSE_STRING;
        }
    }
};

