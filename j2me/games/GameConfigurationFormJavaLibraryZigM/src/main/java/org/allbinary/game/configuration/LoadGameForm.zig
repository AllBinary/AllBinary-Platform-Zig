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
// const Choice = @import("javax/microedition/lcdui/Choice.zig").Choice;
// const ChoiceGroup = @import("javax/microedition/lcdui/ChoiceGroup.zig").ChoiceGroup;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Item = @import("javax/microedition/lcdui/Item.zig").Item;
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
// const StringItem = @import("javax/microedition/lcdui/StringItem.zig").StringItem;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const GamePersistanceSingleton = @import("org/allbinary/game/configuration/persistance/GamePersistanceSingleton.zig").GamePersistanceSingleton;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;
const MEUtil = @import("org/allbinary/logic/MEUtil.zig").MEUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const LoadGameForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.LoadGameForm";
    base: CommandForm = undefined,
    meUtil: ?*MEUtil = null,
    areChoices: bool = false,

    fn initFields(this: *Self) void {
        this.meUtil = Inheritance.upcast(?*MEUtil, MEUtil.getInstance());
        this.areChoices = false;
    }
    

    pub fn create4(commandListener: ?*CommandListener, title: ?*String, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CommandForm, "create4", .{ commandListener, title, backgrounBasicColor, foregroundBasicColor }).*;
        this.initFields();
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        _ = this.update();
        _ = Inheritance.call(this, "initCommands", .{ commandListener });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        const gameCommandsFactory: ?*GameCommandsFactory = Inheritance.upcast(?*GameCommandsFactory, GameCommandsFactory.getInstance());
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.LOAD_FILE });
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.DELETE_FILE });
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.CLOSE_AND_SHOW_GAME_CANVAS });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(GamePersistanceSingleton.getInstance().?, "getIds").getIds());
        _ = Inheritance.receiver(self, "deleteAll").deleteAll();
        if (list.?.size() > 0) {
            _ = Inheritance.call(self, "add", .{ list, String.literal("Select A Saved Game"), Choice.EXCLUSIVE });
            self.areChoices = true;
        } else {
            _ = Inheritance.call(self.meUtil.?, "appendItem", .{ self, Inheritance.callStatic(StringItem, "create3", .{ String.literal("No Saved Games"), StringUtil.getInstance().?.EMPTY_STRING, Item.PLAIN }) });
            self.areChoices = false;
        }
        _ = self.base.update();
    }
    

    pub fn add(self: *Self, list: ?*BasicArrayList, name: ?*String, option: i32) void {
        const choiceGroup: ?*ChoiceGroup = Inheritance.upcast(?*ChoiceGroup, Inheritance.call(self, "getChoiceGroup", .{ list, name, option }));
        if (list.?.size() > 0) {
            _ = Inheritance.call(choiceGroup.?, "setSelectedIndex", .{ 0, true });
        }
        _ = Inheritance.call(self.meUtil.?, "appendItem", .{ self, choiceGroup });
    }
    

    pub fn getChoiceGroup(self: *Self, list: ?*BasicArrayList, name: ?*String, option: i32) ?*ChoiceGroup {
        const METHOD_NAME: ?*String = String.literal("getChoiceGroup");
        const ADDING_CHOICE: ?*String = String.literal("Adding Choice: ");
        const choiceGroup: ?*ChoiceGroup = Inheritance.callStatic(ChoiceGroup, "create4", .{ name, option, Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance(), NullImage.NULL_IMAGE_ARRAY });
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const anyType: ?Object = Inheritance.upcast(?Object, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ ADDING_CHOICE }).?, "append", .{ Object.toString(Object.of(anyType)) }))), self, METHOD_NAME });
            _ = Inheritance.call(choiceGroup.?, "append", .{ Object.toString(Object.of(anyType)), NullImage.NULL_IMAGE });
            }
        }
        return choiceGroup;
    }
    

    pub fn getSelectedId(self: *Self) i32 {
        if (self.areChoices) {
            const choiceGroup: ?*ChoiceGroup = Inheritance.cast(?*ChoiceGroup, Inheritance.call(self, "get", .{ 0 }));
            return choiceGroup.?.getSelectedIndex();
        } else {
            return -1;
        }
    }
    

    pub fn getSelectedText(self: *Self) i32 {
        if (self.areChoices) {
            const choiceGroup: ?*ChoiceGroup = Inheritance.cast(?*ChoiceGroup, Inheritance.call(self, "get", .{ 0 }));
            const value: i32 = Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.call(choiceGroup.?, "getString", .{ choiceGroup.?.getSelectedIndex() }) }).?, "intValue").intValue();
            return value;
        } else {
            return -1;
        }
    }
};

