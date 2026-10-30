// Generated Code Do Not Modify
// package org.allbinary.game.layer.drop

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AllBinaryLayerFactoryInterface = @import("org/allbinary/layer/AllBinaryLayerFactoryInterface.zig").AllBinaryLayerFactoryInterface;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;

pub const PlacedLayerFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.drop.PlacedLayerFactory";
    list: ?*BasicArrayList = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,
    var instance: ?*PlacedLayerFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = PlacedLayerFactory.create();
    }

    fn initFields(this: *Self) void {
        this.list = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn clear(self: *Self) void {
        _ = self.list.?.clear();
    }
    

    pub fn getInstance() ?*PlacedLayerFactory {
        return Inheritance.upcast(?*PlacedLayerFactory, PlacedLayerFactory.instance);
    }
    

    pub fn getSize(self: *Self) i32 {
        return self.list.?.size();
    }
    

    pub fn getRandomInstance(self: *Self) ?*AllBinaryLayerFactoryInterface {
        return Inheritance.cast(?*AllBinaryLayerFactoryInterface, Inheritance.call(self.basicArrayListUtil.?, "getRandom", .{ self.list }));
    }
    

    pub fn add(self: *Self, layerInterfaceFactoryInterface: ?*AllBinaryLayerFactoryInterface) void {
        _ = Inheritance.call(self.list.?, "add", .{ layerInterfaceFactoryInterface });
    }
};

