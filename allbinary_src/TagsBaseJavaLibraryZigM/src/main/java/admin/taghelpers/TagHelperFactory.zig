// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TagHelperFactoryInterface = @import("admin/taghelpers/TagHelperFactoryInterface.zig").TagHelperFactoryInterface;

pub const TagHelperFactory = struct {
    const Self = @This();
    pub const java_name = "admin.taghelpers.TagHelperFactory";
    pub const java_interfaces = .{ TagHelperFactoryInterface };
    commonStrings: ?*CommonStrings = null,
    // Implements TagHelperFactoryInterface

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception, LicensingException
    pub fn getInstance(self: *Self, hashMap: ?*HashMap, pageContext: ?*PageContext) ?Object {
        _ = hashMap;
        _ = pageContext;
        _ = self;
        std.debug.panic("{any}", .{error.RuntimeException});
    }
};

