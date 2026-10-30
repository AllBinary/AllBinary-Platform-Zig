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
// package org.allbinary.media.image.comparison.motion

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CacheInterface = @import("org/allbinary/logic/util/cache/CacheInterface.zig").CacheInterface;
const CacheInterfaceFactory = @import("org/allbinary/logic/util/cache/CacheInterfaceFactory.zig").CacheInterfaceFactory;
const CachePolicyFactory = @import("org/allbinary/logic/util/cache/CachePolicyFactory.zig").CachePolicyFactory;
const CacheTypeFactory = @import("org/allbinary/logic/util/cache/CacheTypeFactory.zig").CacheTypeFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const ConstrainedMotionRectanglesResultsCacheSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.comparison.motion.ConstrainedMotionRectanglesResultsCacheSingleton";
    logUtil: ?*LogUtil = null,
    var cacheInterface: ?*CacheInterface = null;

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    // Java static initializer: call this once at startup
    pub fn staticInitializer() void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const STATIC_BLOCK: ?*String = String.literal("Static Block");
        const instance: ?*String = String.literal("MotionRectanglesResultsCacheSingleton");
        { // try
            _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.START, instance, STATIC_BLOCK });
            ConstrainedMotionRectanglesResultsCacheSingleton.cacheInterface = Inheritance.upcast(@TypeOf(ConstrainedMotionRectanglesResultsCacheSingleton.cacheInterface), Inheritance.callStatic(CacheInterfaceFactory, "getInstance", .{ CacheTypeFactory.getInstance().?.CACHE, CachePolicyFactory.getInstance().?.ONE_MINUTE_FIVE_MAX }));
            _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.END, instance, STATIC_BLOCK });
        }
        // catch (Exception e):
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, instance, STATIC_BLOCK, e });
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CacheInterface {
        return Inheritance.upcast(?*CacheInterface, ConstrainedMotionRectanglesResultsCacheSingleton.cacheInterface);
    }
};

