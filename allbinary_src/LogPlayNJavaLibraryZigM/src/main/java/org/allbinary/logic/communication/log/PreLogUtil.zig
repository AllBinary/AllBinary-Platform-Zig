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
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const PlayN = @import("playn/core/PlayN.zig").PlayN;
const LogFormatUtil = @import("org/allbinary/logic/communication/log/LogFormatUtil.zig").LogFormatUtil;

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
        var className: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(PreLogUtil, "getClassName", .{ anyType }));
        if (className == null) {
            className = Inheritance.upcast(@TypeOf(className), CommonStrings.getInstance().?.EMPTY);
        }
        className = Inheritance.upcast(@TypeOf(className), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ className }).?, "append", .{ CommonSeps.getInstance().?.FORWARD_SLASH }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ anyType }) }))));
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(LogFormatUtil.getInstance().?, "getS", .{ className, functionName, specialMessage }));
        _ = Inheritance.call(PlayN.log().?, "debug", .{ String.plus(PreLogUtil.LOG_SUCCESS, message) });
    }
    

    pub fn putOE(specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?Object) void {
        var className: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(PreLogUtil, "getClassName", .{ anyType }));
        if (className == null) {
            className = Inheritance.upcast(@TypeOf(className), CommonStrings.getInstance().?.EMPTY);
        }
        className = Inheritance.upcast(@TypeOf(className), Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ className }).?, "append", .{ CommonSeps.getInstance().?.FORWARD_SLASH }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ anyType }) }))));
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(LogFormatUtil.getInstance().?, "get", .{ className, functionName, specialMessage, exception }));
        _ = Inheritance.call(PlayN.log().?, "error", .{ String.plus(PreLogUtil.LOG_SUCCESS, message), Inheritance.cast(?anyerror, exception) });
    }
    

    pub fn putS(specialMessage: ?*String, className: ?*String, functionName: ?*String) void {
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(LogFormatUtil.getInstance().?, "getS", .{ className, functionName, specialMessage }));
        _ = Inheritance.call(PlayN.log().?, "debug", .{ String.plus(PreLogUtil.LOG_SUCCESS, message) });
    }
    

    pub fn putSE(specialMessage: ?*String, className: ?*String, functionName: ?*String, exception: ?Object) void {
        const message: ?*String = Inheritance.upcast(?*String, Inheritance.call(LogFormatUtil.getInstance().?, "get", .{ className, functionName, specialMessage, exception }));
        _ = Inheritance.call(PlayN.log().?, "error", .{ String.plus(PreLogUtil.LOG_SUCCESS, message), Inheritance.cast(?anyerror, exception) });
    }
    

    pub fn getClassName(anyType: ?Object) ?*String {
        _ = anyType;
        @panic("abstract method getClassName");
    }
};

