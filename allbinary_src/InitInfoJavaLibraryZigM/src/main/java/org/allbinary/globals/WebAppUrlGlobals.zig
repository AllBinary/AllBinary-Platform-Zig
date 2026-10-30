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
const InitInfo = @import("org/allbinary/business/init/InitInfo.zig").InitInfo;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const UrlGlobalsInterface = @import("org/allbinary/globals/UrlGlobalsInterface.zig").UrlGlobalsInterface;

pub const WebAppUrlGlobals = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.globals.WebAppUrlGlobals";
    base: UrlGlobalsInterface = undefined,
    path: ?*String = null,
    isWebappPathSet: bool = false,

    fn initFields(this: *Self) void {
        this.path = null;
        this.isWebappPathSet = false;
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
        return Inheritance.receiverOf(InitInfo.getInstance().?, "isTesting").isTesting();
    }
    

    pub fn getWebappPath(self: *Self) ?*String {
        return self.path;
    }
    

    pub fn setWebappPath(self: *Self, pathParameter: ?*String) void {
        var path = pathParameter;
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        path = path;
        self.isWebappPathSet = true;
    }
    

    pub fn getTestHtmlPath(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Inheritance.receiverOf(InitInfo.getInstance().?, "getTestHtmlPath").getTestHtmlPath());
    }
    

    // throws Exception
    pub fn getMainPath(self: *Self) ?*String {
        const mainPath: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(InitInfo.getInstance().?, "getMainPath").getMainPath());
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ mainPath })) {
            return mainPath;
        } else if (self.isWebappPathSet) {
            return Inheritance.upcast(?*String, self.getWebappPath());
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Webapp Path is not set"); break :exception error.Exception; }});
        }
    }
};

