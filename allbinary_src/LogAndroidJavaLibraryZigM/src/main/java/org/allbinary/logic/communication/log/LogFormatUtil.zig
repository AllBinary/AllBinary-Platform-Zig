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

//ActualPlatform
pub const LogFormatUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogFormatUtil";
    timeStampUtil: ?*TimeStampUtil = null,
    commonSeps: ?*CommonSeps = null,
    NONE: ?*String = null,
    LOG_ERROR: ?*String = null,
    EMPTY: ?*String = null,
    STACK_TRACE: ?*String = null,
    TIME: ?*String = null,
    CLASS_NAME: ?*String = null,
    FUNCTION_CALL: ?*String = null,
    SPECIAL_MESSAGE: ?*String = null,
    stringUtil: ?*StringUtil = null,
    exceptionUtil: ?*ExceptionUtil = null,
    nullUtil: ?*NullUtil = null,
    var instance: ?*LogFormatUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LogFormatUtil.create();
    }

    fn initFields(this: *Self) void {
        this.timeStampUtil = Inheritance.upcast(?*TimeStampUtil, TimeStampUtil.getInstance());
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        this.NONE = String.literal("None");
        this.LOG_ERROR = String.literal("\nLog-Error: ");
        this.EMPTY = String.literal("Empty");
        this.STACK_TRACE = String.literal("\nStack Trace: ");
        this.TIME = String.literal("Time: ");
        this.CLASS_NAME = Inheritance.upcast(?*String, this.commonSeps.?.SPACE);
        this.FUNCTION_CALL = Inheritance.upcast(?*String, CommonLabels.getInstance().?.COLON_SEP);
        this.SPECIAL_MESSAGE = String.literal("> ");
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.exceptionUtil = Inheritance.upcast(?*ExceptionUtil, ExceptionUtil.getInstance());
        this.nullUtil = Inheritance.upcast(?*NullUtil, NullUtil.getInstance());
    }
    

    pub fn getInstance() ?*LogFormatUtil {
        return Inheritance.upcast(?*LogFormatUtil, LogFormatUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn get(self: *Self, className: ?*String, functionName: ?*String, specialMessage: ?*String, exception: ?Object) ?*String {
        const stringBuffer: ?*StringMaker = Inheritance.upcast(?*StringMaker, Inheritance.call(self, "getF", .{ className, functionName }));
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self, "getO", .{ exception }) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPECIAL_MESSAGE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ specialMessage });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.NEW_LINE });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getS(self: *Self, className: ?*String, functionName: ?*String, specialMessage: ?*String) ?*String {
        const stringBuffer: ?*StringMaker = Inheritance.upcast(?*StringMaker, Inheritance.call(self, "getF", .{ className, functionName }));
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.SPECIAL_MESSAGE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ specialMessage });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.commonSeps.?.NEW_LINE });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getF(self: *Self, className: ?*String, functionNameParameter: ?*String) ?*StringMaker {
        var functionName = functionNameParameter;
        if (functionName == null) {
            functionName = self.NONE;
        }
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.TIME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.timeStampUtil.?.getAsString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.CLASS_NAME });
        _ = Inheritance.call(stringBuffer.?, "append", .{ className });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.FUNCTION_CALL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ functionName });
        return stringBuffer;
    }
    

    pub fn getO(self: *Self, exception: ?Object) ?*String {
        if (!Object.same(exception, self.nullUtil.?.NULL_OBJECT)) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.LOG_ERROR });
            const exceptionAsString: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(exception)));
            if (exceptionAsString != null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ exceptionAsString });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.EMPTY });
            }
            _ = Inheritance.call(stringBuffer.?, "append", .{ self.STACK_TRACE });
            if (!Object.same(exception, self.nullUtil.?.NULL_OBJECT)) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.call(self.exceptionUtil.?, "getStackTrace", .{ Inheritance.cast(?anyerror, exception) }) });
            } else {
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.stringUtil.?.NULL_STRING });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        } else {
            return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        }
    }
};

