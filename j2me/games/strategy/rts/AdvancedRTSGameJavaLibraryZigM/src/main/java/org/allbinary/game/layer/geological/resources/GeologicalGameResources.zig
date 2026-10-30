// 
// AllBinary Open License Version 1 
// Copyright (c) 2002 AllBinary 
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
// package org.allbinary.game.layer.geological.resources

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGameResources = @import("org/allbinary/game/layer/resources/BasicGameResources.zig").BasicGameResources;
const GameGraphicsResourceUtil = @import("org/allbinary/game/layer/resources/GameGraphicsResourceUtil.zig").GameGraphicsResourceUtil;
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const GraphicsFeatureFactory = @import("org/allbinary/game/configuration/feature/GraphicsFeatureFactory.zig").GraphicsFeatureFactory;

pub const GeologicalGameResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.geological.resources.GeologicalGameResources";
    base: BasicGameResources = undefined,
    var instance: ?*GeologicalGameResources = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GeologicalGameResources.create();
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicGameResources.create().*;
        const ROOT: ?*String = String.literal("/resource");
        const SMALL: ?*String = String.literal("_20_by_20.png");
        const MEDIUM: ?*String = SMALL;
        const SIZE_FOUR: ?*String = SMALL;
        const SIZE_FIVE: ?*String = SMALL;
        const SIZE_SIX: ?*String = SMALL;
        const SIZE: []?*String = @constCast(&[_]?*String{ SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX })[0..];
        _ = Inheritance.call(&this.base, "init", .{ ROOT, SIZE });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn append(self: *Self, ROOT: ?*String, sizeString: ?*String) void {
        _ = Inheritance.call(&self.base, "append", .{ ROOT, sizeString });
    }
    

    // throws Exception
    pub fn getString(self: *Self) ?*String {
        if (AndroidUtil.isAndroid()) {
            return Inheritance.upcast(?*String, Inheritance.call(GameGraphicsResourceUtil.getInstance().?, "getStringForFeature", .{ GraphicsFeatureFactory.getInstance().?.SPRITE_QUARTER_ROTATION_GRAPHICS }));
        } else {
            return Inheritance.upcast(?*String, self.base.getString());
        }
    }
    

    pub fn getInstance() ?*BasicGameResources {
        return Inheritance.upcast(?*BasicGameResources, GeologicalGameResources.instance);
    }
};

