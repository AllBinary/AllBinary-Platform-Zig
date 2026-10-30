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
// const IOException = @import("java/io/IOException.zig").IOException;
const XmlRpcException = @import("org/apache/xmlrpc/XmlRpcException.zig").XmlRpcException;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const SpecialMessageUtil = @import("org/allbinary/canvas/SpecialMessageUtil.zig").SpecialMessageUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TimeDelayHelper = @import("org/allbinary/time/TimeDelayHelper.zig").TimeDelayHelper;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const Log = @import("org/allbinary/logic/communication/log/Log.zig").Log;
const LogFormatUtil = @import("org/allbinary/logic/communication/log/LogFormatUtil.zig").LogFormatUtil;
const XmlRpcRemoteLogClient = @import("org/allbinary/logic/communication/log/XmlRpcRemoteLogClient.zig").XmlRpcRemoteLogClient;
const System = @import("java/lang/System.zig").System;

//ActualPlatform
pub const LogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogUtil";
    MESSAGE: ?*String = null,
    isFirstException: bool = false,
    timeDelayHelper: ?*TimeDelayHelper = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    stringBuffer: ?*StringMaker = null,
    var instance: ?*LogUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogUtil.create();
    }

    fn initFields(this: *Self) void {
        this.MESSAGE = String.literal("message");
        this.isFirstException = true;
        this.timeDelayHelper = Inheritance.callStatic(TimeDelayHelper, "create1", .{ 200000 });
        this.abeClientInformation = null;
        this.stringBuffer = StringMaker.create();
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
        if (log == null) {
            return;
        }
        const specialMessage: ?*String = Inheritance.upcast(?*String, log.?.getSpecialMessage());
        const anyType: ?Object = Inheritance.upcast(?Object, log.?.getObject());
        const functionName: ?*String = Inheritance.upcast(?*String, log.?.getFunctionName());
        const exception: ?Object = Inheritance.upcast(?Object, log.?.getThrowable());
        _ = Inheritance.call(self, "put", .{ specialMessage, anyType, functionName, exception });
    }
    

    pub fn putF(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String) void {
        _ = specialMessage;
        _ = anyType;
        _ = functionName;
        _ = self;
    }
    

    pub fn putFS(self: *Self, specialMessage: ?*String, className: ?*String, functionName: ?*String) void {
        _ = specialMessage;
        _ = className;
        _ = functionName;
        _ = self;
    }
    

    pub fn put(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) void {
        if (exception != null) {
            if (Inheritance.call(String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(exception).?.class))).?))).name).?, "compareTo", .{ Inheritance.receiverOf(XmlRpcException.?, "getName").getName() }) == 0) {
                return;
            }
            if (Inheritance.call(String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(exception).?.class))).?))).name).?, "compareTo", .{ Inheritance.receiverOf(IOException.?, "getName").getName() }) == 0) {
                return;
            }
            if (self.isFirstException or self.timeDelayHelper.?.isTimeTNT()) {
                var className: ?*String = Inheritance.upcast(?*String, CommonStrings.getInstance().?.EMPTY);
                self.isFirstException = false;
                if (anyType != null and String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) != null) {
                    className = Inheritance.callStatic(String, "create1", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name) });
                }
                const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(LogFormatUtil.getInstance().?, "get", .{ className, functionName, specialMessage, exception }));
                { // try
                    _ = std.debug.print("{s}\n", .{String.text(String.literal("Eeeek"))});
                    if (self.abeClientInformation == null) {
                        std.debug.panic("{any}", .{error.RuntimeException});
                    }
                    const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, self.abeClientInformation.?.toHashtable());
                    _ = Inheritance.call(self.stringBuffer.?, "delete", .{ 0, self.stringBuffer.?.length() });
                    _ = Inheritance.call(self.stringBuffer.?, "append", .{ message });
                    _ = Inheritance.call(self.stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
                    _ = Inheritance.call(self.stringBuffer.?, "append", .{ Inheritance.receiverOf(SpecialMessageUtil.getInstance().?, "get").get() });
                    _ = Inheritance.call(hashtable.?, "put", .{ self.MESSAGE, Object.toString(Object.of(self.stringBuffer)) });
                    _ = Inheritance.call(Inheritance.callStatic(XmlRpcRemoteLogClient, "create1", .{ self.abeClientInformation }), "get", .{ hashtable });
                }
                // catch (Throwable e):
//                     _ = std.debug.print("{s}\n", .{String.text(String.literal("Exception"))});
//                     _ = std.debug.print("{any}\n", .{e});
            }
        }
    }
};

