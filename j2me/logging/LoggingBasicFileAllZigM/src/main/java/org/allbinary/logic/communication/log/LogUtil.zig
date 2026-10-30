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
const FileLog = @import("org/allbinary/log/FileLog.zig").FileLog;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Log = @import("org/allbinary/logic/communication/log/Log.zig").Log;

//ActualPlatform
pub const LogUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogUtil";
    var instance: ?*LogUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogUtil.create();
    }
    

    pub fn getInstance() ?*LogUtil {
        return Inheritance.upcast(?*LogUtil, LogUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
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
        _ = self;
        _ = Inheritance.callStatic(FileLog, "put", .{ specialMessage, anyType, functionName });
    }
    

    pub fn putFS(self: *Self, specialMessage: ?*String, className: ?*String, functionName: ?*String) void {
        _ = self;
        _ = Inheritance.callStatic(FileLog, "put", .{ specialMessage, className, functionName });
    }
    

    pub fn put(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) void {
        _ = self;
        _ = Inheritance.callStatic(FileLog, "put", .{ specialMessage, anyType, functionName, Inheritance.cast(?anyerror, exception) });
    }
};

