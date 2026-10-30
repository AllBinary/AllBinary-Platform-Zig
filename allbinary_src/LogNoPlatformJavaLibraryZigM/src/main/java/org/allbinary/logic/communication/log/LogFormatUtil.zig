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
const ExceptionUtil = @import("org/allbinary/logic/java/exception/ExceptionUtil.zig").ExceptionUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const TimeStampUtil = @import("org/allbinary/time/TimeStampUtil.zig").TimeStampUtil;

//NoPlatform
pub const LogFormatUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogFormatUtil";
    var instance: ?*LogFormatUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogFormatUtil.create();
    }
    

    pub fn getInstance() ?*LogFormatUtil {
        return Inheritance.upcast(?*LogFormatUtil, LogFormatUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn get(self: *Self, className: ?*String, functionName: ?*String, specialMessage: ?*String, exception: ?Object) ?*String {
        _ = className;
        _ = functionName;
        _ = specialMessage;
        _ = exception;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getS(self: *Self, className: ?*String, functionName: ?*String, specialMessage: ?*String) ?*String {
        _ = className;
        _ = functionName;
        _ = specialMessage;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    pub fn getO(self: *Self, exception: ?Object) ?*String {
        _ = exception;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

