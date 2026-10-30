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
// package org.allbinary.logic.system.os.android

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Context = @import("android/content/Context.zig").Context;
const Build = @import("android/os/Build.zig").Build;
const ResourceUtil = @import("org/allbinary/data/resource/ResourceUtil.zig").ResourceUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const AndroidSystemProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.os.android.AndroidSystemProperties";
    commonStrings: ?*CommonStrings = null,
    var SINGLETON: ?*AndroidSystemProperties = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = Inheritance.callStatic(AndroidSystemProperties, "create1", .{ Inheritance.receiverOf(ResourceUtil.getInstance().?, "getContext").getContext() });
    }

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }
    

    pub fn getInstance() ?*AndroidSystemProperties {
        return Inheritance.upcast(?*AndroidSystemProperties, AndroidSystemProperties.SINGLETON);
    }
    

    pub fn create1(context: ?*Context) *Self {
        _ = context;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getDeviceId(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn getDeviceSoftwareVersion(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getLine1Number(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getNetworkCountryIso(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getNetworkOperator(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getNetworkOperatorName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getSimCountryIso(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getSimOperator(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getSimOperatorName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getSimSerialNumber(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getSubscriberId(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getVoiceMailAlphaTag(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getVoiceMailNumber(self: *Self) ?*String {
        return Inheritance.upcast(?*String, self.commonStrings.?.DISABLE);
    }
    

    pub fn getNetworkType(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    pub fn getPhoneType(self: *Self) i32 {
        _ = self;
        return -1;
    }
    

    pub fn getBoard(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.BOARD);
    }
    

    pub fn getBrand(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.BRAND);
    }
    

    pub fn getDevice(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.DEVICE);
    }
    

    pub fn getFingerprint(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.FINGERPRINT);
    }
    

    pub fn getHost(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.HOST);
    }
    

    pub fn getId(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.ID);
    }
    

    pub fn getModel(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.MODEL);
    }
    

    pub fn getProduct(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.PRODUCT);
    }
    

    pub fn getTags(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.TAGS);
    }
    

    pub fn getTime(self: *Self) i64 {
        _ = self;
        return Build.TIME;
    }
    

    pub fn getType(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.TYPE);
    }
    

    pub fn getUser(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Build.USER);
    }
};

