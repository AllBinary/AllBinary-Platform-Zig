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
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const ARunnable = @import("org/allbinary/thread/ARunnable.zig").ARunnable;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GeographicMapCellPosition = @import("org/allbinary/media/graphics/geography/map/GeographicMapCellPosition.zig").GeographicMapCellPosition;
const MultipassState = @import("org/allbinary/media/graphics/geography/pathfinding/MultipassState.zig").MultipassState;
const PathFindingInfo = @import("org/allbinary/media/graphics/geography/pathfinding/PathFindingInfo.zig").PathFindingInfo;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const WaypointBehaviorBase = @import("org/allbinary/game/layer/WaypointBehaviorBase.zig").WaypointBehaviorBase;
const WaypointPathRunnableBase = @import("org/allbinary/game/layer/WaypointPathRunnableBase.zig").WaypointPathRunnableBase;
const Runnable = @import("java/lang/Runnable.zig").Runnable;

pub const MultipassWaypointPathRunnable = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.MultipassWaypointPathRunnable";
    base: WaypointPathRunnableBase = undefined,
    logUtil: ?*LogUtil = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    multipassState: ?*MultipassState = null,
    done: bool = false,
    list: ?*BasicArrayList = null,
    pathFindingInfo: ?Object = null,
    FIRST_RUNNABLE: ?*Runnable = null,
    SECOND_RUNNABLE: ?*Runnable = null,
    END_RUNNABLE: ?*Runnable = null,
    ALREADY_ENDED_RUNNABLE: ?*Runnable = null,
    currentPassRunnable: ?*Runnable = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
        this.multipassState = MultipassState.create();
        this.done = false;
        this.list = Inheritance.upcast(?*BasicArrayList, this.basicArrayListUtil.?.getImmutableInstance());
        this.pathFindingInfo = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
        this.FIRST_RUNNABLE = Inheritance.upcast(?*Runnable, Inheritance.callStatic(FirstRunnable, "create1", .{ this }));
        this.SECOND_RUNNABLE = Inheritance.upcast(?*Runnable, Inheritance.callStatic(SecondRunnable, "create1", .{ this }));
        this.END_RUNNABLE = Inheritance.upcast(?*Runnable, Inheritance.callStatic(EndRunnable, "create1", .{ this }));
        this.ALREADY_ENDED_RUNNABLE = Inheritance.upcast(?*Runnable, ARunnable.create() // Java anonymous class body: implement it as a named type
//         
// 
//         pub fn run(self: *Self) void {
//             _ = self;
//             std.debug.panic("{any}", .{error.RuntimeException});
//         }
);
        this.currentPassRunnable = this.FIRST_RUNNABLE;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = WaypointPathRunnableBase.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setRunning(self: *Self, isRunning: bool) void {
        Inheritance.fieldPointer(self, "runningP").* = Inheritance.upcast(@TypeOf(Inheritance.fieldPointer(self, "runningP").*), isRunning);
        if (Inheritance.fieldPointer(self, "runningP").*) {
            _ = self.reset();
            self.done = false;
        }
    }
    

    pub fn run(self: *Self) void {
        const logUtil: ?*LogUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance()); _ = logUtil;
        { // try
            _ = self.currentPassRunnable.?.run();
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
//             _ = Inheritance.call(self, "setRunning", .{ false });
    }
    

    pub fn reset2(self: *Self) void {
        self.multipassState.?.step = 0;
        self.multipassState.?.iteration = 0;
        self.multipassState.?.iteration2 = 0;
        self.pathFindingInfo = Inheritance.upcast(@TypeOf(self.pathFindingInfo), NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn finish(self: *Self) void {
        _ = self.reset2();
        self.currentPassRunnable = self.ALREADY_ENDED_RUNNABLE;
        self.done = true;
    }
    

    pub fn isDone(self: *Self) bool {
        return self.done;
    }
    

    pub fn reset(self: *Self) void {
        _ = self.reset2();
        self.currentPassRunnable = self.FIRST_RUNNABLE;
        self.done = false;
    }
    

    pub fn processFirstRunnable(self: *Self) void {
        { // try
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pathFindingLayer").*.?, "getWaypointRunnableLogHelper").getWaypointRunnableLogHelper().?, "start", .{ Inheritance.fieldPointer(self, "pathFindingLayer").* });
            _ = self.reset2();
            const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiverOf(Inheritance.fieldPointer(self, "pathFindingLayer").*.?, "getCurrentGeographicMapCellPosition").getCurrentGeographicMapCellPosition());
            if (geographicMapCellPosition == null) {
                std.debug.panic("{any}", .{exception: { _ = String.literal("Should never be running here"); break :exception error.Exception; }});
            }
            self.pathFindingInfo = Inheritance.upcast(@TypeOf(self.pathFindingInfo), Inheritance.call(Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "targetPathFindingLayer").*.?, "getWaypointBehavior").getWaypointBehavior().?, "getWaypoint").getWaypoint().?, "getPathFindingInfo", .{ geographicMapCellPosition }));
            const localPathFindingInfo: ?*PathFindingInfo = Inheritance.cast(?*PathFindingInfo, self.pathFindingInfo);
            self.list = Inheritance.upcast(@TypeOf(self.list), Inheritance.call(Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "targetPathFindingLayer").*.?, "getWaypointBehavior").getWaypointBehavior().?, "getWaypoint").getWaypoint().?, "getPathsList", .{ geographicMapCellPosition, localPathFindingInfo, self.multipassState }));
            if (!Object.same(self.list, self.basicArrayListUtil.?.getImmutableInstance())) {
                _ = self.END_RUNNABLE.?.run();
            } else {
                self.currentPassRunnable = self.SECOND_RUNNABLE;
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
//             _ = Inheritance.call(self, "setRunning", .{ false });
//             _ = self.finish();
    }
    

    pub fn processSecondRunnable(self: *Self) void {
        { // try
            const geographicMapCellPosition: ?*GeographicMapCellPosition = Inheritance.upcast(?*GeographicMapCellPosition, Inheritance.receiverOf(Inheritance.fieldPointer(self, "pathFindingLayer").*.?, "getCurrentGeographicMapCellPosition").getCurrentGeographicMapCellPosition());
            const localPathFindingInfo: ?*PathFindingInfo = Inheritance.cast(?*PathFindingInfo, self.pathFindingInfo);
            self.list = Inheritance.upcast(@TypeOf(self.list), Inheritance.call(Inheritance.receiverOf(Inheritance.receiverOf(Inheritance.fieldPointer(self, "targetPathFindingLayer").*.?, "getWaypointBehavior").getWaypointBehavior().?, "getWaypoint").getWaypoint().?, "getPathsList", .{ geographicMapCellPosition, localPathFindingInfo, self.multipassState }));
            if (!Object.same(self.list, self.basicArrayListUtil.?.getImmutableInstance())) {
                _ = self.END_RUNNABLE.?.run();
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
//             _ = Inheritance.call(self, "setRunning", .{ false });
//             _ = self.finish();
    }
    

    pub fn processEndRunnable(self: *Self) void {
        { // try
            const waypointBehavior: ?*WaypointBehaviorBase = Inheritance.upcast(?*WaypointBehaviorBase, Inheritance.receiverOf(Inheritance.fieldPointer(self, "pathFindingLayer").*.?, "getWaypointBehavior").getWaypointBehavior());
            _ = Inheritance.call(waypointBehavior.?, "setWaypointPathsList", .{ self.list });
            _ = Inheritance.call(Inheritance.receiverOf(Inheritance.fieldPointer(self, "pathFindingLayer").*.?, "getWaypointRunnableLogHelper").getWaypointRunnableLogHelper().?, "end", .{ Inheritance.fieldPointer(self, "pathFindingLayer").* });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.RUN, e });
//             _ = Inheritance.call(self, "setRunning", .{ false });
        _ = self.finish();
    }
    pub const FirstRunnable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.game.layer.FirstRunnable";
        base: ARunnable = undefined,
        multipassWaypointPathRunnable: ?*MultipassWaypointPathRunnable = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(multipassWaypointPathRunnable: ?*MultipassWaypointPathRunnable) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ARunnable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "multipassWaypointPathRunnable").* = multipassWaypointPathRunnable;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn run(self: *Self) void {
            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "multipassWaypointPathRunnable").*.?, "processFirstRunnable").processFirstRunnable();
        }
    };
    //    private boolean first = true;
    pub const SecondRunnable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.game.layer.SecondRunnable";
        base: ARunnable = undefined,
        multipassWaypointPathRunnable: ?*MultipassWaypointPathRunnable = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(multipassWaypointPathRunnable: ?*MultipassWaypointPathRunnable) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ARunnable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "multipassWaypointPathRunnable").* = multipassWaypointPathRunnable;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn run(self: *Self) void {
            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "multipassWaypointPathRunnable").*.?, "processSecondRunnable").processSecondRunnable();
        }
    };
    pub const EndRunnable = struct {
        const Self = @This();
        pub const java_name = "org.allbinary.game.layer.EndRunnable";
        base: ARunnable = undefined,
        multipassWaypointPathRunnable: ?*MultipassWaypointPathRunnable = null,

    fn initFields(this: *Self) void {
        _ = this;
            
    }
        

        pub fn create1(multipassWaypointPathRunnable: ?*MultipassWaypointPathRunnable) *Self {
            const this = allocator.create(Self) catch unreachable;
            this.* = .{};
        this.base = ARunnable.create().*;
            this.initFields();
            Inheritance.fieldPointer(this, "multipassWaypointPathRunnable").* = multipassWaypointPathRunnable;
            Inheritance.bindOverrides(this);
            return this;
        }
        

        pub fn run(self: *Self) void {
            _ = Inheritance.receiver(Inheritance.fieldPointer(self, "multipassWaypointPathRunnable").*.?, "processEndRunnable").processEndRunnable();
        }
    };
};

