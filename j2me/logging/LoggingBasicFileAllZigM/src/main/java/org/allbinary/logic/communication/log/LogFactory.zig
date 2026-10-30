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

//ActualPlatform
pub const LogFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogFactory";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstanceNoF(specialMessage: ?*String, anyType: ?Object, exception: ?Object) ?*Log {
        return Inheritance.callStatic(Log, "create4", .{ specialMessage, anyType, StringUtil.getInstance().?.EMPTY_STRING, exception });
    }
    

    pub fn getInstance(specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) ?*Log {
        return Inheritance.callStatic(Log, "create4", .{ specialMessage, anyType, functionName, exception });
    }
    

    pub fn getInstanceF(specialMessage: ?*String, anyType: ?Object, functionName: ?*String) ?*Log {
        return Inheritance.callStatic(Log, "create4", .{ specialMessage, anyType, functionName, NullUtil.getInstance().?.NULL_OBJECT });
    }
};

