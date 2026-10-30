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
// package org.allbinary.graphics.color

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AutomaticCacheInterface = @import("org/allbinary/logic/util/cache/AutomaticCacheInterface.zig").AutomaticCacheInterface;
const AutomaticCacheInterfaceFactory = @import("org/allbinary/logic/util/cache/AutomaticCacheInterfaceFactory.zig").AutomaticCacheInterfaceFactory;
const CachePolicyFactory = @import("org/allbinary/logic/util/cache/CachePolicyFactory.zig").CachePolicyFactory;
const CacheTypeFactory = @import("org/allbinary/logic/util/cache/CacheTypeFactory.zig").CacheTypeFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ColorCacheableFactory = @import("org/allbinary/graphics/color/ColorCacheableFactory.zig").ColorCacheableFactory;

pub const ColorCacheFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.graphics.color.ColorCacheFactory";
    var cacheInterface: ?*AutomaticCacheInterface = null;
    

    // Java static initializer: call this once at startup
    pub fn staticInitializer() void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        const STATIC_BLOCK: ?*String = String.literal("Static Block");
        { // try
            _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.START, ColorCacheFactory, STATIC_BLOCK });
            ColorCacheFactory.cacheInterface = Inheritance.upcast(@TypeOf(ColorCacheFactory.cacheInterface), Inheritance.callStatic(AutomaticCacheInterfaceFactory, "getInstance", .{ ColorCacheableFactory.create(), CacheTypeFactory.getInstance().?.CACHE, CachePolicyFactory.getInstance().?.THIRTY_MINUTES_TEN_THOUSAND_MAX }));
            _ = Inheritance.call(logUtil.?, "putF", .{ commonStrings.?.END, ColorCacheFactory, STATIC_BLOCK });
        }
        // catch (Exception e):
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, ColorCacheFactory, STATIC_BLOCK, e });
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*AutomaticCacheInterface {
        return Inheritance.upcast(?*AutomaticCacheInterface, ColorCacheFactory.cacheInterface);
    }
};

