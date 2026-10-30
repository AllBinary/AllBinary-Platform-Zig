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
// package org.allbinary.game.layer.waypoint

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PathFindingLayerInterface = @import("org/allbinary/game/layer/PathFindingLayerInterface.zig").PathFindingLayerInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const WaypointRunnableLogHelper = @import("org/allbinary/game/layer/waypoint/WaypointRunnableLogHelper.zig").WaypointRunnableLogHelper;

pub const WaypointRunnableSelectedLogHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.waypoint.WaypointRunnableSelectedLogHelper";
    base: WaypointRunnableLogHelper = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    var instanceC: ?*WaypointRunnableSelectedLogHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instanceC = WaypointRunnableSelectedLogHelper.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = WaypointRunnableLogHelper.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance() ?*WaypointRunnableSelectedLogHelper {
        return Inheritance.upcast(?*WaypointRunnableSelectedLogHelper, WaypointRunnableSelectedLogHelper.instanceC);
    }
    

    pub fn start(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ self.commonStrings.?.START_RUNNABLE }))), self, self.commonStrings.?.RUN });
    }
    

    pub fn end(self: *Self, pathFindingLayerInterface: ?*PathFindingLayerInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiver(pathFindingLayerInterface.?, "getName").getName() }).?, "append", .{ self.commonStrings.?.END_RUNNABLE }))), self, self.commonStrings.?.RUN });
    }
};

