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
// package org.allbinary.logic.communication.log.config

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const LogConfig = @import("org/allbinary/logic/communication/log/config/LogConfig.zig").LogConfig;

pub const LoggingInitInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.config.LoggingInitInfo";
    var logConfigInfoList: ?*BasicArrayList = null;
    var hasRead: bool = false;
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn write() void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
            LoggingInitInfo.hasRead = false;
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    // throws Exception
    pub fn read() void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        { // try
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn setHasRead(value: bool) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        LoggingInitInfo.hasRead = Inheritance.upcast(@TypeOf(LoggingInitInfo.hasRead), value);
    }
    

    // throws Exception
    pub fn updateIfNeeded() void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        if (!LoggingInitInfo.hasRead) {
            _ = LoggingInitInfo.read();
            LoggingInitInfo.hasRead = true;
            if (LoggingInitInfo.logConfigInfoList == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Read Failed"); break :exception error.Exception; }});
            }
        }
    }
    

    pub fn isValid(self: *Self) bool {
        _ = self;
        { // try
            return true;
        }
        // catch (Exception e):
//             return false;
    }
    

    pub fn set(logConfigInfoList_: ?*BasicArrayList) void {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        LoggingInitInfo.logConfigInfoList = Inheritance.upcast(@TypeOf(LoggingInitInfo.logConfigInfoList), logConfigInfoList_);
    }
    

    // throws Exception
    pub fn get() ?*BasicArrayList {
        _ = LoggingInitInfo.updateIfNeeded();
        return Inheritance.upcast(?*BasicArrayList, LoggingInitInfo.logConfigInfoList);
    }
    

    // throws Exception
    pub fn getTypeList() ?*BasicArrayList {
        _ = LoggingInitInfo.updateIfNeeded();
        const allLogTypeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const size: i32 = Inheritance.receiverOf(LoggingInitInfo.logConfigInfoList.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const logConfigInfo: ?*LogConfig = Inheritance.cast(?*LogConfig, LoggingInitInfo.logConfigInfoList.?.objectArray[@intCast(index)]);
            const logTypeVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, logConfigInfo.?.getTypeVector());
            if (logConfigInfo.?.isEnabled()) {
                _ = Inheritance.call(allLogTypeVector.?, "addAllList", .{ logTypeVector });
            }
            }
        }
        return allLogTypeVector;
    }
    

    // throws Exception
    pub fn getNumberOfLogConfigs(self: *Self) i32 {
        _ = self;
        return Inheritance.receiverOf(LoggingInitInfo.logConfigInfoList.?, "size").size();
    }
    

    pub fn toString(self: *Self) ?*String {
        _ = self;
        { // try
            return null;
        }
        // catch (Exception e):
//             return String.literal("Error");
    }
};

