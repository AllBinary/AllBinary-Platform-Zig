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
// package org.allbinary.data.tables.advertisement.campaign.internal

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const AdvertisementCampaignInternalEntity = @import("org/allbinary/data/tables/advertisement/campaign/internal/AdvertisementCampaignInternalEntity.zig").AdvertisementCampaignInternalEntity;
const AdvertisementCampaignInternalEntityInterface = @import("org/allbinary/data/tables/advertisement/campaign/internal/AdvertisementCampaignInternalEntityInterface.zig").AdvertisementCampaignInternalEntityInterface;

pub const AdvertisementCampaignInternalEntityFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.tables.advertisement.campaign.internal.AdvertisementCampaignInternalEntityFactory";
    const CLASSNAME: ?*String = String.literal("org.allbinary.data.tables.AdvertisementCampaignEntity");
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AdvertisementCampaignInternalEntityInterface {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            return Inheritance.cast(?*AdvertisementCampaignInternalEntityInterface, AdvertisementCampaignInternalEntity.create());
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.ENTITYFACTORYERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, String.literal("AdvertisementCampaignEntityFactory"), commonStrings.?.GET_INSTANCE, e });
//             }
//             return null;
    }
};

