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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const GameSkillPropertyInterface = @import("org/allbinary/input/automation/module/game/skill/GameSkillPropertyInterface.zig").GameSkillPropertyInterface;
const GameSkillType = @import("org/allbinary/input/automation/module/game/skill/GameSkillType.zig").GameSkillType;

pub const GameSkill = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.skill.GameSkill";
    gameSkillType: ?*GameSkillType = null,
    extra: ?*String = null,
    time: i32 = 0,
    vector: ?*BasicArrayList = null,
    GAME_SKILL_LABEL: ?*String = null,
    EXTRA_LABEL: ?*String = null,
    TIME_LABEL: ?*String = null,
    var hashMap: ?*HashMap = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
    }

    fn initFields(this: *Self) void {
        this.gameSkillType = null;
        this.extra = null;
        this.time = 0;
        
        this.GAME_SKILL_LABEL = String.literal("GameSkill: ");
        this.EXTRA_LABEL = String.literal("Extra: ");
        this.TIME_LABEL = String.literal("Time: ");
    }
    

    pub fn create3(gameSkillType: ?*GameSkillType, extra: ?*String, time: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setGameSkillType", .{ gameSkillType });
        _ = Inheritance.call(this, "setExtra", .{ extra });
        _ = Inheritance.call(this, "setTime", .{ time });
        this.vector = Inheritance.upcast(@TypeOf(this.vector), BasicArrayListD.create());
        _ = Inheritance.call(GameSkill.hashMap.?, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.receiverOf(this.getGameSkillType().?, "getName").getName() }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ extra }))), this });
        return this;
    }
    

    pub fn getGameSkillType(self: *Self) ?*GameSkillType {
        return self.gameSkillType;
    }
    

    pub fn setGameSkillType(self: *Self, gameSkillType: ?*GameSkillType) void {
        self.gameSkillType = gameSkillType;
    }
    

    pub fn getExtra(self: *Self) ?*String {
        return self.extra;
    }
    

    pub fn setExtra(self: *Self, extra: ?*String) void {
        self.extra = extra;
    }
    

    pub fn getTime(self: *Self) i32 {
        return self.time;
    }
    

    pub fn setTime(self: *Self, time: i32) void {
        self.time = time;
    }
    

    pub fn addProperty(self: *Self, gameSkillPropertyInterface: ?*GameSkillPropertyInterface) void {
        _ = Inheritance.call(self.vector.?, "add", .{ gameSkillPropertyInterface });
    }
    

    pub fn getProperties(self: *Self) ?*BasicArrayList {
        return self.vector;
    }
    

    pub fn getInstance(gameSkillType: ?*GameSkillType, extra: ?*String) ?*GameSkill {
        return Inheritance.cast(?*GameSkill, Inheritance.call(GameSkill.hashMap.?, "get", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ gameSkillType.?.getName() }).?, "append", .{ CommonSeps.getInstance().?.SPACE }).?, "append", .{ extra }))) }));
    }
    

    pub fn toString(self: *Self) ?*String {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.GAME_SKILL_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.getGameSkillType())) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.EXTRA_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.getExtra() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ commonSeps.?.SPACE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.TIME_LABEL });
        _ = Inheritance.call(stringBuffer.?, "appendlong", .{ @as(i64, @intCast(self.getTime())) });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

