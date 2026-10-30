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
// package org.allbinary.graphics.j2me

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const MyFrame = @import("org/allbinary/graphics/j2me/MyFrame.zig").MyFrame;

pub const StatusFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.StatusFactory";
    logUtil: ?*LogUtil = null,
    SETSTATUS: ?*String = null,
    STATUS_LABEL: ?*String = null,
    var instance: ?*StatusFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StatusFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.SETSTATUS = String.literal("setStatus");
        this.STATUS_LABEL = String.literal("Status: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*StatusFactory {
        return Inheritance.upcast(?*StatusFactory, StatusFactory.instance);
    }
    

    pub fn setStatusNoLog(self: *Self, status: ?*String) void {
        _ = self;
        _ = Inheritance.call(MyFrame.statusJLabel.?, "setText", .{ status });
    }
    

    pub fn setStatus(self: *Self, status: ?*String) void {
        _ = Inheritance.call(self, "setStatusNoLog", .{ status });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(self.STATUS_LABEL, status), self, self.SETSTATUS });
    }
};

