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
// package org.allbinary.media.image.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CachePolicyFactory = @import("org/allbinary/logic/util/cache/CachePolicyFactory.zig").CachePolicyFactory;
const PoolInterface = @import("org/allbinary/logic/util/cache/PoolInterface.zig").PoolInterface;
const PoolInterfaceFactory = @import("org/allbinary/logic/util/cache/PoolInterfaceFactory.zig").PoolInterfaceFactory;
const PoolTypeFactory = @import("org/allbinary/logic/util/cache/PoolTypeFactory.zig").PoolTypeFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BufferedImageCacheableFactory = @import("org/allbinary/media/image/cache/BufferedImageCacheableFactory.zig").BufferedImageCacheableFactory;

pub const BufferedImagePoolSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.cache.BufferedImagePoolSingleton";
    var poolInterface: ?*PoolInterface = null;
    

    // Java static initializer: call this once at startup
    pub fn staticInitializer() void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const STATIC_BLOCK: ?*String = String.literal("Static Block");
        const instance: ?*String = String.literal("BufferedImagePoolSingleton");
        { // try
            _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.START, instance, STATIC_BLOCK });
            BufferedImagePoolSingleton.poolInterface = Inheritance.upcast(@TypeOf(BufferedImagePoolSingleton.poolInterface), Inheritance.callStatic(PoolInterfaceFactory, "getInstance", .{ BufferedImageCacheableFactory.create(), PoolTypeFactory.getInstance().?.VECTOR_POOL, CachePolicyFactory.getInstance().?.MAX_TIME_THOUSAND_MAX }));
            _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.END, instance, STATIC_BLOCK });
        }
        // catch (Exception e):
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, instance, STATIC_BLOCK, e });
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*PoolInterface {
        return Inheritance.upcast(?*PoolInterface, BufferedImagePoolSingleton.poolInterface);
    }
};

