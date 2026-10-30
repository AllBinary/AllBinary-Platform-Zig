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
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const PlayN = @import("playn/core/PlayN.zig").PlayN;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const Log = @import("org/allbinary/logic/communication/log/Log.zig").Log;
const LogFormatUtil = @import("org/allbinary/logic/communication/log/LogFormatUtil.zig").LogFormatUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;

//ActualPlatform
pub const LogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogUtil";
    logFormatUtil: ?*LogFormatUtil = null,
    LOG_SUCCESS: ?*String = null,
    var instance: ?*LogUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logFormatUtil = Inheritance.upcast(?*LogFormatUtil, LogFormatUtil.getInstance());
        this.LOG_SUCCESS = String.literal("org.allbinary: ");
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
        var className: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(PreLogUtil, "getClassName", .{ anyType }));
        if (className == null) {
            className = Inheritance.upcast(@TypeOf(className), CommonStrings.getInstance().?.EMPTY);
        }
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "getS", .{ className, functionName, specialMessage }));
        const playN: ?*PlayN = Inheritance.upcast(?*PlayN, PlayN.getInstance());
        _ = Inheritance.call(playN.?.log().?, "debug", .{ String.plus(self.LOG_SUCCESS, message) });
    }
    

    pub fn putFS(self: *Self, specialMessage: ?*String, className: ?*String, functionName: ?*String) void {
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "getS", .{ className, functionName, specialMessage }));
        const playN: ?*PlayN = Inheritance.upcast(?*PlayN, PlayN.getInstance());
        _ = Inheritance.call(playN.?.log().?, "debug", .{ String.plus(self.LOG_SUCCESS, message) });
    }
    

    pub fn put(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) void {
        var className: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(PreLogUtil, "getClassName", .{ anyType }));
        if (className == null) {
            className = Inheritance.upcast(@TypeOf(className), CommonStrings.getInstance().?.EMPTY);
        }
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "get", .{ className, functionName, specialMessage, exception }));
        const playN: ?*PlayN = Inheritance.upcast(?*PlayN, PlayN.getInstance());
        if (exception != null) {
            _ = Inheritance.call(playN.?.log().?, "error", .{ String.plus(self.LOG_SUCCESS, message), Inheritance.cast(?anyerror, exception) });
        } else {
            _ = Inheritance.call(playN.?.log().?, "debug", .{ String.plus(self.LOG_SUCCESS, message) });
        }
    }
};

