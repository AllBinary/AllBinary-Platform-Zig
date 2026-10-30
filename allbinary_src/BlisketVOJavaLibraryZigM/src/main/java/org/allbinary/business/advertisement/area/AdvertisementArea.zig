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
// package org.allbinary.business.advertisement.area

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const AdvertisementCampaignData = @import("org/allbinary/business/advertisement/campaign/AdvertisementCampaignData.zig").AdvertisementCampaignData;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const Document = @import("org/w3c/dom/Document.zig").Document;
const AdvertisementAreaConstraints = @import("org/allbinary/business/advertisement/area/AdvertisementAreaConstraints.zig").AdvertisementAreaConstraints;
const AdvertisementAreaConstraintsInterface = @import("org/allbinary/business/advertisement/area/AdvertisementAreaConstraintsInterface.zig").AdvertisementAreaConstraintsInterface;
const AdvertisementAreaData = @import("org/allbinary/business/advertisement/area/AdvertisementAreaData.zig").AdvertisementAreaData;
const AdvertisementAreaInterface = @import("org/allbinary/business/advertisement/area/AdvertisementAreaInterface.zig").AdvertisementAreaInterface;

pub const AdvertisementArea = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.area.AdvertisementArea";
    pub const java_interfaces = .{ AdvertisementAreaInterface };
    name: ?*String = null,
    storeName: ?*String = null,
    description: ?*String = null,
    advertisementAreaConstraintsInterface: ?*AdvertisementAreaConstraintsInterface = null,
    campaign: ?*String = null,
    // Implements AdvertisementAreaInterface

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ AdvertisementAreaData.getInstance().?.NAME }));
        this.storeName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        this.description = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ AdvertisementAreaData.getInstance().?.DESCRIPTION }));
        const constraintsDomString: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ AdvertisementAreaData.getInstance().?.CONSTRAINTS }));
        const document: ?*Document = Inheritance.upcast(?*Document, Inheritance.callStatic(DomDocumentHelper, "create", .{ constraintsDomString }));
        this.advertisementAreaConstraintsInterface = Inheritance.upcast(@TypeOf(this.advertisementAreaConstraintsInterface), Inheritance.callStatic(AdvertisementAreaConstraints, "create1", .{ document }));
        this.campaign = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ AdvertisementCampaignData.getInstance().?.NAME }));
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getStoreName(self: *Self) ?*String {
        return self.storeName;
    }
    

    pub fn getDescription(self: *Self) ?*String {
        return self.description;
    }
    

    pub fn getConstraints(self: *Self) ?*AdvertisementAreaConstraintsInterface {
        return self.advertisementAreaConstraintsInterface;
    }
    

    pub fn getCampaign(self: *Self) ?*String {
        return self.campaign;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn setStoreName(self: *Self, storeName: ?*String) void {
        self.storeName = storeName;
    }
    

    pub fn setDescription(self: *Self, description: ?*String) void {
        self.description = description;
    }
    

    pub fn setConstraints(self: *Self, advertisementConstraintsInterface: ?*AdvertisementAreaConstraintsInterface) void {
        _ = advertisementConstraintsInterface;
        self.advertisementAreaConstraintsInterface = self.advertisementAreaConstraintsInterface;
    }
    

    pub fn setCampaign(self: *Self, campaign: ?*String) void {
        self.campaign = campaign;
    }
};

