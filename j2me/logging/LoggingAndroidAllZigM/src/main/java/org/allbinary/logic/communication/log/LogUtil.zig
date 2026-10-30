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
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const Log = @import("org/allbinary/logic/communication/log/Log.zig").Log;
const LogFormatUtil = @import("org/allbinary/logic/communication/log/LogFormatUtil.zig").LogFormatUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

//ActualPlatform
pub const LogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogUtil";
    commonSeps: ?*CommonSeps = null,
    logFormatUtil: ?*LogFormatUtil = null,
    LABEL: ?*String = null,
    var instance: ?*LogUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogUtil.create();
    }

    fn initFields(this: *Self) void {
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.logFormatUtil = Inheritance.upcast(?*LogFormatUtil, LogFormatUtil.getInstance());
        this.LABEL = String.literal("org.allbinary");
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
        _ = Inheritance.call(self, "put", .{ specialMessage, anyType, functionName, NullUtil.getInstance().?.NULL_OBJECT });
    }
    

    pub fn putFS(self: *Self, specialMessage: ?*String, string: ?*String, functionName: ?*String) void {
        _ = Inheritance.call(self, "putS", .{ specialMessage, string, functionName, NullUtil.getInstance().?.NULL_OBJECT });
    }
    

    pub fn put(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) void {
        var className: ?*String = self.LABEL;
        className = Inheritance.callStatic(String, "create1", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) }).?, "append", .{ self.commonSeps.?.COLON }).?, "append", .{ String.fromBytes(std.fmt.allocPrint(allocator, "{x}", .{@as(u32, @bitCast(@as(i32, Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ anyType }))))}) catch unreachable) }))) });
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "get", .{ className, functionName, specialMessage, exception }));
        _ = Inheritance.call(android.util.?.Log.?, "i", .{ self.LABEL, message });
    }
    

    pub fn putS(self: *Self, specialMessage: ?*String, string: ?*String, functionName: ?*String, exception: ?Object) void {
        var className: ?*String = self.LABEL;
        className = Inheritance.callStatic(String, "create1", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ string }).?, "append", .{ self.commonSeps.?.COLON }).?, "append", .{ String.fromBytes(std.fmt.allocPrint(allocator, "{x}", .{@as(u32, @bitCast(@as(i32, Inheritance.call(TsUtil.getInstance().?, "hashCode", .{ string }))))}) catch unreachable) }))) });
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "get", .{ className, functionName, specialMessage, exception }));
        _ = Inheritance.call(android.util.?.Log.?, "i", .{ self.LABEL, message });
    }
};

