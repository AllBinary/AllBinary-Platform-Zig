// Generated Code Do Not Modify
// package org.allbinary.game.input.analog

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const AnalogLocationInput = @import("org/allbinary/game/input/analog/AnalogLocationInput.zig").AnalogLocationInput;

pub const AnalogLocationInputFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.analog.AnalogLocationInputFactory";
    list: ?*BasicArrayList = null,
    var instance: ?*AnalogLocationInputFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = AnalogLocationInputFactory.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn getInstance() ?*AnalogLocationInputFactory {
        return Inheritance.upcast(?*AnalogLocationInputFactory, AnalogLocationInputFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn addPlayer(self: *Self, playerInputId: i32) void {
        var analogLocationInput: ?*AnalogLocationInput = Inheritance.upcast(?*AnalogLocationInput, AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT);
        if (playerInputId < self.list.?.size()) {
            analogLocationInput = Inheritance.cast(?*AnalogLocationInput, Inheritance.call(self.list.?, "get", .{ playerInputId }));
        }
        if (Object.same(analogLocationInput, AnalogLocationInput.NULL_ANALOG_LOCATION_INPUT)) {
            analogLocationInput = Inheritance.callStatic(AnalogLocationInput, "create1", .{ playerInputId });
            _ = Inheritance.call(self.list.?, "add", .{ analogLocationInput });
        }
    }
    

    pub fn getInstanceForPlayer(self: *Self, playerInputId: i32) ?*AnalogLocationInput {
        return Inheritance.cast(?*AnalogLocationInput, Inheritance.call(self.list.?, "get", .{ playerInputId }));
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        return self.list;
    }
};

