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
// package views.admin.inventory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const InventoryEntityFactory = @import("org/allbinary/data/tables/user/commerce/inventory/item/InventoryEntityFactory.zig").InventoryEntityFactory;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const InventoryItemView = @import("views/admin/inventory/InventoryItemView.zig").InventoryItemView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const DeleteFileValidationView = struct {
    const Self = @This();
    pub const java_name = "views.admin.inventory.DeleteFileValidationView";
    base: InventoryItemView = undefined,
    id: ?*String = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        this.id = null;
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(InventoryItemView, "create2", .{ transformInfoInterface, StringUtil.getInstance().?.EMPTY_STRING }).*;
        this.initFields();
        _ = this.getFormData();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getFormData(self: *Self) void {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.callStatic(RequestParams, "create1", .{ Inheritance.fieldPointer(self, "request").* }).toHashMap());
        if (hashMap == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Request Params Found"); break :exception error.Exception; }});
        }
        self.id = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ Inheritance.fieldPointer(self, "basicItemData").*.?.ID }));
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            if (self.id == null or !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ self.id })) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
            Inheritance.fieldPointer(self, "itemInterface").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "itemInterface").*), Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "getItem", .{ self.id }));
            if (Inheritance.fieldPointer(self, "itemInterface").* == null) {
                return Inheritance.upcast(?*Boolean, Boolean.FALSE);
            }
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
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (self.id == null or !Inheritance.call(StringValidationUtil.getInstance().?, "isNumber", .{ self.id })) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Id is not valid.<br />") });
            }
            if (Inheritance.call(Inheritance.receiverOf(InventoryEntityFactory.getInstance().?, "getInventoryEntityInstance").getInventoryEntityInstance().?, "getItem", .{ self.id }) == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Item does not exist.<br />") });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             return String.literal("Unkown Validation Error.<br />");
    }
};

