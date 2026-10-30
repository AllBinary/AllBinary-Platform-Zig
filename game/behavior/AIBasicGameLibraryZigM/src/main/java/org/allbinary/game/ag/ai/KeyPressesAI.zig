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
// package org.allbinary.game.ag.ai

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const GameInput = @import("org/allbinary/game/input/GameInput.zig").GameInput;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const AllBinaryLayerManager = @import("org/allbinary/layer/AllBinaryLayerManager.zig").AllBinaryLayerManager;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const BasicAI = @import("org/allbinary/game/ai/BasicAI.zig").BasicAI;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const KeyPressesAI = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.ai.KeyPressesAI";
    base: BasicAI = undefined,
    on: bool = false,
    keys: []?*Integer = &.{},

    fn initFields(this: *Self) void {
        this.on = true;
        
    }
    

    pub fn create3(hashtable: ?*ABHashtable, ownerLayerInterface: ?*AllBinaryLayer, gameInput: ?*GameInput) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicAI, "create2", .{ ownerLayerInterface, gameInput }).*;
        this.initFields();
        this.keys = Inheritance.upcast(@TypeOf(this.keys), array_N65874: { const array_N65874_array = allocator.alloc(?*Integer, @intCast(Inheritance.receiver(hashtable.?, "size").size())) catch unreachable; @memset(array_N65874_array, null); break :array_N65874 array_N65874_array; });
        const objectArray: []?Object = Inheritance.call(HashtableUtil.getInstance().?, "getKeysAsArray", .{ hashtable });
        const size: i32 = @as(i32, @intCast(objectArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            this.keys[@intCast(index)] = Inheritance.cast(?*Integer, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, objectArray[@intCast(index)]) }));
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn processAI(self: *Self, allBinaryLayerManager: ?*AllBinaryLayerManager) void {
        _ = allBinaryLayerManager;
        if (self.on) {
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(self.keys.len))) : (index += 1) {
                _ = Inheritance.call(&self.base, "processKeyAI", .{ self.keys[@intCast(index)].?.intValue() });
                }
            }
        }
    }
    

    // throws Exception
    pub fn toggle(self: *Self) void {
        if (self.isOn()) {
            _ = Inheritance.call(self, "setOn", .{ false });
        } else {
            _ = Inheritance.call(self, "setOn", .{ true });
        }
    }
    

    // throws Exception
    pub fn disable(self: *Self) void {
        _ = Inheritance.call(self, "setOn", .{ false });
    }
    

    // throws Exception
    pub fn enable(self: *Self) void {
        _ = Inheritance.call(self, "setOn", .{ true });
    }
    

    pub fn setOn(self: *Self, on: bool) void {
        self.on = on;
    }
    

    pub fn isOn(self: *Self) bool {
        return self.on;
    }
};

