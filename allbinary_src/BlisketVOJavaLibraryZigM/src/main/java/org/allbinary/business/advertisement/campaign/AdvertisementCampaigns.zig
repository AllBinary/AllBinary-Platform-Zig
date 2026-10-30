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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AdvertisementInterface = @import("org/allbinary/business/advertisement/AdvertisementInterface.zig").AdvertisementInterface;
const AdvertisementsInterface = @import("org/allbinary/business/advertisement/AdvertisementsInterface.zig").AdvertisementsInterface;
const AdvertisementSearchInterface = @import("org/allbinary/business/advertisement/search/AdvertisementSearchInterface.zig").AdvertisementSearchInterface;
const AdvertisementCampaignsInterface = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaignsInterface.zig").AdvertisementCampaignsInterface;

pub const AdvertisementCampaigns = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.campaign.AdvertisementCampaigns";
    pub const java_interfaces = .{ AdvertisementCampaignsInterface };
    advertisementsVector: ?*BasicArrayList = null,
    // Implements AdvertisementCampaignsInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create1(vector: ?*BasicArrayList) *Self {
        _ = vector;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.advertisementsVector = this.advertisementsVector;
        return this;
    }
    

    pub fn add(self: *Self, advertisementInterface: ?*AdvertisementInterface) void {
        _ = Inheritance.call(self.advertisementsVector.?, "add", .{ advertisementInterface });
    }
    

    pub fn get(self: *Self, index: i32) ?*AdvertisementInterface {
        return Inheritance.cast(?*AdvertisementInterface, Inheritance.call(self.advertisementsVector.?, "get", .{ index }));
    }
    

    pub fn size(self: *Self) i32 {
        return self.advertisementsVector.?.size();
    }
    

    pub fn isEnabled(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn search(self: *Self, advertisementSearchInterface: ?*AdvertisementSearchInterface) ?*AdvertisementsInterface {
        _ = advertisementSearchInterface;
        _ = self;
        return null;
    }
};

