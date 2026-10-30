// 
// AllBinary Open License Version 1 
// Copyright (c) 2006 AllBinary 
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
// package org.allbinary.game.layer.unit

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGameResources = @import("org/allbinary/game/layer/resources/BasicGameResources.zig").BasicGameResources;
const GameGraphicsResourceUtil = @import("org/allbinary/game/layer/resources/GameGraphicsResourceUtil.zig").GameGraphicsResourceUtil;
const AndroidUtil = @import("org/allbinary/AndroidUtil.zig").AndroidUtil;
const GraphicsFeatureFactory = @import("org/allbinary/game/configuration/feature/GraphicsFeatureFactory.zig").GraphicsFeatureFactory;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const UnitGameResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.unit.UnitGameResources";
    base: BasicGameResources = undefined,
    NAME: ?*String = null,
    RESOURCE_ICON_ANIMATION: ?*String = null,
    RESOURCE_ICON_BUILD: ?*String = null,
    RESOURCE_ICON: ?*String = null,
    ICON_SIZE: ?*String = null,
    const ICON: ?*String = String.literal("_icon");
    const BUILD: ?*String = String.literal("_build");
    const DESTROY: ?*String = String.literal("_destroy");
    var ICON_BUILD: ?*String = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        ICON_BUILD = Inheritance.upcast(?*String, String.plus(String.literal("_icon"), UnitGameResources.BUILD));
    }

    fn initFields(this: *Self) void {
        this.NAME = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.RESOURCE_ICON_ANIMATION = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.RESOURCE_ICON_BUILD = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.RESOURCE_ICON = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.ICON_SIZE = String.literal("_64_by_64.png");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicGameResources.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn append(self: *Self, ROOT: ?*String, sizeString: ?*String) void {
        _ = Inheritance.call(&self.base, "append", .{ ROOT, sizeString });
        const string: ?*String = Inheritance.upcast(?*String, Inheritance.receiverOf(GameGraphicsResourceUtil.getInstance().?, "getName").getName());
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "delete", .{ 0, Inheritance.receiverOf(BasicGameResources.stringBuffer.?, "length").length() });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ ROOT });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ UnitGameResources.DESTROY });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ string });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ sizeString });
        Inheritance.fieldPointer(self, "RESOURCE_DESTROY").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "RESOURCE_DESTROY").*), Object.toString(Object.of(BasicGameResources.stringBuffer)));
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "delete", .{ 0, Inheritance.receiverOf(BasicGameResources.stringBuffer.?, "length").length() });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ UnitGameResources.ICON });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ ROOT });
        self.RESOURCE_ICON_ANIMATION = Inheritance.upcast(@TypeOf(self.RESOURCE_ICON_ANIMATION), Object.toString(Object.of(BasicGameResources.stringBuffer)));
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "delete", .{ 0, Inheritance.receiverOf(BasicGameResources.stringBuffer.?, "length").length() });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ ROOT });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ UnitGameResources.ICON });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ string });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ self.ICON_SIZE });
        self.RESOURCE_ICON = Inheritance.upcast(@TypeOf(self.RESOURCE_ICON), Object.toString(Object.of(BasicGameResources.stringBuffer)));
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "delete", .{ 0, Inheritance.receiverOf(BasicGameResources.stringBuffer.?, "length").length() });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ ROOT });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ UnitGameResources.ICON_BUILD });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ string });
        _ = Inheritance.call(BasicGameResources.stringBuffer.?, "append", .{ self.ICON_SIZE });
        self.RESOURCE_ICON_BUILD = Inheritance.upcast(@TypeOf(self.RESOURCE_ICON_BUILD), Object.toString(Object.of(BasicGameResources.stringBuffer)));
    }
    

    // throws Exception
    pub fn getString(self: *Self) ?*String {
        if (AndroidUtil.isAndroid()) {
            return Inheritance.upcast(?*String, Inheritance.call(GameGraphicsResourceUtil.getInstance().?, "getStringForFeature", .{ GraphicsFeatureFactory.getInstance().?.SPRITE_QUARTER_ROTATION_GRAPHICS }));
        } else {
            return Inheritance.upcast(?*String, self.base.getString());
        }
    }
};

