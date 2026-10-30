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

pub const PermissionItemsRequestHelperFactory = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.PermissionItemsRequestHelperFactory";
    // Implements TagHelperFactoryInterface
    const CLASSNAME: ?*String = String.literal("admin.taghelpers.PermissionItemsRequestHelper");
    const FACTORYNAME: ?*String = String.literal("PermissionItemsRequestHelperFactory");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws LicensingException
    pub fn getInstance(self: *Self, hashMap: ?*HashMap, pageContext: ?*PageContext) ?Object {
        _ = self;
        return Inheritance.upcast(?Object, Inheritance.callStatic(HelperFactory, "getInstance", .{ PermissionItemsRequestHelperFactory.FACTORYNAME, PermissionItemsRequestHelperFactory.CLASSNAME, hashMap, pageContext }));
    }
};

