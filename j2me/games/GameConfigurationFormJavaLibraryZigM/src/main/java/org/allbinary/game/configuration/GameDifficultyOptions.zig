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
// const NullImage = @import("javax/microedition/lcdui/NullImage.zig").NullImage;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const GameDifficultyFactory = @import("org/allbinary/game/configuration/persistance/GameDifficultyFactory.zig").GameDifficultyFactory;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;
const MEUtil = @import("org/allbinary/logic/MEUtil.zig").MEUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameDifficultyOptions = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameDifficultyOptions";
    base: CommandForm = undefined,
    meUtil: ?*MEUtil = null,
    list: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.meUtil = Inheritance.upcast(?*MEUtil, MEUtil.getInstance());
        
    }
    

    pub fn create5(commandListener: ?*CommandListener, title: ?*String, list: ?*BasicArrayList, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CommandForm, "create4", .{ commandListener, title, backgrounBasicColor, foregroundBasicColor }).*;
        this.initFields();
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        this.list = list;
        _ = this.update();
        _ = Inheritance.call(this, "initCommands", .{ commandListener });
        const gameDifficultyFactory: ?*GameDifficultyFactory = Inheritance.upcast(?*GameDifficultyFactory, GameDifficultyFactory.getInstance());
        _ = Inheritance.call(this, "setSelectedId", .{ gameDifficultyFactory.?.getLevel() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn open(self: *Self) void {
        _ = self.base.open();
    }
    

    // throws Exception
    pub fn close(self: *Self) void {
        _ = self.base.close();
        _ = self.save();
    }
    

    // throws Exception
    pub fn save(self: *Self) void {
        const gameDifficultyFactory: ?*GameDifficultyFactory = Inheritance.upcast(?*GameDifficultyFactory, GameDifficultyFactory.getInstance());
        _ = Inheritance.call(gameDifficultyFactory.?, "setLevel", .{ self.getSelectedId() });
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        const gameCommandsFactory: ?*GameCommandsFactory = Inheritance.upcast(?*GameCommandsFactory, GameCommandsFactory.getInstance());
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.CLOSE_AND_SHOW_GAME_CANVAS });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    // throws Exception
    pub fn update(self: *Self) void {
        _ = Inheritance.receiver(self, "deleteAll").deleteAll();
        _ = Inheritance.call(self, "add", .{ self.list, String.literal("Difficulty"), Choice.EXCLUSIVE });
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
        const METHOD_NAME: ?*String = String.literal("addChoiceGroup");
        const NAME: ?*String = String.literal("Adding Choice: ");
        const choiceGroup: ?*ChoiceGroup = Inheritance.callStatic(ChoiceGroup, "create4", .{ name, option, Inheritance.receiverOf(StringUtil.getInstance().?, "getArrayInstance").getArrayInstance(), NullImage.NULL_IMAGE_ARRAY });
        const size: i32 = list.?.size();
        var anyType: ?Object = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            anyType = Inheritance.upcast(@TypeOf(anyType), list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ NAME }).?, "append", .{ Object.toString(Object.of(anyType)) }))), self, METHOD_NAME });
            _ = Inheritance.call(choiceGroup.?, "append", .{ Object.toString(Object.of(anyType)), NullImage.NULL_IMAGE });
            }
        }
        return choiceGroup;
    }
    

    pub fn setSelectedId(self: *Self, id: i32) void {
        const choiceGroup: ?*ChoiceGroup = Inheritance.cast(?*ChoiceGroup, Inheritance.call(self, "get", .{ 0 }));
        _ = Inheritance.call(choiceGroup.?, "setSelectedIndex", .{ id, true });
    }
    

    pub fn getSelectedId(self: *Self) i32 {
        const choiceGroup: ?*ChoiceGroup = Inheritance.cast(?*ChoiceGroup, Inheritance.call(self, "get", .{ 0 }));
        return choiceGroup.?.getSelectedIndex();
    }
    

    pub fn getSelectedText(self: *Self) i32 {
        const choiceGroup: ?*ChoiceGroup = Inheritance.cast(?*ChoiceGroup, Inheritance.call(self, "get", .{ 0 }));
        const value: i32 = Inheritance.receiverOf(Inheritance.callStatic(Integer, "valueOf", .{ Inheritance.call(choiceGroup.?, "getString", .{ choiceGroup.?.getSelectedIndex() }) }).?, "intValue").intValue();
        return value;
    }
};

