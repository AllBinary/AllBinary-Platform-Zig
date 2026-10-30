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
// package org.allbinary.bundle.logic.system.loader

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Bundle = @import("org/osgi/framework/Bundle.zig").Bundle;
const ServiceFactory = @import("org/osgi/framework/ServiceFactory.zig").ServiceFactory;
const ServiceRegistration = @import("org/osgi/framework/ServiceRegistration.zig").ServiceRegistration;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const CryptService = @import("org/allbinary/bundle/logic/system/loader/CryptService.zig").CryptService;

pub const CryptServiceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.bundle.logic.system.loader.CryptServiceFactory";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    cryptService: ?*CryptService = null,
    // Implements ServiceFactory

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.cryptService = CryptService.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getService(self: *Self, bundle: ?*Bundle, registration: ?*ServiceRegistration) ?Object {
        _ = bundle;
        _ = registration;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("getService") });
        return Inheritance.upcast(?Object, self.cryptService);
    }
    

    pub fn ungetService(self: *Self, bundle: ?*Bundle, registration: ?*ServiceRegistration, service: ?Object) void {
        _ = bundle;
        _ = registration;
        _ = service;
        _ = self;
    }
};

