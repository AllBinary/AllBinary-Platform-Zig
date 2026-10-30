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
// package org.allbinary.data.tables.user.address.shipping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StreetAddressesEntity = @import("org/allbinary/data/tables/user/address/StreetAddressesEntity.zig").StreetAddressesEntity;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ShippingAddressesEntity = @import("org/allbinary/data/tables/user/address/shipping/ShippingAddressesEntity.zig").ShippingAddressesEntity;

pub const ShippingAddressesEntityFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.user.address.shipping.ShippingAddressesEntityFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*ShippingAddressesEntityFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ShippingAddressesEntityFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn getInstance() ?*ShippingAddressesEntityFactory {
        return Inheritance.upcast(?*ShippingAddressesEntityFactory, ShippingAddressesEntityFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance1(self: *Self, userName: ?*String) ?*StreetAddressesEntity {
        _ = self;
        { // try
            return Inheritance.upcast(?*StreetAddressesEntity, Inheritance.callStatic(ShippingAddressesEntity, "create1", .{ userName }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("getShippingAddressesEntityInstance()"), e });
//             }
//             return null;
    }
};

