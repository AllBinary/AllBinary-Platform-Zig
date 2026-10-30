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
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LockableFeature = @import("org/allbinary/logic/system/security/licensing/LockableFeature.zig").LockableFeature;
const ThirdPartyInApplicationPurchaseInterface = @import("org/allbinary/logic/system/security/licensing/ThirdPartyInApplicationPurchaseInterface.zig").ThirdPartyInApplicationPurchaseInterface;

pub const ThirdPartyInApplicationPurchase = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.ThirdPartyInApplicationPurchase";
    pub const java_interfaces = .{ ThirdPartyInApplicationPurchaseInterface };
    // Implements ThirdPartyInApplicationPurchaseInterface

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn isPurchased(self: *Self, lockableFeature: ?*LockableFeature) bool {
        _ = lockableFeature;
        _ = self;
        return false;
    }
    

    pub fn onCreate(self: *Self, anyType: ?Object, stateObject: ?Object) void {
        _ = anyType;
        _ = stateObject;
        _ = self;
    }
    

    pub fn onDestroy(self: *Self) void {
        _ = self;
    }
    

    pub fn onStart(self: *Self) void {
        _ = self;
    }
    

    pub fn onActivityResult(self: *Self, requestCode: i32, resultCode: i32, dataObject: ?Object) void {
        _ = requestCode;
        _ = resultCode;
        _ = dataObject;
        _ = self;
    }
    

    pub fn onSaveInstanceState(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
    

    pub fn onStop(self: *Self) void {
        _ = self;
    }
    

    pub fn requestPurchase(self: *Self, lockableFeature: ?*LockableFeature) void {
        _ = lockableFeature;
        _ = self;
    }
    

    pub fn requestReceipts(self: *Self) void {
        _ = self;
    }
    

    pub fn add(self: *Self, lockableFeature: ?*LockableFeature) void {
        _ = lockableFeature;
        _ = self;
    }
    

    pub fn getUserName(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn isEnabled(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn requestProducts(self: *Self) void {
        _ = self;
    }
};

