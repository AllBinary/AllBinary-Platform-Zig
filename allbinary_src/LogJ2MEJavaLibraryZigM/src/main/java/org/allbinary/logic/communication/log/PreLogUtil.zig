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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogFormatUtil = @import("org/allbinary/logic/communication/log/LogFormatUtil.zig").LogFormatUtil;
const System = @import("java/lang/System.zig").System;

//ActualPlatform
pub const PreLogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.PreLogUtil";
    const LOG_SUCCESS: ?*String = String.literal("org.allbinary: ");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn put(specialMessage: ?*String, anyType: ?Object, functionName: ?*String) void {
        _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ specialMessage, anyType, functionName, NullUtil.getInstance().?.NULL_OBJECT });
    }
    

    pub fn putOE(specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) void {
        var className: ?*String = Inheritance.upcast(?*String, CommonStrings.getInstance().?.EMPTY);
        if (String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) != null) {
            className = Inheritance.callStatic(String, "create1", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) });
        }
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(LogFormatUtil.getInstance().?, "get", .{ className, functionName, specialMessage, exception }));
        _ = std.debug.print("{s}", .{String.text(PreLogUtil.LOG_SUCCESS)});
        _ = std.debug.print("{s}\n", .{String.text(message)});
    }
    

    pub fn putS(specialMessage: ?*String, className: ?*String, functionName: ?*String) void {
        _ = Inheritance.callStatic(PreLogUtil, "putSE", .{ specialMessage, className, functionName, NullUtil.getInstance().?.NULL_OBJECT });
    }
    

    pub fn putSE(specialMessage: ?*String, className: ?*String, functionName: ?*String, exception: ?Object) void {
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(LogFormatUtil.getInstance().?, "get", .{ className, functionName, specialMessage, exception }));
        _ = std.debug.print("{s}", .{String.text(PreLogUtil.LOG_SUCCESS)});
        _ = std.debug.print("{s}\n", .{String.text(message)});
    }
    

    pub fn getClassName(anyType: ?Object) ?*String {
        return Inheritance.upcast(?*String, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name));
    }
};

