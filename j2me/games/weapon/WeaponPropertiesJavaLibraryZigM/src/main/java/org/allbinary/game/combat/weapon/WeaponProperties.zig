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
// package org.allbinary.game.combat.weapon

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const BasicDecimal = @import("org/allbinary/logic/math/BasicDecimal.zig").BasicDecimal;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const SimpleWeaponProperties = @import("org/allbinary/game/combat/weapon/SimpleWeaponProperties.zig").SimpleWeaponProperties;

pub const WeaponProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.combat.weapon.WeaponProperties";
    base: SimpleWeaponProperties = undefined,
    reloadTime: i64 = 0,
    targetingTime: i64 = 0,
    speed: ?*BasicDecimal = null,
    MAX: i64 = 0,
    ZERO: i16 = 0,
    pub var NULL_WEAPON_PROPERTIES: ?*WeaponProperties = undefined;
    var messageSent: bool = false;
    const DAMAGE: ?*String = String.literal("Damage: ");
    const RANGE: ?*String = String.literal("Range: ");
    const RELOAD: ?*String = String.literal("Reload: ");

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        NULL_WEAPON_PROPERTIES = Inheritance.callStatic(WeaponProperties, "create5", .{ 0, 0, 0, 0, @as(i16, @intCast(0)) });
    }

    fn initFields(this: *Self) void {
        this.reloadTime = 0;
        this.targetingTime = 0;
        this.speed = Inheritance.upcast(?*BasicDecimal, BasicDecimal.ZERO_BIGDECIMAL);
        this.MAX = 10240;
        this.ZERO = 0;
    }
    

    pub fn create5(reloadTime: i64, targetingTime: i64, speed: i64, damage: i32, dissipation: i16) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SimpleWeaponProperties.create().*;
        this.initFields();
        if (speed < this.MAX and speed != 0 and !WeaponProperties.messageSent) {
            const MESSAGE: ?*String = String.literal("Danger Danger Danger: Speed probably to slow if using 1 degree calculations as velocity for a single axis could be below 1024: ");
            const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ MESSAGE }).?, "appendlong", .{ speed }))), this, commonStrings.?.CONSTRUCTOR });
            WeaponProperties.messageSent = true;
        }
        _ = Inheritance.call(this, "setReloadTime", .{ reloadTime });
        _ = Inheritance.call(this, "setTargetingTime", .{ targetingTime });
        _ = Inheritance.call(this, "setDamage", .{ damage });
        _ = Inheritance.call(this, "setDissipation", .{ dissipation });
        _ = Inheritance.call(this, "setSpeed", .{ Inheritance.callStatic(BasicDecimal, "create1", .{ speed }) });
        if (dissipation != this.ZERO) {
            const unscaledDamage: i64 = this.speed.?.getUnscaled() * damage;
            const scaledDissipation: i32 = dissipation * this.speed.?.getScaledFactorValue();
            const value: i64 = (@divTrunc(unscaledDamage, @as(i64, @intCast(scaledDissipation))));
            _ = Inheritance.call(this, "setRange", .{ @divTrunc(@as(i32, @intCast((value * 9))), 10) });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setReloadTime(self: *Self, reloadTime: i64) void {
        self.reloadTime = reloadTime;
    }
    

    pub fn getReloadTime(self: *Self) i64 {
        return self.reloadTime;
    }
    

    pub fn setTargetingTime(self: *Self, targetingTime: i64) void {
        self.targetingTime = targetingTime;
    }
    

    pub fn getTargetingTime(self: *Self) i64 {
        return self.targetingTime;
    }
    

    pub fn getSpeed(self: *Self) ?*BasicDecimal {
        return self.speed;
    }
    

    pub fn setSpeed(self: *Self, speed: ?*BasicDecimal) void {
        self.speed = speed;
    }
    

    pub fn getDamageI(self: *Self, range: i32) i32 {
        return Inheritance.receiver(self, "getDamage").getDamage() - ((divide_N67217: { const left_N67217 = (Inheritance.receiver(self, "getDissipation").getDissipation() * range); const right_N67217 = self.speed.?.getScaled(); break :divide_N67217 if (comptime @typeInfo(@TypeOf(left_N67217)) == .int or @TypeOf(left_N67217) == comptime_int) @divTrunc(left_N67217, right_N67217) else left_N67217 / right_N67217; }));
    }
    

    pub fn toStringArray(self: *Self) []?*String {
        var index: i32 = 0;
        const stringArray: []?*String = array_N67485: { const array_N67485_array = allocator.alloc(?*String, @intCast(3)) catch unreachable; @memset(array_N67485_array, null); break :array_N67485 array_N67485_array; };
        const stringBuffer: ?*StringMaker = StringMaker.create();
        stringArray[@intCast(value_N67585: { const value_N67585_value = index; index += 1; break :value_N67585 value_N67585_value; })] = Inheritance.upcast(@TypeOf(stringArray[@intCast(value_N67585: { const value_N67585_value = index; index += 1; break :value_N67585 value_N67585_value; })]), Object.toString(Object.of(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ WeaponProperties.DAMAGE }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getDamage").getDamage())) }))));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        stringArray[@intCast(value_N67727: { const value_N67727_value = index; index += 1; break :value_N67727 value_N67727_value; })] = Inheritance.upcast(@TypeOf(stringArray[@intCast(value_N67727: { const value_N67727_value = index; index += 1; break :value_N67727 value_N67727_value; })]), Object.toString(Object.of(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ WeaponProperties.RANGE }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getRange").getRange())) }))));
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        stringArray[@intCast(value_N67873: { const value_N67873_value = index; index += 1; break :value_N67873 value_N67873_value; })] = Inheritance.upcast(@TypeOf(stringArray[@intCast(value_N67873: { const value_N67873_value = index; index += 1; break :value_N67873 value_N67873_value; })]), Object.toString(Object.of(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ WeaponProperties.RELOAD }).?, "appendlong", .{ self.getReloadTime() }))));
        return stringArray;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ WeaponProperties.DAMAGE }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getDamage").getDamage())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ WeaponProperties.RANGE }).?, "appendint", .{ @as(i32, @intCast(Inheritance.receiver(self, "getRange").getRange())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.SPACE });
        _ = Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ WeaponProperties.RELOAD }).?, "appendlong", .{ self.getReloadTime() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

