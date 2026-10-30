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
// package org.allbinary.game.layer.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BaseResourceAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/resource/BaseResourceAnimationInterfaceFactoryInterfaceFactory.zig").BaseResourceAnimationInterfaceFactoryInterfaceFactory;
const ImageCache = @import("org/allbinary/image/ImageCache.zig").ImageCache;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const OnDemandResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.resources.OnDemandResources";
    logUtil: ?*LogUtil = null,
    pub var NULL_ON_DEMAND_RESOURCES: ?*OnDemandResources = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_ON_DEMAND_RESOURCES = OnDemandResources.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn waitFor(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn init(self: *Self) void {
        _ = self;
    }
    

    // throws Exception
    pub fn initAt(self: *Self, imageCache: ?*ImageCache, resourceAnimationInterfaceFactoryInterfaceFactory: ?*BaseResourceAnimationInterfaceFactoryInterfaceFactory, portion: i32, loadingString: ?*String, index: i32) i32 {
        _ = imageCache;
        _ = resourceAnimationInterfaceFactoryInterfaceFactory;
        _ = portion;
        _ = loadingString;
        _ = index;
        _ = self;
        return 0;
    }
};

