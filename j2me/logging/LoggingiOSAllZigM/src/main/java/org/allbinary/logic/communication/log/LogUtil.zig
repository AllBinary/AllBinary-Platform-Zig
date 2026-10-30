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
const TsUtil = @import("org/allbinary/logic/TsUtil.zig").TsUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Log = @import("org/allbinary/logic/communication/log/Log.zig").Log;
const LogFormatUtil = @import("org/allbinary/logic/communication/log/LogFormatUtil.zig").LogFormatUtil;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;

//ActualPlatform
pub const LogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogUtil";
    logFormatUtil: ?*LogFormatUtil = null,
    var instance: ?*LogUtil = undefined;
    const LOG_SUCCESS: ?*String = String.literal("org.allbinary: ");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logFormatUtil = Inheritance.upcast(?*LogFormatUtil, LogFormatUtil.getInstance());
    }
    

    pub fn getInstance() ?*LogUtil {
        return Inheritance.upcast(?*LogUtil, LogUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn putL(self: *Self, log: ?*Log) void {
        const specialMessage: ?*String = Inheritance.upcast(?*String, log.?.getSpecialMessage());
        const anyType: ?Object = Inheritance.upcast(?Object, log.?.getObject());
        const functionName: ?*String = Inheritance.upcast(?*String, log.?.getFunctionName());
        const exception: ?Object = Inheritance.upcast(?Object, log.?.getThrowable());
        _ = Inheritance.call(self, "put", .{ specialMessage, anyType, functionName, exception });
    }
    

    pub fn putF(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String) void {
        var className: ?*String = Inheritance.upcast(?*String, CommonStrings.getInstance().?.EMPTY);
        if (String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) != null) {
            className = Inheritance.callStatic(String, "create1", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) }).?, "append", .{ CommonSeps.getInstance().?.COLON }).?, "append", .{ String.fromBytes(std.fmt.allocPrint(allocator, "{x}", .{@as(u32, @bitCast(@as(i32, Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ anyType }))))}) catch unreachable) }))) });
        }
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "getS", .{ className, functionName, specialMessage }));
        _ = std.debug.print("{s}", .{String.text(LogUtil.LOG_SUCCESS)});
        _ = std.debug.print("{s}\n", .{String.text(message)});
    }
    

    pub fn putFS(self: *Self, specialMessage: ?*String, classNameParameter: ?*String, functionName: ?*String) void {
        var className = classNameParameter;
        className = Inheritance.callStatic(String, "create1", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ className }).?, "append", .{ CommonSeps.getInstance().?.COLON }).?, "append", .{ String.fromBytes(std.fmt.allocPrint(allocator, "{x}", .{@as(u32, @bitCast(@as(i32, Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ Inheritance.fieldPointer(self, "anyType").* }))))}) catch unreachable) }))) });
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "getS", .{ className, functionName, specialMessage }));
        _ = std.debug.print("{s}", .{String.text(LogUtil.LOG_SUCCESS)});
        _ = std.debug.print("{s}\n", .{String.text(message)});
    }
    

    pub fn put(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) void {
        var className: ?*String = Inheritance.upcast(?*String, CommonStrings.getInstance().?.EMPTY);
        if (String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) != null) {
            className = Inheritance.callStatic(String, "create1", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) }).?, "append", .{ CommonSeps.getInstance().?.COLON }).?, "append", .{ String.fromBytes(std.fmt.allocPrint(allocator, "{x}", .{@as(u32, @bitCast(@as(i32, Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ anyType }))))}) catch unreachable) }))) });
        }
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "get", .{ className, functionName, specialMessage, exception }));
        _ = std.debug.print("{s}", .{String.text(LogUtil.LOG_SUCCESS)});
        _ = std.debug.print("{s}\n", .{String.text(message)});
    }
};

