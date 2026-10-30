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
// package org.allbinary.servlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const AppUrlGlobals = @import("org/allbinary/globals/AppUrlGlobals.zig").AppUrlGlobals;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const WebappClassLoaderInfo = @import("org/allbinary/logic/system/loader/WebappClassLoaderInfo.zig").WebappClassLoaderInfo;

pub const BlisketServletUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.servlet.BlisketServletUtil";
    var instance: ?*BlisketServletUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BlisketServletUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*BlisketServletUtil {
        return Inheritance.upcast(?*BlisketServletUtil, BlisketServletUtil.instance);
    }
    

    pub fn init(self: *Self, request: ?*HttpServletRequest) void {
        _ = self;
        const urlGlobals: ?*AppUrlGlobals = AppUrlGlobals.create();
        _ = Inheritance.call(urlGlobals.?, "setWebappPath", .{ Inheritance.call(request.?.getServletContext().?, "getRealPath", .{ AbPathData.getInstance().?.SEPARATOR }) });
        _ = Inheritance.callStatic(URLGLOBALS, "init", .{ urlGlobals });
        _ = Inheritance.callStatic(WebappClassLoaderInfo, "setLoader", .{ Inheritance.receiverOf(self.getClass().?, "getClassLoader").getClassLoader() });
    }
};

