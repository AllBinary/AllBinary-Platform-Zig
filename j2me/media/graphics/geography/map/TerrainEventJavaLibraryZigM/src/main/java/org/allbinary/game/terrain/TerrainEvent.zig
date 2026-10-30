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
// package org.allbinary.game.terrain

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const BasicTerrainInfo = @import("org/allbinary/game/terrain/BasicTerrainInfo.zig").BasicTerrainInfo;

pub const TerrainEvent = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.terrain.TerrainEvent";
    base: AllBinaryEventObject = undefined,
    basicTerrainInfo: ?*BasicTerrainInfo = null,

    fn initFields(this: *Self) void {
        this.basicTerrainInfo = Inheritance.upcast(?*BasicTerrainInfo, BasicTerrainInfo.NULL_BASIC_TERRAIN_INFO);
    }
    

    pub fn create1(basicTerrainInfo: ?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AllBinaryEventObject, "create1", .{ basicTerrainInfo }).*;
        this.initFields();
        _ = Inheritance.call(this, "setBasicTerrainInfo", .{ this.basicTerrainInfo });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("TerrainEvent: \n") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("LayerInterface: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.basicTerrainInfo)) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn getBasicTerrainInfo(self: *Self) ?*BasicTerrainInfo {
        return self.basicTerrainInfo;
    }
    

    pub fn setBasicTerrainInfo(self: *Self, basicTerrainInfo: ?*BasicTerrainInfo) void {
        self.basicTerrainInfo = basicTerrainInfo;
    }
    

    pub fn setBasicTerrainInfoForCircularStaticPool(self: *Self, basicTerrainInfo: ?*BasicTerrainInfo) void {
        self.basicTerrainInfo = basicTerrainInfo;
    }
};

