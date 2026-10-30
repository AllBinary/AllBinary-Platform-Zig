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
const GuiLog = @import("org/allbinary/logic/communication/log/GuiLog.zig").GuiLog;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const GraphicsException = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.j2me.GraphicsException";
    base: Exception = undefined,
    logUtil: ?*LogUtil = null,
    guiLog: ?*GuiLog = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.guiLog = Inheritance.upcast(?*GuiLog, GuiLog.getInstance());
    }
    

    pub fn create3(msg: ?*String, obj: ?Object, method: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Exception, "create1", .{ msg }).*;
        this.initFields();
        { // try
            _ = Inheritance.call(this.guiLog.?, "showDialog", .{ msg });
            _ = Inheritance.call(this.logUtil.?, "put", .{ msg, obj, method, this });
        }
        // catch (Exception e):
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create3(msg: ?*String, className: ?*String, method: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Exception, "create1", .{ msg }).*;
        this.initFields();
        { // try
            _ = Inheritance.call(this.guiLog.?, "showDialog", .{ msg });
            _ = Inheritance.call(this.logUtil.?, "put", .{ msg, className, method, this });
        }
        // catch (Exception e):
        Inheritance.bindOverrides(this);
        return this;
    }
};

