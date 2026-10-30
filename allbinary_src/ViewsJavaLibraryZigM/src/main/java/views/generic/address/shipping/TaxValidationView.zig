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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const ShippingAddressData = @import("org/allbinary/business/user/address/ShippingAddressData.zig").ShippingAddressData;
const StreetAddress = @import("org/allbinary/business/user/address/StreetAddress.zig").StreetAddress;
const ShippingAddressesEntity = @import("org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity.zig").ShippingAddressesEntity;
const ValidationComponentInterface = @import("org/allbinary/logic/control/validate/ValidationComponentInterface.zig").ValidationComponentInterface;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const TransformInfoInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoInterface.zig").TransformInfoInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ShippingAddressView = @import("views/generic/address/shipping/ShippingAddressView.zig").ShippingAddressView;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const TaxValidationView = struct {
    const Self = @This();
    pub const java_name = "views.generic.address.shipping.TaxValidationView";
    base: ShippingAddressView = undefined,
    // Implements ValidationComponentInterface
    

    pub fn create1(transformInfoInterface: ?*TransformInfoInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ShippingAddressView, "create1", .{ transformInfoInterface }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        const billingAddressesEntity: ?*ShippingAddressesEntity = Inheritance.callStatic(ShippingAddressesEntity, "create1", .{ Inheritance.receiverOf(Inheritance.receiver(self, "getWeblisketSession").getWeblisketSession().?, "getUserName").getUserName() });
        const streetAddressList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(billingAddressesEntity.?, "get").get());
        if (streetAddressList == null) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        const size: i32 = streetAddressList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const aStreetAddress: ?*StreetAddress = Inheritance.cast(?*StreetAddress, Inheritance.call(streetAddressList.?, "get", .{ index }));
            if (Inheritance.call(aStreetAddress.?.getName().?, "compareTo", .{ ShippingAddressData.TAX }) == 0) {
                Inheritance.fieldPointer(self, "streetAddress").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "streetAddress").*), aStreetAddress);
                return Inheritance.upcast(?*Boolean, Boolean.TRUE);
            }
            }
        }
        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
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

