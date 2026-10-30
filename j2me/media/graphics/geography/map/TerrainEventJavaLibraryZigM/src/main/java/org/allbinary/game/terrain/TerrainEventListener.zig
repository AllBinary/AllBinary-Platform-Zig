// Generated Code Do Not Modify
// package org.allbinary.game.terrain

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ForcedLogUtil = @import("org/allbinary/logic/communication/log/ForcedLogUtil.zig").ForcedLogUtil;
const AllBinaryEventObject = @import("org/allbinary/logic/util/event/AllBinaryEventObject.zig").AllBinaryEventObject;
const EventStrings = @import("org/allbinary/logic/util/event/EventStrings.zig").EventStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const TerrainEvent = @import("org/allbinary/game/terrain/TerrainEvent.zig").TerrainEvent;
const TerrainEventListenerInterface = @import("org/allbinary/game/terrain/TerrainEventListenerInterface.zig").TerrainEventListenerInterface;

pub const TerrainEventListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.terrain.TerrainEventListener";
    pub const java_interfaces = .{ TerrainEventListenerInterface };
    list: ?*BasicArrayList = null,
    // Implements TerrainEventListenerInterface

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn onEvent(self: *Self, eventObject: ?*AllBinaryEventObject) void {
        _ = eventObject;
        _ = Inheritance.callStatic(ForcedLogUtil, "log", .{ EventStrings.getInstance().?.PERFORMANCE_MESSAGE, self });
    }
    

    pub fn onTerrainEvent(self: *Self, terrainEvent: ?*TerrainEvent) void {
        _ = self.list.?.clear();
        _ = Inheritance.call(self.list.?, "add", .{ terrainEvent });
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        return self.list;
    }
};

