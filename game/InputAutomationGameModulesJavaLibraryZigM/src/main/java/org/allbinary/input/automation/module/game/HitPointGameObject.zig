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
// package org.allbinary.input.automation.module.game

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const HitPointGameObjectInterface = @import("org/allbinary/input/automation/module/game/HitPointGameObjectInterface.zig").HitPointGameObjectInterface;
const MeteredGameObject = @import("org/allbinary/input/automation/module/game/MeteredGameObject.zig").MeteredGameObject;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const HitPointGameObject = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.HitPointGameObject";
    pub const java_interfaces = .{ HitPointGameObjectInterface };
    base: MeteredGameObject = undefined,
    damaged: bool = false,
    closeDeath: bool = false,
    HP_LABEL: ?*String = null,
    IS_DAMAGED_LABEL: ?*String = null,
    IS_CLOSE_DEATH_LABEL: ?*String = null,
    // Implements HitPointGameObjectInterface

    fn initFields(this: *Self) void {
        this.damaged = false;
        this.closeDeath = false;
        this.HP_LABEL = String.literal("HP: ");
        this.IS_DAMAGED_LABEL = String.literal("isDamaged: ");
        this.IS_CLOSE_DEATH_LABEL = String.literal("isCloseDeath: ");
    }
    

    pub fn create4(bufferedImage: []?*BufferedImage, minX: ?*Integer, maxX: ?*Integer, y: ?*Integer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MeteredGameObject, "create4", .{ bufferedImage, minX, maxX, y }).*;
        this.initFields();
        if (Inheritance.receiverOf(Inheritance.receiver(this, "getRatios").getRatios()[@intCast(@as(i32, @intCast(bufferedImage.len)) - 1)].?, "doubleValue").doubleValue() < 1.0) {
            _ = Inheritance.call(this, "setDamaged", .{ true });
        } else {
            _ = Inheritance.call(this, "setDamaged", .{ false });
        }
        if (Inheritance.receiverOf(Inheritance.receiver(this, "getRatios").getRatios()[@intCast(@as(i32, @intCast(bufferedImage.len)) - 1)].?, "doubleValue").doubleValue() > 0.25) {
            this.closeDeath = false;
        } else {
            this.closeDeath = true;
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn isMoreThan(self: *Self, aFloat: f32) bool {
        if (Inheritance.receiverOf(Inheritance.receiver(self, "getRatios").getRatios()[@intCast(@as(i32, @intCast(Inheritance.receiver(self, "getRatios").getRatios().len)) - 1)].?, "doubleValue").doubleValue() > aFloat) {
            return true;
        } else {
            return false;
        }
    }
    

    pub fn isCloseDeath(self: *Self) bool {
        return self.closeDeath;
    }
    

    pub fn setCloseDeath(self: *Self, closeDeath: bool) void {
        self.closeDeath = closeDeath;
    }
    

    pub fn isDamaged(self: *Self) bool {
        return self.damaged;
    }
    

    pub fn setDamaged(self: *Self, damaged: bool) void {
        self.damaged = damaged;
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.HP_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.base.toString() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.IS_DAMAGED_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isDamaged() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.IS_CLOSE_DEATH_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendboolean", .{ self.isCloseDeath() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

