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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AnalogLocationInputFactory = @import("org/allbinary/game/input/analog/AnalogLocationInputFactory.zig").AnalogLocationInputFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const LocalPlayerInputIdFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.LocalPlayerInputIdFactory";
    logUtil: ?*LogUtil = null,
    MAX_NUMBER_OF_PLAYERS: i32 = 0,
    MAX_FAST_DEVICEID: i32 = 0,
    deviceIdToplayerId: []i32 = &.{},
    playerIdToDeviceId: []i32 = &.{},
    playersInPlay: []bool = &.{},
    totalDevicesMapped: i32 = 0,
    var instance: ?*LocalPlayerInputIdFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = LocalPlayerInputIdFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.MAX_NUMBER_OF_PLAYERS = 6;
        this.MAX_FAST_DEVICEID = 65;
        this.deviceIdToplayerId = array_N65870: { const array_N65870_array = allocator.alloc(i32, @intCast(this.MAX_FAST_DEVICEID)) catch unreachable; @memset(array_N65870_array, 0); break :array_N65870 array_N65870_array; };
        this.playerIdToDeviceId = array_N65931: { const array_N65931_array = allocator.alloc(i32, @intCast(this.MAX_NUMBER_OF_PLAYERS)) catch unreachable; @memset(array_N65931_array, 0); break :array_N65931 array_N65931_array; };
        this.playersInPlay = array_N65992: { const array_N65992_array = allocator.alloc(bool, @intCast(this.MAX_NUMBER_OF_PLAYERS)) catch unreachable; @memset(array_N65992_array, false); break :array_N65992 array_N65992_array; };
        this.totalDevicesMapped = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        {
            var index: i32 = @as(i32, @intCast(this.deviceIdToplayerId.len)) - 1;
            while (index >= 0) : (index -= 1) {
            this.deviceIdToplayerId[@intCast(index)] = -1;
            }
        }
        return this;
    }
    

    pub fn getInstance() ?*LocalPlayerInputIdFactory {
        return Inheritance.upcast(?*LocalPlayerInputIdFactory, LocalPlayerInputIdFactory.instance);
    }
    

    pub fn getDeviceId(self: *Self, playerInputId: i32) i32 {
        return self.playerIdToDeviceId[@intCast(playerInputId)];
    }
    

    pub fn getPlayerForDevice(self: *Self, deviceId: i32) i32 {
        var index: i32 = 0;
        if (deviceId < self.MAX_FAST_DEVICEID) {
            const playerInputId: i32 = self.deviceIdToplayerId[@intCast(deviceId)];
            if (playerInputId != -1) {
                return playerInputId;
            }
        } else {
            {
                index = self.totalDevicesMapped - 1;
                while (index >= 0) : (index -= 1) {
                if (self.playerIdToDeviceId[@intCast(index)] == deviceId) {
                    return index;
                }
                }
            }
        }
        index = self.totalDevicesMapped;
        if (deviceId < self.MAX_FAST_DEVICEID) {
            self.deviceIdToplayerId[@intCast(deviceId)] = index;
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Added DeviceId: ") }).?, "appendint", .{ deviceId }).?, "append", .{ String.literal(" beyond fast Id list") }))), self, String.literal("getPlayerForDevice") });
        }
        self.playerIdToDeviceId[@intCast(index)] = deviceId;
        _ = Inheritance.call(AnalogLocationInputFactory.getInstance().?, "addPlayer", .{ self.totalDevicesMapped });
        self.totalDevicesMapped += 1;
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Added DeviceId: ") }).?, "appendint", .{ deviceId }).?, "append", .{ String.literal(" at: ") }).?, "appendint", .{ index }).?, "append", .{ String.literal(" Total: ") }).?, "appendint", .{ self.totalDevicesMapped }))), self, String.literal("getPlayerForDevice") });
        return index;
    }
    

    pub fn getTotalDevicesInPlay(self: *Self) i32 {
        var total: i32 = 0;
        {
            var index: i32 = self.totalDevicesMapped - 1;
            while (index >= 0) : (index -= 1) {
            if (self.playersInPlay[@intCast(index)] == true) {
                total += 1;
            }
            }
        }
        return total;
    }
    

    pub fn isPlayerInPlay(self: *Self, playerInputId: i32) bool {
        return self.playersInPlay[@intCast(playerInputId)];
    }
    

    pub fn setPlayerInPlay(self: *Self, playerInputId: i32) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Setting PlayerInPlay with playerInputId: ") }).?, "appendint", .{ playerInputId }))), self, String.literal("setPlayerInPlay") });
        self.playersInPlay[@intCast(playerInputId)] = true;
    }
    

    pub fn setPlayerOutOfPlay(self: *Self, playerInputId: i32) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Setting PlayerOutOfPlay with playerInputId: ") }).?, "appendint", .{ playerInputId }))), self, String.literal("setPlayerOutOfPlay") });
        self.playersInPlay[@intCast(playerInputId)] = false;
    }
    

    pub fn getPlayersInPlay(self: *Self) []bool {
        return self.playersInPlay;
    }
};

