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
// package org.allbinary.business.context.modules.storefront

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StoreFrontsEntity = @import("org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntity.zig").StoreFrontsEntity;
const StoreFrontsEntityFactory = @import("org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory.zig").StoreFrontsEntityFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StoreFront = @import("org/allbinary/business/context/modules/storefront/StoreFront.zig").StoreFront;

pub const StoreFrontFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.context.modules.storefront.StoreFrontFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance(storeName: ?*String) ?*StoreFront {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            const storeFronts: ?*StoreFrontsEntity = Inheritance.upcast(?*StoreFrontsEntity, Inheritance.receiverOf(StoreFrontsEntityFactory.getInstance().?, "getStoreFrontsEntityInstance").getStoreFrontsEntityInstance());
            return Inheritance.upcast(?*StoreFront, Inheritance.call(storeFronts.?, "getStoreFrontInterface", .{ storeName }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.FACTORYERROR })) {
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.literal("StoreFrontFactory"), commonStrings.?.GET_INSTANCE, e });
//             }
//             return null;
    }
};

