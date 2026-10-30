// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
const GameType = @import("org/allbinary/game/GameType.zig").GameType;
const GameState = @import("org/allbinary/game/state/GameState.zig").GameState;
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const AdConfiguration = @import("org/allbinary/business/advertisement/AdConfiguration.zig").AdConfiguration;
const Advertisements = @import("org/allbinary/business/advertisement/Advertisements.zig").Advertisements;

pub const GameAdStateBase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.advertisement.GameAdStateBase";
    adConfigurationP: ?*AdConfiguration = null,
    advertisementsP: ?*Advertisements = null,
    okayToShowAdsP: bool = false,

    fn initFields(this: *Self) void {
        
        this.advertisementsP = Advertisements.create();
        this.okayToShowAdsP = false;
    }
    

    pub fn create1(adConfiguration: ?*AdConfiguration) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.adConfigurationP = adConfiguration;
        return this;
    }
    

    pub fn initViewArray(self: *Self, viewArray: []?Object) void {
        _ = viewArray;
        _ = self;
    }
    

    pub fn onStart(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self.init();
    }
    

    pub fn init(self: *Self) void {
        _ = self;
    }
    

    pub fn isShowingAtLocation(self: *Self, location: i32) bool {
        _ = location;
        _ = self;
        return false;
    }
    

    pub fn isShowingAt(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn show(self: *Self) void {
        _ = self;
    }
    

    pub fn hide(self: *Self) void {
        _ = self;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn processAdState(self: *Self, gameState: ?*GameState, gameType: ?*GameType) void {
        _ = gameState;
        _ = gameType;
        _ = self;
    }
    

    pub fn processPageAdState(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn playingAdState(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn playingAdStateWH(self: *Self, width: i32, height: i32) void {
        _ = width;
        _ = height;
        _ = self;
    }
    

    // throws Exception
    pub fn notPlayingAdState(self: *Self) void {
        _ = self;
    }
    

    pub fn setGameIsReady(self: *Self, gameIsReady: bool) void {
        _ = gameIsReady;
        _ = self;
    }
    

    pub fn isGameIsReady(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getAdvertisements(self: *Self) ?*Advertisements {
        return self.advertisementsP;
    }
    

    pub fn getAdConfiguration(self: *Self) ?*AdConfiguration {
        return self.adConfigurationP;
    }
    

    pub fn isOkayToShowPageAd(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn setOkayToShowAds(self: *Self, okayToShowAds: bool) void {
        self.okayToShowAdsP = okayToShowAds;
    }
    

    pub fn isOkayToShowAds(self: *Self) bool {
        return self.okayToShowAdsP;
    }
    

    pub fn isEnabled(self: *Self) bool {
        _ = self;
        return false;
    }
};

