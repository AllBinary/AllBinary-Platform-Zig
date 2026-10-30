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
// package views.generic.address.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const ShippingAddressesEntity = @import("org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity.zig").ShippingAddressesEntity;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ShippingAddressesView = @import("views/generic/address/shipping/ShippingAddressesView.zig").ShippingAddressesView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const ValidationView = struct {
    const Self = @This();
    pub const java_name = "views.generic.address.shipping.ValidationView";
    base: ShippingAddressesView = undefined,
    // Implements ValidationComponentInterface
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ShippingAddressesView, "create1", .{ transformInfoInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        const billingAddressesEntity: ?*ShippingAddressesEntity = Inheritance.callStatic(ShippingAddressesEntity, "create1", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getUserName").getUserName() });
        Inheritance.fieldPointer(self, "streetAddressList").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "streetAddressList").*), Inheritance.receiver(billingAddressesEntity.?, "get").get());
        if (Inheritance.fieldPointer(self, "streetAddressList").* == null) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        const size: i32 = Inheritance.receiverOf(Inheritance.fieldPointer(self, "streetAddressList").*.?, "size").size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const streetAddress: ?*StreetAddress = Inheritance.cast(?*StreetAddress, Inheritance.call(Inheritance.fieldPointer(self, "streetAddressList").*.?, "get", .{ index }));
            if (Object.same(streetAddress.?.isValid(), Boolean.FALSE)) {
                _ = Inheritance.call(Inheritance.fieldPointer(self, "streetAddressList").*.?, "remove", .{ streetAddress });
            }
            }
        }
        if (Inheritance.receiverOf(Inheritance.fieldPointer(self, "streetAddressList").*.?, "size").size() < 1) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        return String.literal("No Shipping Addresses to display.<br />");
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

