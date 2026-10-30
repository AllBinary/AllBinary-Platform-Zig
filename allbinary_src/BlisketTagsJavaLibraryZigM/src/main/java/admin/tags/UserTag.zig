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
// package admin.tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const UserHelperFactory = @import("admin/taghelpers/UserHelperFactory.zig").UserHelperFactory;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const UserRoleData = @import("org/allbinary/business/user/role/UserRoleData.zig").UserRoleData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const TableTag = @import("admin/tags/TableTag.zig").TableTag;

pub const UserTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.UserTag";
    base: TableTag = undefined,
    role: ?*String = null,
    enable: ?*String = null,

    fn initFields(this: *Self) void {
        this.role = null;
        this.enable = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TableTag.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setTagHelperFactory", .{ UserHelperFactory.create() });
        _ = Inheritance.call(this, "setTagRequestHelperFactory", .{ UserHelperFactory.create() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setRole(self: *Self, value: ?*String) void {
        self.role = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ UserRoleData.NAME, self.role });
    }
    

    pub fn setEnable(self: *Self, value: ?*String) void {
        self.enable = value;
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ EntryData.getInstance().?.ENABLE, self.enable });
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "isEnabled").isEnabled()) {
                return self.base.doStartTag();
            }
            return SKIP_BODY;
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

