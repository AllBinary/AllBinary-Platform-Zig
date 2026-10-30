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
// package views.generic.address.billing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StreetAddressData = @import("org/allbinary/business/user/address/StreetAddressData.zig").StreetAddressData;
const BillingAddressesEntity = @import("org/allbinary/data/tables/user/address/billing/BillingAddressesEntity.zig").BillingAddressesEntity;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const BillingAddressView = @import("views/generic/address/billing/BillingAddressView.zig").BillingAddressView;
const Integer = @import("java/lang/Integer.zig").Integer;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const EditValidationView = struct {
    const Self = @This();
    pub const java_name = "views.generic.address.billing.EditValidationView";
    base: BillingAddressView = undefined,
    value: ?*String = null,
    // Implements ValidationComponentInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BillingAddressView, "create1", .{ transformInfoInterface }).*;
        this.initFields();
        this.value = Inheritance.upcast(@TypeOf(this.value), Inheritance.call(Inheritance.receiverOf(Inheritance.receiver(this, "getPageContext").getPageContext().?, "getRequest").getRequest().?, "getParameter", .{ StreetAddressData.ID }));
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        if (Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getUserName").getUserName() != null) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        const billingAddressesEntity: ?*BillingAddressesEntity = Inheritance.callStatic(BillingAddressesEntity, "create1", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getUserName").getUserName() });
        Inheritance.fieldPointer(self, "streetAddress").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "streetAddress").*), Inheritance.call(billingAddressesEntity.?, "get", .{ Inheritance.callStatic(Integer, "create1", .{ self.value }) }));
        if (Inheritance.fieldPointer(self, "streetAddress").* == null) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        return Inheritance.upcast(?*Boolean, Inheritance.receiverOf(Inheritance.fieldPointer(self, "streetAddress").*.?, "isValid").isValid());
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.receiverOf(Inheritance.fieldPointer(self, "streetAddress").*.?, "validationInfo").validationInfo());
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
};

