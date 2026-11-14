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
// package org.allbinary.game.ag.layer.hud.basic.notification

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicHudFactory = @import("org/allbinary/game/graphics/hud/BasicHudFactory.zig").BasicHudFactory;
const BasicColorFactory = @import("org/allbinary/graphics/color/BasicColorFactory.zig").BasicColorFactory;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameNotificationHud = @import("org/allbinary/game/ag/layer/hud/basic/notification/GameNotificationHud.zig").GameNotificationHud;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const NoGameNotificationHudSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.ag.layer.hud.basic.notification.NoGameNotificationHudSingleton";
    logUtil: ?*LogUtil = null,
    gameNotificationHud: ?*GameNotificationHud = null,
    var instance: ?*NoGameNotificationHudSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = NoGameNotificationHudSingleton.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.gameNotificationHud = Inheritance.upcast(?*GameNotificationHud, GameNotificationHud.NULL_GAME_NOTIFICATION);
    }
    

    pub fn getInstance() ?*NoGameNotificationHudSingleton {
        return Inheritance.upcast(?*NoGameNotificationHudSingleton, NoGameNotificationHudSingleton.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            const basicHudFactory: ?*BasicHudFactory = Inheritance.upcast(?*BasicHudFactory, BasicHudFactory.getInstance()); _ = basicHudFactory;
            this.gameNotificationHud = Inheritance.upcast(@TypeOf(this.gameNotificationHud), NoGameGameNotificationHud.create());
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(this.logUtil.?, "put", .{ Inheritance.fieldPointer(commonStrings.?, "EXCEPTION").*, this, Inheritance.fieldPointer(commonStrings.?, "CONSTRUCTOR").*, e });
        return this;
    }
    

    pub fn getGameNotificationHud(self: *Self) ?*GameNotificationHud {
        return self.gameNotificationHud;
    }
    pub const NoGameGameNotificationHud = struct {
        const Self1 = @This();
        pub const java_name = "org.allbinary.game.ag.layer.hud.basic.notification.NoGameGameNotificationHud";
        base: GameNotificationHud = undefined,
        

        pub fn create() *Self1 {
            const this = allocator.create(Self1) catch unreachable;
            this.* = .{};
            this.base = Inheritance.callStatic(GameNotificationHud, "create4", .{ Inheritance.fieldPointer(BasicHudFactory.getInstance().?, "TOPCENTER").*, Inheritance.fieldPointer(BasicHudFactory.getInstance().?, "HORIZONTAL").*, 2, Inheritance.fieldPointer(BasicColorFactory.getInstance().?, "RED").* }).*;
            Inheritance.fieldPointer(this, "updateMaxWidth").* = 40;
            Inheritance.fieldPointer(this, "updateMaxHeight").* = 14;
            Inheritance.bindOverrides(this);
            return this;
        }
    };
};

