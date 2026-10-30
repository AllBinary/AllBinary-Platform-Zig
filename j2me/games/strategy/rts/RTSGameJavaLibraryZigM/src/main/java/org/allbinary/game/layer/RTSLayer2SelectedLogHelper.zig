// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const RTSLayer2LogHelper = @import("org/allbinary/game/layer/RTSLayer2LogHelper.zig").RTSLayer2LogHelper;

pub const RTSLayer2SelectedLogHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.RTSLayer2SelectedLogHelper";
    base: RTSLayer2LogHelper = undefined,
    logUtil: ?*LogUtil = null,
    TRACK_TO_FIRE_OR_MOVE: ?*String = null,
    BUILDING_CHASE: ?*String = null,
    var instanceC: ?*RTSLayer2SelectedLogHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = RTSLayer2SelectedLogHelper.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.TRACK_TO_FIRE_OR_MOVE = String.literal("trackTo:fireOrMove");
        this.BUILDING_CHASE = String.literal("buildingChase");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = RTSLayer2LogHelper.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*RTSLayer2SelectedLogHelper {
        return Inheritance.upcast(?*RTSLayer2SelectedLogHelper, RTSLayer2SelectedLogHelper.instanceC);
    }
    

    pub fn steeringUp(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" steering - Up") }))), self, self.TRACK_TO_FIRE_OR_MOVE });
    }
    

    pub fn steeringFireOrStop(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" steering - Fire/All Stop") }))), self, self.TRACK_TO_FIRE_OR_MOVE });
    }
    

    pub fn buildingAbove(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" Building Above") }))), self, self.BUILDING_CHASE });
    }
    

    pub fn buildingChaseLeft(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface, angle: i32) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" steering - Going Left: ") }).?, "appendint", .{ angle }))), self, self.BUILDING_CHASE });
    }
    

    pub fn buildingChaseRight(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface, angle: i32) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" steering - Going Right: ") }).?, "appendint", .{ angle }))), self, self.BUILDING_CHASE });
    }
    

    pub fn buildingDown(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" Building Below") }))), self, self.BUILDING_CHASE });
    }
    

    pub fn buildingChaseDown(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface, angle: i32) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" steering - Going Down: ") }).?, "appendint", .{ angle }))), self, self.BUILDING_CHASE });
    }
    

    pub fn buildingChaseUp(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface, angle: i32) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" steering - Going Up: ") }).?, "appendint", .{ angle }))), self, self.BUILDING_CHASE });
    }
    

    pub fn buildingLeft(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" Building Left") }))), self, self.BUILDING_CHASE });
    }
    

    pub fn buildingRight(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ String.literal(" Building Right") }))), self, self.BUILDING_CHASE });
    }
};

