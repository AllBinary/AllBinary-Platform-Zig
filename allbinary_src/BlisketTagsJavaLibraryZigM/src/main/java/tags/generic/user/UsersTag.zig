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
// package tags.generic.user

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const UserRoleData = @import("org/allbinary/business/user/role/UserRoleData.zig").UserRoleData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const StoreValidationTransformTag = @import("tags/StoreValidationTransformTag.zig").StoreValidationTransformTag;

pub const UsersTag = struct {
    const Self = @This();
    pub const java_name = "tags.generic.user.UsersTag";
    base: StoreValidationTransformTag = undefined,
    role: ?*String = null,

    fn initFields(this: *Self) void {
        this.role = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = StoreValidationTransformTag.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setRole(self: *Self, value: ?*String) void {
        self.role = value;
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            _ = Inheritance.call(self, "setName", .{ String.literal("Generic Users View") });
            _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.generic.user.UsersValidationView") });
            if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ UserRoleData.NAME, self.role });
                if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.VIEW }) == 0) {
                } else {
                    std.debug.panic("{any}", .{exception: { _ = String.plus(String.literal("No Such View Command: "), Inheritance.receiver(self, "getCommand").getCommand()); break :exception error.Exception; }});
                }
                return self.base.doStartTag();
            }
            std.debug.panic("{any}", .{exception: { _ = String.literal("Command Null"); break :exception error.Exception; }});
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

