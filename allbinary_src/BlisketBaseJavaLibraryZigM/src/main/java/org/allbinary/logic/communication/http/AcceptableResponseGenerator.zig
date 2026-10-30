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
// package org.allbinary.logic.communication.http

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AcceptableResponseUtil = @import("org/allbinary/logic/communication/http/AcceptableResponseUtil.zig").AcceptableResponseUtil;

pub const AcceptableResponseGenerator = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.AcceptableResponseGenerator";
    logUtil: ?*LogUtil = null,
    var instance: ?*AcceptableResponseGenerator = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AcceptableResponseGenerator.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*AcceptableResponseGenerator {
        return Inheritance.upcast(?*AcceptableResponseGenerator, AcceptableResponseGenerator.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn get(self: *Self, httpServletRequest: ?*HttpServletRequest) ?*String {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        { // try
            const acceptableResponseUtil: ?*AcceptableResponseUtil = Inheritance.upcast(?*AcceptableResponseUtil, AcceptableResponseUtil.getInstance());
            const acceptable: ?*String = Inheritance.upcast(?*String, Inheritance.call(httpServletRequest.?, "getHeader", .{ String.literal("accept") }));
            var result: ?*String = Inheritance.upcast(?*String, Inheritance.call(acceptableResponseUtil.?, "getTagName", .{ 0 }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTP })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Request Type: "), acceptable), self, commonStrings.?.GET });
            }
            if (acceptable != null) {
                const size: i32 = acceptableResponseUtil.?.size();
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    if (Inheritance.call(acceptable.?, "compareTo", .{ Inheritance.call(acceptableResponseUtil.?, "get", .{ index }) }) == 0) {
                        result = Inheritance.upcast(@TypeOf(result), Inheritance.call(acceptableResponseUtil.?, "getTagName", .{ index }));
                    }
                    }
                }
            }
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTP })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Response Type: "), result), self, commonStrings.?.GET });
            }
            return result;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.GET, e });
//             }
//             std.debug.panic("{any}", .{e});
    }
};

