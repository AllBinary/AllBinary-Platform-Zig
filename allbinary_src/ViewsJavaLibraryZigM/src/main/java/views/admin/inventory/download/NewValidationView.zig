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
// package views.admin.inventory.download

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicItem = @import("org/allbinary/business/user/commerce/inventory/item/BasicItem.zig").BasicItem;
const ItemInterface = @import("org/allbinary/business/user/commerce/inventory/item/ItemInterface.zig").ItemInterface;
const DownloadableItem = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadableItem.zig").DownloadableItem;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const DownloadableInventoryItemView = @import("views/admin/inventory/download/DownloadableInventoryItemView.zig").DownloadableInventoryItemView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const NewValidationView = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.download.NewValidationView";
    base: DownloadableInventoryItemView = undefined,
    // Implements ValidationComponentInterface
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(DownloadableInventoryItemView, "create2", .{ transformInfoInterface, StringUtil.getInstance().?.EMPTY_STRING }).*;
        Inheritance.fieldPointer(this, "itemInterface").* = Inheritance.cast(?*ItemInterface, BasicItem.create());
        Inheritance.fieldPointer(this, "downloadableItem").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(this, "downloadableItem").*), Inheritance.callStatic(DownloadableItem, "create1", .{ Inheritance.receiverOf(Inheritance.fieldPointer(this, "itemInterface").*.?, "getId").getId() }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        _ = self;
        { // try
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        // catch (Exception e):
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        return String.literal("Error Creating New Downloadable Item");
    }
};

