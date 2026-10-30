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
// package org.allbinary.game.configuration.feature

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const Item = @import("javax/microedition/lcdui/Item.zig").Item;
// const ItemCommandListener = @import("javax/microedition/lcdui/ItemCommandListener.zig").ItemCommandListener;
const GameConfigurationGauge = @import("org/allbinary/game/configuration/GameConfigurationGauge.zig").GameConfigurationGauge;
const GameConfigurationUtil = @import("org/allbinary/game/configuration/GameConfigurationUtil.zig").GameConfigurationUtil;
const GameOptionsForm = @import("org/allbinary/game/configuration/GameOptionsForm.zig").GameOptionsForm;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const MidletStrings = @import("org/allbinary/midlet/MidletStrings.zig").MidletStrings;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const GameFeatureItemCommandListener = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.feature.GameFeatureItemCommandListener";
    logUtil: ?*LogUtil = null,
    gameOptionsForm: ?*GameOptionsForm = null,
    // Implements ItemCommandListener

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create1(gameOptionsForm: ?*GameOptionsForm) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.gameOptionsForm = gameOptionsForm;
        return this;
    }
    

    pub fn commandAction(self: *Self, command: ?*Command, item: ?*Item) void {
        _ = command;
        { // try
            const itemLabel: ?*String = Inheritance.upcast(?*String, item.?.getLabel());
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonLabels.getInstance().?.ITEM_LABEL }).?, "append", .{ itemLabel }))), self, MidletStrings.getInstance().?.COMMAND_ACTION });
            if (Object.instanceOf(Object.of(item), GameConfigurationGauge)) {
                _ = Inheritance.call(GameConfigurationUtil.getInstance().?, "change", .{ self.gameOptionsForm, Inheritance.cast(?*GameConfigurationGauge, item) });
            }
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, MidletStrings.getInstance().?.COMMAND_ACTION, e });
    }
};

