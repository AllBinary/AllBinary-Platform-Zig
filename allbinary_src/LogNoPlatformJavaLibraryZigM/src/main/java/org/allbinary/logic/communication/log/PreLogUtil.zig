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
// package org.allbinary.logic.communication.log

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;

//NoPlatform
pub const PreLogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.PreLogUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn put(specialMessage: ?*String, anyType: ?Object, functionName: ?*String) void {
        _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ specialMessage, anyType, functionName, NullUtil.getInstance().?.NULL_OBJECT });
    }
    

    pub fn putOE(specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) void {
        _ = specialMessage;
        _ = anyType;
        _ = functionName;
        _ = exception;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn putSE(specialMessage: ?*String, className: ?*String, functionName: ?*String, exception: ?Object) void {
        _ = specialMessage;
        _ = className;
        _ = functionName;
        _ = exception;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

