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
// package org.allbinary.game.layer.weapon

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const WeaponLayer = @import("org/allbinary/game/layer/weapon/WeaponLayer.zig").WeaponLayer;

pub const WeaponLayerArrayLayerCircularStaticPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool";
    MAX: i32 = 0,
    circularIndexUtil: ?*CircularIndexUtil = null,
    ALL_WEAPONLAYER_ARRAY: [][][]?Object = &.{},
    var instance: ?*WeaponLayerArrayLayerCircularStaticPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = WeaponLayerArrayLayerCircularStaticPool.create();
    }

    fn initFields(this: *Self) void {
        this.MAX = 5;
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ this.MAX }));
        this.ALL_WEAPONLAYER_ARRAY = array_N65830: { const array_N65830_array = allocator.alloc([][]?Object, @intCast(4)) catch unreachable; @memset(array_N65830_array, &.{}); break :array_N65830 array_N65830_array; };
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*WeaponLayerArrayLayerCircularStaticPool {
        return Inheritance.upcast(?*WeaponLayerArrayLayerCircularStaticPool, WeaponLayerArrayLayerCircularStaticPool.instance);
    }
    

    pub fn init(self: *Self) void {
        const WEAPONLAYER_ARRAY: [][]?Object = array_N65908: { const array_N65908_array = allocator.alloc([]?Object, @intCast(self.MAX * 2)) catch unreachable; @memset(array_N65908_array, &.{}); break :array_N65908 array_N65908_array; };
        const TWO_WEAPONLAYER_ARRAY: [][]?Object = array_N65987: { const array_N65987_array = allocator.alloc([]?Object, @intCast(self.MAX)) catch unreachable; @memset(array_N65987_array, &.{}); break :array_N65987 array_N65987_array; };
        const THREE_WEAPONLAYER_ARRAY: [][]?Object = array_N66057: { const array_N66057_array = allocator.alloc([]?Object, @intCast(self.MAX)) catch unreachable; @memset(array_N66057_array, &.{}); break :array_N66057 array_N66057_array; };
        {
            var index: i32 = 0;
            while (index < self.MAX) : (index += 1) {
            WEAPONLAYER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(WEAPONLAYER_ARRAY[@intCast(index)]), array_N66151: { const array_N66151_array = allocator.alloc(?Object, @intCast(1)) catch unreachable; @memset(array_N66151_array, null); break :array_N66151 array_N66151_array; });
            TWO_WEAPONLAYER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(TWO_WEAPONLAYER_ARRAY[@intCast(index)]), array_N66203: { const array_N66203_array = allocator.alloc(?Object, @intCast(2)) catch unreachable; @memset(array_N66203_array, null); break :array_N66203 array_N66203_array; });
            THREE_WEAPONLAYER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(THREE_WEAPONLAYER_ARRAY[@intCast(index)]), array_N66255: { const array_N66255_array = allocator.alloc(?Object, @intCast(3)) catch unreachable; @memset(array_N66255_array, null); break :array_N66255 array_N66255_array; });
            }
        }
        self.ALL_WEAPONLAYER_ARRAY[@intCast(1)] = Inheritance.upcast(@TypeOf(self.ALL_WEAPONLAYER_ARRAY[@intCast(1)]), WEAPONLAYER_ARRAY);
        self.ALL_WEAPONLAYER_ARRAY[@intCast(2)] = Inheritance.upcast(@TypeOf(self.ALL_WEAPONLAYER_ARRAY[@intCast(2)]), TWO_WEAPONLAYER_ARRAY);
        self.ALL_WEAPONLAYER_ARRAY[@intCast(3)] = Inheritance.upcast(@TypeOf(self.ALL_WEAPONLAYER_ARRAY[@intCast(3)]), THREE_WEAPONLAYER_ARRAY);
    }
    

    // throws Exception
    pub fn getInstanceArray(self: *Self, size: i32) []?*WeaponLayer {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        const weaponLayerArray: []?*WeaponLayer = Inheritance.cast([]?*WeaponLayer, self.ALL_WEAPONLAYER_ARRAY[@intCast(size)][@intCast(self.circularIndexUtil.?.getIndex())]);
        _ = self.circularIndexUtil.?.next();
        return weaponLayerArray;
    }
};

