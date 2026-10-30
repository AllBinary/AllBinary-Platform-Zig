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
const AppUrlGlobals = @import("org/allbinary/globals/AppUrlGlobals.zig").AppUrlGlobals;
const UrlGlobalsInterface = @import("org/allbinary/globals/UrlGlobalsInterface.zig").UrlGlobalsInterface;

pub const URLGLOBALS = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.globals.URLGLOBALS";
    var urlGlobalsInterface: ?*UrlGlobalsInterface = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        urlGlobalsInterface = Inheritance.upcast(?*UrlGlobalsInterface, AppUrlGlobals.NULL_APP_URL_GLOBALS);
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn init(urlGlobalsInterface_: ?*UrlGlobalsInterface) void {
        URLGLOBALS.urlGlobalsInterface = Inheritance.upcast(@TypeOf(URLGLOBALS.urlGlobalsInterface), urlGlobalsInterface_);
    }
    

    pub fn isTestingMode() bool {
        return Inheritance.receiverOf(URLGLOBALS.urlGlobalsInterface.?, "isTestingMode").isTestingMode();
    }
    

    pub fn getWebappPath() ?*String {
        return Inheritance.upcast(?*String, Inheritance.receiverOf(URLGLOBALS.urlGlobalsInterface.?, "getWebappPath").getWebappPath());
    }
    

    pub fn getTestHtmlPath() ?*String {
        return Inheritance.upcast(?*String, Inheritance.receiverOf(URLGLOBALS.urlGlobalsInterface.?, "getTestHtmlPath").getTestHtmlPath());
    }
    

    // throws Exception
    pub fn getMainPath() ?*String {
        return Inheritance.upcast(?*String, Inheritance.receiverOf(URLGLOBALS.urlGlobalsInterface.?, "getMainPath").getMainPath());
    }
};

