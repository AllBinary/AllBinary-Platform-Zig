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
// package org.allbinary.logic.control.workflow

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Method = @import("java/lang/reflect/Method.zig").Method;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const WorkFlowInterface = @import("org/allbinary/logic/control/workflow/WorkFlowInterface.zig").WorkFlowInterface;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const WorkFlowWrapper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.workflow.WorkFlowWrapper";
    pub const java_interfaces = .{ WorkFlowInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    anyType: ?Object = null,
    // Implements WorkFlowInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
    }
    

    pub fn create1(anyType: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.anyType = anyType;
        return this;
    }
    

    pub fn getWorkFlowObject(self: *Self) ?Object {
        return self.anyType;
    }
    

    // throws Exception
    pub fn getName(self: *Self) ?*String {
        { // try
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("getName"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ self.anyType, null }));
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Reflection Exception"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getName()"), e });
//             }
//             std.debug.panic("{any}", .{exception: { _ = @"error"; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn getStoreName(self: *Self) ?*String {
        { // try
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ String.literal("getStoreName"), null }));
            const result: ?*String = Inheritance.cast(?*String, Inheritance.call(method.?, "invoke", .{ self.anyType, null }));
            return result;
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Reflection Exception"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getStoreName()"), e });
//             }
//             std.debug.panic("{any}", .{exception: { _ = @"error"; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn process(self: *Self) ?*Integer {
        { // try
            const helperClass: ?*anyopaque = Inheritance.upcast(?*anyopaque, @as(?*anyopaque, @ptrCast(@constCast(Object.of(self.anyType).?.class))));
            const method: ?*Method = Inheritance.upcast(?*Method, Inheritance.call(helperClass.?, "getMethod", .{ self.commonStrings.?.PROCESS, null }));
            const result: ?*Integer = Inheritance.cast(?*Integer, Inheritance.call(method.?, "invoke", .{ self.anyType, null }));
            return Inheritance.upcast(?*Integer, result);
        }
        // catch (Exception e):
//             const @"error": ?*String = String.literal("Reflection Exception"); _ = @"error";
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.PROCESS, e });
//             }
//             std.debug.panic("{any}", .{exception: { _ = @"error"; break :exception error.Exception; }});
    }
};

