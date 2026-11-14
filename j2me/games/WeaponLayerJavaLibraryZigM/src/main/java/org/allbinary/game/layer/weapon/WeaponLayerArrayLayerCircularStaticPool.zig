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
const Exception = @import("java/lang/Exception.zig").Exception;
const RuntimeException = @import("java/lang/RuntimeException.zig").RuntimeException;

pub const WeaponLayerArrayLayerCircularStaticPool = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.weapon.WeaponLayerArrayLayerCircularStaticPool";
    MAX: i32 = 0,
    circularIndexUtil: ?*CircularIndexUtil = null,
    WEAPONLAYER_ARRAY: [][]?*WeaponLayer = &.{},
    TWO_WEAPONLAYER_ARRAY: [][]?*WeaponLayer = &.{},
    THREE_WEAPONLAYER_ARRAY: [][]?*WeaponLayer = &.{},
    var instance: ?*WeaponLayerArrayLayerCircularStaticPool = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = WeaponLayerArrayLayerCircularStaticPool.create();
    }

    fn initFields(this: *Self) void {
        this.MAX = 5;
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ this.MAX }));
        this.WEAPONLAYER_ARRAY = &.{};
        this.TWO_WEAPONLAYER_ARRAY = &.{};
        this.THREE_WEAPONLAYER_ARRAY = &.{};
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
        const WEAPONLAYER_ARRAY: [][]?*WeaponLayer = array_N65961: { const array_N65961_array = allocator.alloc([]?*WeaponLayer, @intCast(self.MAX * 2)) catch unreachable; @memset(array_N65961_array, &.{}); break :array_N65961 array_N65961_array; };
        const TWO_WEAPONLAYER_ARRAY: [][]?*WeaponLayer = array_N66047: { const array_N66047_array = allocator.alloc([]?*WeaponLayer, @intCast(self.MAX)) catch unreachable; @memset(array_N66047_array, &.{}); break :array_N66047 array_N66047_array; };
        const THREE_WEAPONLAYER_ARRAY: [][]?*WeaponLayer = array_N66124: { const array_N66124_array = allocator.alloc([]?*WeaponLayer, @intCast(self.MAX)) catch unreachable; @memset(array_N66124_array, &.{}); break :array_N66124 array_N66124_array; };
        {
            var index: i32 = 0;
            while (index < self.MAX) : (index += 1) {
            WEAPONLAYER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(WEAPONLAYER_ARRAY[@intCast(index)]), array_N66218: { const array_N66218_array = allocator.alloc(?*WeaponLayer, @intCast(1)) catch unreachable; @memset(array_N66218_array, null); break :array_N66218 array_N66218_array; });
            TWO_WEAPONLAYER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(TWO_WEAPONLAYER_ARRAY[@intCast(index)]), array_N66270: { const array_N66270_array = allocator.alloc(?*WeaponLayer, @intCast(2)) catch unreachable; @memset(array_N66270_array, null); break :array_N66270 array_N66270_array; });
            THREE_WEAPONLAYER_ARRAY[@intCast(index)] = Inheritance.upcast(@TypeOf(THREE_WEAPONLAYER_ARRAY[@intCast(index)]), array_N66322: { const array_N66322_array = allocator.alloc(?*WeaponLayer, @intCast(3)) catch unreachable; @memset(array_N66322_array, null); break :array_N66322 array_N66322_array; });
            }
        }
        self.WEAPONLAYER_ARRAY = WEAPONLAYER_ARRAY;
        self.TWO_WEAPONLAYER_ARRAY = TWO_WEAPONLAYER_ARRAY;
        self.THREE_WEAPONLAYER_ARRAY = THREE_WEAPONLAYER_ARRAY;
    }
    

    pub fn getWeaponLayerArrays(self: *Self, size: i32) [][]?*WeaponLayer {
        if (size == 1) {
            return self.WEAPONLAYER_ARRAY;
        } else if (size == 2) {
            return self.TWO_WEAPONLAYER_ARRAY;
        } else if (size == 3) {
            return self.THREE_WEAPONLAYER_ARRAY;
        }
        std.debug.panic("{any}", .{error.RuntimeException});
    }
    

    // throws Exception
    pub fn getInstanceArray(self: *Self, size: i32) []?*WeaponLayer {
        const weaponLayerArray: []?*WeaponLayer = Inheritance.call(self, "getWeaponLayerArrays", .{ size })[@intCast(self.circularIndexUtil.?.getIndex())];
        _ = self.circularIndexUtil.?.next();
        return weaponLayerArray;
    }
};

