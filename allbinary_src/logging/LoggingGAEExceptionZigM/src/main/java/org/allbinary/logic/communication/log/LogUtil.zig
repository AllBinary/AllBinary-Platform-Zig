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
// const Level = @import("java/util/logging/Level.zig").Level;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
// const Logger = @import("java/util/logging/Logger.zig").Logger;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Log = @import("org/allbinary/logic/communication/log/Log.zig").Log;
const LogFormatUtil = @import("org/allbinary/logic/communication/log/LogFormatUtil.zig").LogFormatUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;

//ActualPlatform
pub const LogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogUtil";
    logger: ?*Logger = null,
    logFormatUtil: ?*LogFormatUtil = null,
    var instance: ?*LogUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogUtil.create();
    }

    fn initFields(this: *Self) void {
        this.logger = Inheritance.upcast(?*Logger, Inheritance.callStatic(Logger, "getLogger", .{ Inheritance.receiverOf(LogUtil.?, "getName").getName() }));
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
    

    pub fn init(self: *Self) void {
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Loggin Initialized"), self, String.literal("init()") });
    }
    

    pub fn putL(self: *Self, log: ?*Log) void {
        const exception: ?Object = Inheritance.upcast(?Object, log.?.getThrowable());
        { // try
            if (exception != null) {
                const specialMessage: ?*String = Inheritance.upcast(?*String, log.?.getSpecialMessage());
                const anyType: ?Object = Inheritance.upcast(?Object, log.?.getObject());
                const functionName: ?*String = Inheritance.upcast(?*String, log.?.getFunctionName());
                var className: ?*String = Inheritance.upcast(?*String, CommonStrings.getInstance().?.EMPTY);
                const clazz: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
                if (String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(clazz.?))).name) != null) {
                    className = Inheritance.upcast(@TypeOf(className), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(clazz.?))).name));
                }
                const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "get", .{ className, functionName, specialMessage, exception }));
                _ = Inheritance.call(self.logger.?, "log", .{ Level.INFO, message });
            }
        }
        // catch (Exception e):
    }
    

    pub fn put(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) void {
        { // try
            var className: ?*String = Inheritance.upcast(?*String, CommonStrings.getInstance().?.EMPTY);
            const clazz: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))));
            if (String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(clazz.?))).name) != null) {
                className = Inheritance.upcast(@TypeOf(className), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(clazz.?))).name));
            }
            const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "getS", .{ className, functionName, specialMessage }));
            if (exception != null) {
                _ = Inheritance.call(self.logger.?, "log", .{ Level.SEVERE, message, exception });
            } else {
                _ = Inheritance.call(self.logger.?, "log", .{ Level.INFO, message });
            }
        }
        // catch (Exception e):
    }
};

