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
// package admin.taghelpers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const LicensingException = @import("org/allbinary/logic/system/security/licensing/LicensingException.zig").LicensingException;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;

pub const AuthenticationRequestHelperFactory = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.AuthenticationRequestHelperFactory";
    // Implements TagHelperFactoryInterface
    const CLASSNAME: ?*String = String.literal("admin.taghelpers.AuthenticationRequestHelper");
    const FACTORYNAME: ?*String = String.literal("AuthenticationRequestHelperFactory");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws LicensingException
    pub fn getInstance(self: *Self, hashMap: ?*HashMap, pageContext: ?*PageContext) ?Object {
        _ = self;
        return Inheritance.upcast(?Object, Inheritance.callStatic(HelperFactory, "getInstance", .{ AuthenticationRequestHelperFactory.FACTORYNAME, AuthenticationRequestHelperFactory.CLASSNAME, hashMap, pageContext }));
    }
    

    // throws LicensingException
    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn getInstance(self: *Self, hashMap: ?*HashMap, httpServletRequest: ?*HttpServletRequest) ?Object {
        _ = self;
        return Inheritance.upcast(?Object, Inheritance.callStatic(HelperFactory, "getInstance", .{ AuthenticationRequestHelperFactory.FACTORYNAME, AuthenticationRequestHelperFactory.CLASSNAME, hashMap, httpServletRequest }));
    }
};

