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
// package tags.admin

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const JspTagException = @import("javax/servlet/jsp/JspTagException.zig").JspTagException;
const UserRoleData = @import("org/allbinary/business/user/role/UserRoleData.zig").UserRoleData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const SqlStrings = @import("org/allbinary/logic/communication/sql/SqlStrings.zig").SqlStrings;
const StoreValidationTransformTag = @import("tags/StoreValidationTransformTag.zig").StoreValidationTransformTag;

pub const UserTag = struct {
    const Self = @This();
    pub const java_name = "tags.admin.UserTag";
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
        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ UserRoleData.NAME, self.role });
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.NEW }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("New User View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.admin.user.NewUserView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.INSERT }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ SqlStrings.getInstance().?.INSERT_INTO }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Add Validation User View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.admin.user.AddValidationUserView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.VIEW }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Validation User View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.admin.user.ViewValidationUserView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.EDIT }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Validation User View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.admin.user.EditValidationUserView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.UPDATE }) == 0 or Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ SqlStrings.getInstance().?.UPDATE }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Update Validation User View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.admin.user.UpdateValidationUserView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DELETE }) == 0) {
                    _ = Inheritance.call(self, "setName", .{ String.literal("Delete Validation User View") });
                    _ = Inheritance.call(self, "setObjectFile", .{ String.literal("views.admin.user.DeleteValidationUserView") });
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.BACKUP }) == 0) {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("View not implemented"); break :exception error.Exception; }});
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.RESTORE }) == 0) {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("View not implemented"); break :exception error.Exception; }});
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DROP }) == 0) {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("View not implemented"); break :exception error.Exception; }});
                } else if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.CREATE }) == 0) {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("View not implemented"); break :exception error.Exception; }});
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

