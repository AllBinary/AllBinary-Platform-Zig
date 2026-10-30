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
// package org.allbinary.business.user.commerce.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const ShippingInterface = @import("org/allbinary/business/user/commerce/shipping/modules/ShippingInterface.zig").ShippingInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ShippingMethodsFactory = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodsFactory.zig").ShippingMethodsFactory;
const ShippingMethodsInterface = @import("org/allbinary/business/user/commerce/shipping/ShippingMethodsInterface.zig").ShippingMethodsInterface;

pub const ShippingMethods = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.shipping.ShippingMethods";
    pub const java_interfaces = .{ ShippingMethodsInterface };
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    shippingVector: ?*BasicArrayList = null,
    defaultShippingMethodInterface: ?*ShippingInterface = null,
    // Implements ShippingMethodsInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
    }
    

    pub fn create2(abeClientInformation: ?*AbeClientInformationInterface, storeFrontInterface: ?*StoreFrontInterface) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.defaultShippingMethodInterface = Inheritance.upcast(@TypeOf(this.defaultShippingMethodInterface), Inheritance.callStatic(ShippingMethodsFactory, "create2", .{ abeClientInformation, storeFrontInterface }).getDefaultInstance());
        this.shippingVector = Inheritance.upcast(@TypeOf(this.shippingVector), Inheritance.callStatic(ShippingMethodsFactory, "create2", .{ abeClientInformation, storeFrontInterface }).getInstance());
        return this;
    }
    

    pub fn get(self: *Self) ?*BasicArrayList {
        return self.shippingVector;
    }
    

    // throws Exception
    pub fn getShippingInterface(self: *Self, name: ?*String) ?*ShippingInterface {
        var shipping: ?*ShippingInterface = null;
        const size: i32 = self.shippingVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            shipping = Inheritance.cast(?*ShippingInterface, Inheritance.call(self.shippingVector.?, "get", .{ index }));
            if (Inheritance.call(name.?, "compareTo", .{ shipping.?.getName() }) == 0) {
                return shipping;
            }
            }
        }
        const @"error": ?*String = Inheritance.upcast(?*String, String.plus(String.literal("Error Finding Shipping: "), name));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SHIPPINGERROR })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.EXCEPTION, self, String.literal("getShippingInterface(String name)") });
        }
        std.debug.panic("{any}", .{exception: { _ = @"error"; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn getDefault(self: *Self) ?*ShippingInterface {
        return self.defaultShippingMethodInterface;
    }
};

