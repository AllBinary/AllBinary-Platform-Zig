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
// package org.allbinary.business.advertisement

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const LockedUtil = @import("org/allbinary/logic/system/security/licensing/LockedUtil.zig").LockedUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AdvertisementProcessorInterface = @import("org/allbinary/business/advertisement/AdvertisementProcessorInterface.zig").AdvertisementProcessorInterface;

pub const Advertisements = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.Advertisements";
    bannerList: ?*BasicArrayList = null,
    pageList: ?*BasicArrayList = null,
    myRandomFactory: ?*MyRandomFactory = null,

    fn initFields(this: *Self) void {
        this.bannerList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.pageList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.myRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn addPage(self: *Self, advertisementProcessorInterface: ?*AdvertisementProcessorInterface) void {
        if (!Inheritance.call(self.pageList.?, "contains", .{ advertisementProcessorInterface })) {
            _ = Inheritance.call(self.pageList.?, "add", .{ advertisementProcessorInterface });
        }
    }
    

    pub fn startRandomPage(self: *Self) void {
        const size: i32 = self.pageList.?.size();
        if (size > 0) {
            const random: i32 = Inheritance.call(self.myRandomFactory.?, "getAbsoluteNextInt", .{ size });
            const advertisementProcessorInterface: ?*AdvertisementProcessorInterface = Inheritance.cast(?*AdvertisementProcessorInterface, self.pageList.?.objectArray[@intCast(random)]);
            _ = advertisementProcessorInterface.?.start();
        }
    }
    

    pub fn processRandomPage(self: *Self) void {
        if (Inheritance.receiverOf(LockedUtil.getInstance().?, "isLocked").isLocked()) {
            const size: i32 = self.pageList.?.size();
            if (size > 0) {
                const random: i32 = Inheritance.call(self.myRandomFactory.?, "getAbsoluteNextInt", .{ size });
                const advertisementProcessorInterface: ?*AdvertisementProcessorInterface = Inheritance.cast(?*AdvertisementProcessorInterface, self.pageList.?.objectArray[@intCast(random)]);
                _ = advertisementProcessorInterface.?.process();
            }
        }
    }
    

    pub fn stopAllPage(self: *Self) void {
        {
            var index: i32 = self.pageList.?.size();
            while (value_N66593: { index -= 1; break :value_N66593 index; } >= 0) {
            const advertisementProcessorInterface: ?*AdvertisementProcessorInterface = Inheritance.cast(?*AdvertisementProcessorInterface, self.pageList.?.objectArray[@intCast(index)]);
            _ = advertisementProcessorInterface.?.stop();
            }
        }
    }
    

    pub fn addBanner(self: *Self, advertisementProcessorInterface: ?*AdvertisementProcessorInterface) void {
        if (!Inheritance.call(self.bannerList.?, "contains", .{ advertisementProcessorInterface })) {
            _ = Inheritance.call(self.bannerList.?, "add", .{ advertisementProcessorInterface });
        }
    }
    

    pub fn startAll(self: *Self) void {
        {
            var index: i32 = self.bannerList.?.size();
            while (value_N66907: { index -= 1; break :value_N66907 index; } >= 0) {
            const advertisementProcessorInterface: ?*AdvertisementProcessorInterface = Inheritance.cast(?*AdvertisementProcessorInterface, self.bannerList.?.objectArray[@intCast(index)]);
            _ = advertisementProcessorInterface.?.start();
            }
        }
    }
    

    pub fn stopAllBanner(self: *Self) void {
        {
            var index: i32 = self.bannerList.?.size();
            while (value_N67096: { index -= 1; break :value_N67096 index; } >= 0) {
            const advertisementProcessorInterface: ?*AdvertisementProcessorInterface = Inheritance.cast(?*AdvertisementProcessorInterface, self.bannerList.?.objectArray[@intCast(index)]);
            _ = advertisementProcessorInterface.?.stop();
            }
        }
    }
    

    pub fn getBanner(self: *Self, index: i32) ?*AdvertisementProcessorInterface {
        const advertisementProcessorInterface: ?*AdvertisementProcessorInterface = Inheritance.cast(?*AdvertisementProcessorInterface, self.bannerList.?.objectArray[@intCast(index)]);
        return advertisementProcessorInterface;
    }
    

    pub fn stopAll(self: *Self) void {
        _ = self.stopAllBanner();
        _ = self.stopAllPage();
    }
};

