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
// package org.allbinary.game.midlet

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ClientInformationFactory = @import("org/allbinary/logic/system/security/licensing/ClientInformationFactory.zig").ClientInformationFactory;
const LicenseServerInitFileUtil = @import("org/allbinary/logic/system/security/licensing/LicenseServerInitFileUtil.zig").LicenseServerInitFileUtil;
const DemoGameMidlet = @import("org/allbinary/game/midlet/DemoGameMidlet.zig").DemoGameMidlet;
const LicenseCheckRunnableFactory = @import("org/allbinary/game/midlet/LicenseCheckRunnableFactory.zig").LicenseCheckRunnableFactory;
const LicenseLoadingType = @import("org/allbinary/game/midlet/LicenseLoadingType.zig").LicenseLoadingType;
const LicensedDemoSetupFactory = @import("org/allbinary/game/midlet/LicensedDemoSetupFactory.zig").LicensedDemoSetupFactory;

pub const SpecialDemoGameMidlet = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.midlet.SpecialDemoGameMidlet";
    base: DemoGameMidlet = undefined,
    

    pub fn create4(clientInformationFactory: ?*ClientInformationFactory, licenseLoadingType: ?*LicenseLoadingType, demoSetupFactory: ?*LicensedDemoSetupFactory, licenseCheckRunnableFactory: ?*LicenseCheckRunnableFactory) *Self {
        _ = licenseLoadingType;
        _ = demoSetupFactory;
        _ = licenseCheckRunnableFactory;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(DemoGameMidlet, "create1", .{ clientInformationFactory }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initView(self: *Self) void {
        _ = self;
    }
    

    pub fn preInit(self: *Self) void {
        _ = self;
        _ = LicenseServerInitFileUtil.create().init();
    }
};

