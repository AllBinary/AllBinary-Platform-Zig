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
// package org.allbinary.game.configuration

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const GameOptionsForm = @import("org/allbinary/game/configuration/GameOptionsForm.zig").GameOptionsForm;

pub const GameOptionsFormFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameOptionsFormFactory";
    logUtil: ?*LogUtil = null,
    var instance: ?*GameOptionsFormFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = GameOptionsFormFactory.create();
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
    

    pub fn getInstance() ?*GameOptionsFormFactory {
        return Inheritance.upcast(?*GameOptionsFormFactory, GameOptionsFormFactory.instance);
    }
    

    pub fn init(self: *Self, commandListener: ?*CommandListener, title: ?*String, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) ?*CommandForm {
        _ = self;
        { // try
            return Inheritance.upcast(?*CommandForm, Inheritance.callStatic(GameOptionsForm, "create4", .{ commandListener, title, backgrounBasicColor, foregroundBasicColor }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.INIT, e });
//             return Inheritance.upcast(?*CommandForm, CommandForm.getNullCommandForm());
    }
};

