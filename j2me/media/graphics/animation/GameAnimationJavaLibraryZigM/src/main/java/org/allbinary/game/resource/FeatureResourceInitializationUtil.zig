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
// package org.allbinary.game.resource

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const FeaturedAnimationInterfaceFactoryInterfaceFactory = @import("org/allbinary/animation/FeaturedAnimationInterfaceFactoryInterfaceFactory.zig").FeaturedAnimationInterfaceFactoryInterfaceFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const FeaturedResourceFactory = @import("org/allbinary/game/resource/FeaturedResourceFactory.zig").FeaturedResourceFactory;
const FeaturedResourceRelativeRelationshipFactory = @import("org/allbinary/game/resource/FeaturedResourceRelativeRelationshipFactory.zig").FeaturedResourceRelativeRelationshipFactory;

pub const FeatureResourceInitializationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.resource.FeatureResourceInitializationUtil";
    logUtil: ?*LogUtil = null,
    var instance: ?*FeatureResourceInitializationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = FeatureResourceInitializationUtil.create();
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
    

    pub fn getInstance() ?*FeatureResourceInitializationUtil {
        return Inheritance.upcast(?*FeatureResourceInitializationUtil, FeatureResourceInitializationUtil.instance);
    }
    

    // throws Exception
    pub fn init(self: *Self, level: i32) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        _ = Inheritance.call(self.logUtil.?, "putF", .{ commonStrings.?.START, self, commonStrings.?.INIT });
        const featuredResourceFactory: ?*FeaturedResourceFactory = Inheritance.upcast(?*FeaturedResourceFactory, FeaturedAnimationInterfaceFactoryInterfaceFactory.getInstance());
        _ = Inheritance.call(featuredResourceFactory.?, "init", .{ level });
        _ = Inheritance.call(FeaturedResourceRelativeRelationshipFactory.getInstance().?, "init", .{ level });
    }
};

