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
// const Tag = @import("javax/servlet/jsp/tagext/Tag.zig").Tag;
const InventoryHelperFactory = @import("admin/taghelpers/InventoryHelperFactory.zig").InventoryHelperFactory;
const InventoryRequestHelperFactory = @import("admin/taghelpers/InventoryRequestHelperFactory.zig").InventoryRequestHelperFactory;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const AbResponseHandler = @import("org/allbinary/logic/communication/http/request/AbResponseHandler.zig").AbResponseHandler;
const AbTagData = @import("admin/tags/AbTagData.zig").AbTagData;
const ParentInventoryTagHelper = @import("admin/tags/ParentInventoryTagHelper.zig").ParentInventoryTagHelper;
const TableTag = @import("admin/tags/TableTag.zig").TableTag;

pub const InventoryTag = struct {
    const Self = @This();
    pub const java_name = "admin.tags.InventoryTag";
    base: TableTag = undefined,
    storeName: ?*String = null,

    fn initFields(this: *Self) void {
        this.storeName = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TableTag, "create", .{  }).*;
        this.initFields();
        _ = Inheritance.call(this, "setTagHelperFactory", .{ InventoryHelperFactory.create() });
        _ = Inheritance.call(this, "setTagRequestHelperFactory", .{ InventoryRequestHelperFactory.create() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        self.storeName = value;
    }
    

    // throws JspTagException
    pub fn doStartTag(self: *Self) i32 {
        { // try
            if (Inheritance.receiver(self, "isEnabled").isEnabled()) {
                if (Inheritance.receiver(self, "getCommand").getCommand() != null) {
                    if (Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.BACKUP }) != 0 and Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ org.allbinary.?.globals.?.GLOBALS2.?.RESTORE }) != 0 and Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.CREATE }) != 0 and Inheritance.call(Inheritance.receiver(self, "getCommand").getCommand().?, "compareTo", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.DROP }) != 0) {
                        const parentTag: ?*Tag = Inheritance.upcast(?*Tag, Inheritance.receiver(self, "getParent").getParent());
                        _ = Inheritance.call(ParentInventoryTagHelper.getInstance().?, "isValid", .{ self, parentTag });
                        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ AbTagData.PARENT, parentTag });
                        _ = Inheritance.call(Inheritance.receiver(self, "getPropertiesHashMap").getPropertiesHashMap().?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
                    }
                    return self.base.doStartTag();
                }
            }
            return SKIP_BODY;
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(AbResponseHandler, "sendJspTagRedirect", .{ Inheritance.fieldPointer(self, "pageContext").*, e });
//             return SKIP_BODY;
    }
};

