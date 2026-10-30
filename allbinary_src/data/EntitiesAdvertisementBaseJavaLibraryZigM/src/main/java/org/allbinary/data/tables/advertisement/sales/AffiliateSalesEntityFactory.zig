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
// package org.allbinary.data.tables.advertisement.sales

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AffiliateSalesEntity = @import("org/allbinary/data/tables/advertisement/sales/AffiliateSalesEntity.zig").AffiliateSalesEntity;
const AffiliateSalesEntityInterface = @import("org/allbinary/data/tables/advertisement/sales/AffiliateSalesEntityInterface.zig").AffiliateSalesEntityInterface;

pub const AffiliateSalesEntityFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.advertisement.sales.AffiliateSalesEntityFactory";
    const CLASSNAME: ?*String = String.literal("org.allbinary.data.tables.AffiliatesSalesEntity");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AffiliateSalesEntityInterface {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            return Inheritance.cast(?*AffiliateSalesEntityInterface, AffiliateSalesEntity.create());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.literal("AffiliateEntityFactory"), commonStrings.?.GET_INSTANCE, e });
//             }
//             return null;
    }
};

