// 
// AllBinary Open License Version 1 
// Copyright (c) 2022 AllBinary 
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
// package org.allbinary.game.layer

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Image = @import("javax/microedition/lcdui/Image.zig").Image;
// const Sprite = @import("javax/microedition/lcdui/game/Sprite.zig").Sprite;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const SpriteFactoryInterface = @import("org/allbinary/game/layer/SpriteFactoryInterface.zig").SpriteFactoryInterface;

pub const SpriteFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.layer.SpriteFactory";
    pub const java_interfaces = .{ SpriteFactoryInterface };
    logUtil: ?*LogUtil = null,
    // Implements SpriteFactoryInterface
    var instance: ?*SpriteFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = SpriteFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*SpriteFactory {
        return Inheritance.upcast(?*SpriteFactory, SpriteFactory.instance);
    }
    

    pub fn createSprite(self: *Self, image: ?*Image, frameWidth: i32, frameHeight: i32) ?*Sprite {
        _ = self;
        return Inheritance.callStatic(Sprite, "create3", .{ image, frameWidth, frameHeight });
    }
};

