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
// package org.allbinary.game.combat.damage

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Graphics = @import("javax/microedition/lcdui/Graphics.zig").Graphics;
const MyRandomFactory = @import("org/allbinary/game/rand/MyRandomFactory.zig").MyRandomFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const BasicColorArrayIndexer = @import("org/allbinary/graphics/color/BasicColorArrayIndexer.zig").BasicColorArrayIndexer;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const BasicColorSetUtil = @import("org/allbinary/graphics/color/BasicColorSetUtil.zig").BasicColorSetUtil;
const AllBinaryLayer = @import("org/allbinary/layer/AllBinaryLayer.zig").AllBinaryLayer;
const CharArrayFactory = @import("org/allbinary/logic/java/character/CharArrayFactory.zig").CharArrayFactory;
const PrimitiveLongUtil = @import("org/allbinary/logic/math/PrimitiveLongUtil.zig").PrimitiveLongUtil;
const CircularIndexUtil = @import("org/allbinary/util/CircularIndexUtil.zig").CircularIndexUtil;
const ViewPosition = @import("org/allbinary/view/ViewPosition.zig").ViewPosition;
const ViewPositionBase = @import("org/allbinary/view/ViewPositionBase.zig").ViewPositionBase;
const DamageFloaters = @import("org/allbinary/game/combat/damage/DamageFloaters.zig").DamageFloaters;

pub const PtsDamageFloaters = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.damage.PtsDamageFloaters";
    base: DamageFloaters = undefined,
    basicSetColorUtil: ?*BasicColorSetUtil = null,
    layerInterface: ?*AllBinaryLayer = null,
    lastDamage: []i32 = &.{},
    lastDamageString: [][]u16 = &.{},
    lastDamageStringSizeArray: []i32 = &.{},
    circularIndexUtil: ?*CircularIndexUtil = null,
    primitiveLongUtil: ?*PrimitiveLongUtil = null,
    myRandomFactory: ?*MyRandomFactory = null,
    var basicColorArrayIndexer: ?*BasicColorArrayIndexer = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        basicColorArrayIndexer = Inheritance.callStatic(BasicColorArrayIndexer, "create1", .{ @constCast(&[_]?*BasicColor{ BasicColorFactory.getInstance().?.WHITE, BasicColorFactory.getInstance().?.RED, BasicColorFactory.getInstance().?.YELLOW, BasicColorFactory.getInstance().?.BLUE })[0..] });
    }

    fn initFields(this: *Self) void {
        this.basicSetColorUtil = Inheritance.upcast(?*BasicColorSetUtil, BasicColorSetUtil.getInstance());
        
        this.lastDamage = array_N66034: { const array_N66034_array = allocator.alloc(i32, @intCast(5)) catch unreachable; @memset(array_N66034_array, 0); break :array_N66034 array_N66034_array; };
        this.lastDamageString = array_N66088: { const array_N66088_array = allocator.alloc([]u16, @intCast(5)) catch unreachable; for (array_N66088_array) |*array_N66088_row| { array_N66088_row.* = allocator.alloc(u16, @intCast(0)) catch unreachable; @memset(array_N66088_row.*, 0); } break :array_N66088 array_N66088_array; };
        this.lastDamageStringSizeArray = array_N66151: { const array_N66151_array = allocator.alloc(i32, @intCast(5)) catch unreachable; @memset(array_N66151_array, 0); break :array_N66151 array_N66151_array; };
        this.circularIndexUtil = Inheritance.upcast(?*CircularIndexUtil, Inheritance.callStatic(CircularIndexUtil, "createInstance", .{ 5 }));
        
        this.myRandomFactory = Inheritance.upcast(?*MyRandomFactory, MyRandomFactory.getInstance());
    }
    

    pub fn create1(layerInterface: ?*AllBinaryLayer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = DamageFloaters.create().*;
        this.initFields();
        this.primitiveLongUtil = Inheritance.upcast(@TypeOf(this.primitiveLongUtil), Inheritance.callStatic(PrimitiveLongUtil, "createPowerOfTen", .{ 100000 }));
        this.layerInterface = layerInterface;
        const CHAR_ARRAY: []u16 = Inheritance.receiverOf(CharArrayFactory.getInstance().?, "getZeroCharArray").getZeroCharArray();
        {
            var index: i32 = @as(i32, @intCast(this.lastDamageString.len)) - 1;
            while (index >= 0) : (index -= 1) {
            this.lastDamageString[@intCast(index)] = Inheritance.upcast(@TypeOf(this.lastDamageString[@intCast(index)]), CHAR_ARRAY);
            }
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn add(self: *Self, damage: i32) void {
        const index: i32 = self.circularIndexUtil.?.getIndex();
        self.lastDamage[@intCast(index)] = damage;
        self.lastDamageString[@intCast(index)] = Inheritance.upcast(@TypeOf(self.lastDamageString[@intCast(index)]), Inheritance.call(self.primitiveLongUtil.?, "getCharArray", .{ self.lastDamage[@intCast(index)] }));
        self.lastDamageStringSizeArray[@intCast(index)] = self.primitiveLongUtil.?.getCurrentTotalDigits();
        _ = self.circularIndexUtil.?.next();
    }
    

    pub fn paint(self: *Self, graphics: ?*Graphics) void {
        const viewPosition: ?*ViewPositionBase = Inheritance.upcast(?*ViewPositionBase, Inheritance.receiver(self.layerInterface.?, "getViewPosition").getViewPosition());
        const x: i32 = Inheritance.receiver(viewPosition.?, "getX").getX();
        const y: i32 = Inheritance.receiver(viewPosition.?, "getY").getY();
        {
            var index: i32 = @as(i32, @intCast(self.lastDamage.len)) - 1;
            while (index >= 0) : (index -= 1) {
            if (self.lastDamage[@intCast(index)] != 0) {
                const delta: i32 = 10 * (index + 2);
                _ = Inheritance.call(self.basicSetColorUtil.?, "setBasicColorP", .{ graphics, Inheritance.receiverOf(PtsDamageFloaters.basicColorArrayIndexer.?, "get").get() });
                _ = Inheritance.call(graphics.?, "drawChars", .{ self.lastDamageString[@intCast(index)], 0, self.lastDamageStringSizeArray[@intCast(index)], x - Inheritance.call(self.myRandomFactory.?, "getNextInt", .{ delta }), y - delta, 0 });
                _ = Inheritance.receiverOf(PtsDamageFloaters.basicColorArrayIndexer.?, "next").next();
            }
            self.lastDamage[@intCast(index)] = 0;
            }
        }
    }
};

