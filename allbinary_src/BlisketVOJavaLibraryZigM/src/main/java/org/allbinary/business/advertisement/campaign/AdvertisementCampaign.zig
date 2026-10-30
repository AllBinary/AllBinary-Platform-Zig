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
// package org.allbinary.business.advertisement.campaign

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const DynamicObjectData = @import("org/allbinary/business/DynamicObjectData.zig").DynamicObjectData;
const AdvertisementsInterface = @import("org/allbinary/business/advertisement/AdvertisementsInterface.zig").AdvertisementsInterface;
const AdvertisementSearchInterface = @import("org/allbinary/business/advertisement/search/AdvertisementSearchInterface.zig").AdvertisementSearchInterface;
const AdvertisementCampaignData = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaignData.zig").AdvertisementCampaignData;
const AdvertisementCampaignInterface = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaignInterface.zig").AdvertisementCampaignInterface;

pub const AdvertisementCampaign = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.campaign.AdvertisementCampaign";
    pub const java_interfaces = .{ AdvertisementCampaignInterface };
    hashMap: ?*HashMap = null,
    // Implements AdvertisementCampaignInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.hashMap = hashMap;
        return this;
    }
    

    pub fn getComponent(self: *Self) ?Object {
        _ = self;
        return null;
    }
    

    pub fn getName(self: *Self) ?*String {
        return Inheritance.cast(?*String, Inheritance.call(self.hashMap.?, "get", .{ AdvertisementCampaignData.getInstance().?.NAME }));
    }
    

    pub fn setComponentName(self: *Self, name: ?*String) void {
        _ = Inheritance.call(self.hashMap.?, "put", .{ DynamicObjectData.NAME, name });
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        _ = Inheritance.call(self.hashMap.?, "put", .{ AdvertisementCampaignData.getInstance().?.NAME, name });
    }
    

    pub fn search(self: *Self, advertisementSearchInterface: ?*AdvertisementSearchInterface) ?*AdvertisementsInterface {
        _ = advertisementSearchInterface;
        _ = self;
        return null;
    }
};

