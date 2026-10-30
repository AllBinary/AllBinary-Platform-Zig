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
// package org.allbinary.game.ag.layer.weapon.mine

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicGameResources = @import("org/allbinary/game/layer/resources/BasicGameResources.zig").BasicGameResources;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;

pub const MineWeaponResources = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.weapon.mine.MineWeaponResources";
    base: BasicGameResources = undefined,
    DROP_TEXT_RESOURCE: ?*String = null,
    DROP_RESOURCE: ?*String = null,
    DROP_ICON_RESOURCE: ?*String = null,
    var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.DROP_TEXT_RESOURCE = String.literal("/mine_drop_text_20_by_20.png");
        this.DROP_RESOURCE = String.literal("/mine_drop_20_by_20.png");
        this.DROP_ICON_RESOURCE = String.literal("/mine_drop_icon_20_by_20.png");
    }
    

    pub fn getInstance() ?*MineWeaponResources {
        if (Object.same(MineWeaponResources.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            MineWeaponResources.instance = Inheritance.upcast(@TypeOf(MineWeaponResources.instance), MineWeaponResources.create());
        }
        return Inheritance.cast(?*MineWeaponResources, MineWeaponResources.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BasicGameResources.create().*;
        this.initFields();
        const ROOT: ?*String = String.literal("/mine");
        const SMALL: ?*String = String.literal("_20_by_20.png");
        const MEDIUM: ?*String = SMALL;
        const SIZE_FOUR: ?*String = SMALL;
        const SIZE_FIVE: ?*String = SMALL;
        const SIZE_SIX: ?*String = SMALL;
        const SIZE: []?*String = @constCast(&[_]?*String{ SMALL, MEDIUM, SIZE_FOUR, SIZE_FIVE, SIZE_SIX })[0..];
        _ = Inheritance.call(&this.base, "init", .{ ROOT, SIZE });
        Inheritance.bindOverrides(this);
        return this;
    }
};

