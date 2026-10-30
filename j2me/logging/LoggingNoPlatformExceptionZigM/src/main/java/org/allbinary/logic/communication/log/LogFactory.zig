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
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Log = @import("org/allbinary/logic/communication/log/Log.zig").Log;

//NoPlatform
pub const LogFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogFactory";
    pub var LOG: ?*Log = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        LOG = Inheritance.callStatic(Log, "create4", .{ StringUtil.getInstance().?.EMPTY_STRING, NullUtil.getInstance().?.NULL_OBJECT, StringUtil.getInstance().?.EMPTY_STRING, NullUtil.getInstance().?.NULL_OBJECT });
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) ?*Log {
        _ = specialMessage;
        _ = anyType;
        _ = functionName;
        _ = exception;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getInstanceF(specialMessage: ?*String, anyType: ?Object, functionName: ?*String) ?*Log {
        _ = specialMessage;
        _ = anyType;
        _ = functionName;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

