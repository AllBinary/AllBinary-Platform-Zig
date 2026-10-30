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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const LogFormatUtil = @import("org/allbinary/logic/communication/log/LogFormatUtil.zig").LogFormatUtil;

pub const Log = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.Log";
    logFormatUtil: ?*LogFormatUtil = null,
    specialMessage: ?*String = null,
    anyType: ?Object = null,
    functionName: ?*String = null,
    exception: ?Object = null,

    fn initFields(this: *Self) void {
        this.logFormatUtil = Inheritance.upcast(?*LogFormatUtil, LogFormatUtil.getInstance());
        
        
        
        
    }
    

    pub fn create4(specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.specialMessage = specialMessage;
        this.anyType = anyType;
        this.functionName = functionName;
        this.exception = exception;
        return this;
    }
    

    pub fn getSpecialMessage(self: *Self) ?*String {
        return self.specialMessage;
    }
    

    pub fn getObject(self: *Self) ?Object {
        return self.anyType;
    }
    

    pub fn getFunctionName(self: *Self) ?*String {
        return self.functionName;
    }
    

    pub fn getThrowable(self: *Self) ?Object {
        return self.exception;
    }
    

    pub fn toString(self: *Self) ?*String {
        var className: ?*String = Inheritance.upcast(?*String, CommonStrings.getInstance().?.EMPTY);
        const clazz: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
        if (String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(clazz.?))).name) != null) {
            className = Inheritance.upcast(@TypeOf(className), String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(clazz.?))).name));
        }
        return Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "get", .{ className, self.functionName, self.specialMessage, self.exception }));
    }
};

