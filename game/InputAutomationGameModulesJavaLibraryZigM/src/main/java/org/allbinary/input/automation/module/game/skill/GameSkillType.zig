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
// package org.allbinary.input.automation.module.game.skill

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const GameSkillType = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.skill.GameSkillType";
    SPELL_GAME_SKILL_TYPE: ?*String = null,
    name: ?*String = null,
    pub var MANA: ?*GameSkillType = undefined;
    pub var REPLENISH: ?*GameSkillType = undefined;
    pub var TIMED: ?*GameSkillType = undefined;
    pub var ATTACK: ?*GameSkillType = undefined;
    pub var TRANSPORT: ?*GameSkillType = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        MANA = Inheritance.callStatic(GameSkillType, "create1", .{ String.literal("Mana") });
        REPLENISH = Inheritance.callStatic(GameSkillType, "create1", .{ String.literal("Replenish") });
        TIMED = Inheritance.callStatic(GameSkillType, "create1", .{ String.literal("Timed") });
        ATTACK = Inheritance.callStatic(GameSkillType, "create1", .{ String.literal("Attack") });
        TRANSPORT = Inheritance.callStatic(GameSkillType, "create1", .{ String.literal("Transport") });
    }

    fn initFields(this: *Self) void {
        this.SPELL_GAME_SKILL_TYPE = String.literal("SpellGameSkillType: ");
        this.name = null;
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setName", .{ name });
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(self.SPELL_GAME_SKILL_TYPE, self.getName()));
    }
};

