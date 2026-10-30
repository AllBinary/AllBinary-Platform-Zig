// 
// AllBinary Open License Version 1 
// Copyright (c) 2003 AllBinary 
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
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;
const WaypointPathRunnableBase = @import("org/allbinary/game/layer/WaypointPathRunnableBase.zig").WaypointPathRunnableBase;
const Thread = @import("java/lang/Thread.zig").Thread;

pub const WaypointPathRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.WaypointPathRunnable";
    base: WaypointPathRunnableBase = undefined,
    logUtil: ?*LogUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = WaypointPathRunnableBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn run(self: *Self) void {
        { // try
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pathFindingLayer").*.?, "getWaypointRunnableLogHelper").getWaypointRunnableLogHelper().?, "start", .{ Inheritance.fieldPointer(self, "pathFindingLayer").* });
            const waypointBehavior: ?*WaypointBehaviorBase = Inheritance.upcast(?*WaypointBehaviorBase, Inheritance.receiverOf(Inheritance.fieldPointer(self, "pathFindingLayer").*.?, "getWaypointBehavior").getWaypointBehavior());
            const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiverOf(Inheritance.fieldPointer(self, "pathFindingLayer").*.?, "getCurrentGeographicMapCellPosition").getCurrentGeographicMapCellPosition());
            if (geographicMapCellPosition == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Should never be running here"); break :exception error.Exception; }});
            }
            _ = Inheritance.call(waypointBehavior.?, "setWaypointPathsList", .{ Inheritance.call(Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "targetPathFindingLayer").*.?, "getWaypointBehavior").getWaypointBehavior().?, "getWaypoint").getWaypoint().?, "getPathsListRunnable", .{ geographicMapCellPosition }) });
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pathFindingLayer").*.?, "getWaypointRunnableLogHelper").getWaypointRunnableLogHelper().?, "end", .{ Inheritance.fieldPointer(self, "pathFindingLayer").* });
            _ = (std.Io.sleep(std.Io.Threaded.global_single_threaded.io(), std.Io.Duration.fromMilliseconds(15 + (Inheritance.fieldPointer(self, "priorityP").* * 2)), .awake) catch {});
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
//             _ = Inheritance.call(self, "setRunning", .{ false });
    }
    

    pub fn isDone(self: *Self) bool {
        _ = self;
        return true;
    }
};

