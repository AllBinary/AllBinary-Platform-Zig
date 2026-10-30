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
// package org.allbinary.globals

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const UrlGlobalsInterface = @import("org/allbinary/globals/UrlGlobalsInterface.zig").UrlGlobalsInterface;

//implements
pub const AppUrlGlobals = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.globals.AppUrlGlobals";
    base: UrlGlobalsInterface = undefined,
    path: ?*String = null,
    pub var NULL_APP_URL_GLOBALS: ?*AppUrlGlobals = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_APP_URL_GLOBALS = AppUrlGlobals.create();
    }

    fn initFields(this: *Self) void {
        this.path = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = UrlGlobalsInterface.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isTestingMode(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getWebappPath(self: *Self) ?*String {
        return self.path;
    }
    

    pub fn setWebappPath(self: *Self, path: ?*String) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.path = path;
        if (!(Inheritance.call(self.path.?, "endsWith", .{ String.literal("\\") }) or Inheritance.call(self.path.?, "endsWith", .{ String.literal("/") }))) {
            self.path = Inheritance.upcast(@TypeOf(self.path), String.plus(self.path, String.literal("\\")));
        }
    }
    

    pub fn getTestHtmlPath(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    // throws Exception
    pub fn getMainPath(self: *Self) ?*String {
        return self.path;
    }
};

