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
const MagicGameObjectInterface = @import("org/allbinary/input/automation/module/game/MagicGameObjectInterface.zig").MagicGameObjectInterface;
const MeteredGameObject = @import("org/allbinary/input/automation/module/game/MeteredGameObject.zig").MeteredGameObject;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const MagicGameObject = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.game.MagicGameObject";
    pub const java_interfaces = .{ MagicGameObjectInterface };
    base: MeteredGameObject = undefined,
    MP_LABEL: ?*String = null,
    // Implements MagicGameObjectInterface

    fn initFields(this: *Self) void {
        this.MP_LABEL = String.literal("MP:");
    }
    

    pub fn create4(bufferedImage: []?*BufferedImage, minX: ?*Integer, maxX: ?*Integer, y: ?*Integer) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(MeteredGameObject, "create4", .{ bufferedImage, minX, maxX, y }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.NEW_LINE });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.MP_LABEL });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.base.toString() });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

