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
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const System = @import("java/lang/System.zig").System;

pub const GuiLog = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.GuiLog";
    logFormatUtil: ?*LogFormatUtil = null,
    commonStrings: ?*CommonStrings = null,
    var instance: ?*GuiLog = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GuiLog.create();
    }

    fn initFields(this: *Self) void {
        this.logFormatUtil = Inheritance.upcast(?*LogFormatUtil, LogFormatUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn getInstance() ?*GuiLog {
        return Inheritance.upcast(?*GuiLog, GuiLog.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn showDialog(self: *Self, msg: ?*String) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const @"error": ?*JDialog = JDialog.create();
        const size: i32 = msg.?.length() * 9;
        var x: i32 = size;
        if (x > 550) {
            x = 550;
        }
        _ = Inheritance.call(@"error".?.getContentPane().?, "setLayout", .{ Inheritance.callStatic(GridLayout, "create2", .{ 1, 1 }) });
        if (size > 255) {
            const y: i32 = 550;
            _ = Inheritance.call(@"error".?, "setSize", .{ x, y });
            _ = Inheritance.call(@"error".?.getContentPane().?, "add", .{ Inheritance.callStatic(JScrollPane, "create1", .{ Inheritance.callStatic(JTextArea, "create1", .{ msg }) }) });
        } else if (size > 0) {
            const y: i32 = 50;
            _ = Inheritance.call(@"error".?, "setSize", .{ x, y });
            _ = Inheritance.call(@"error".?.getContentPane().?, "add", .{ Inheritance.callStatic(JScrollPane, "create1", .{ Inheritance.callStatic(JLabel, "create1", .{ msg }) }) });
        }
        _ = @"error".?.show();
    }
    

    pub fn put(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return Inheritance.upcast(?*String, Inheritance.call(self, "put", .{ specialMessage, anyType, functionName, null }));
    }
    

    pub fn put4(self: *Self, specialMessage: ?*String, anyType: ?Object, functionName: ?*String, exception: ?anyerror) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const data: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "get", .{ specialMessage, String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(anyType).?.class))).?))).name), functionName, exception }));
            _ = Inheritance.call(self, "showDialog", .{ data });
            _ = std.debug.print("{s}\n", .{String.text(data)});
            return data;
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self, String.literal("put"), e });
//             return String.literal("Logging Error");
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn put(self: *Self, specialMessage: ?*String, className: ?*String, functionName: ?*String) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        return Inheritance.upcast(?*String, Inheritance.call(self, "put", .{ specialMessage, className, functionName, null }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn put4(self: *Self, specialMessage: ?*String, className: ?*String, functionName: ?*String, exception: ?anyerror) ?*String {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const data: ?*String = Inheritance.upcast(?*String, Inheritance.call(self.logFormatUtil.?, "get", .{ specialMessage, className, functionName, exception }));
            _ = Inheritance.call(self, "showDialog", .{ data });
            _ = std.debug.print("{s}\n", .{String.text(data)});
            return data;
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self, String.literal("put"), e });
//             return String.literal("Logging Error");
    }
};

