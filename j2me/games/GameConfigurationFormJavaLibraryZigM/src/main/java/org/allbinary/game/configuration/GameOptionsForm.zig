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
// const Command = @import("javax/microedition/lcdui/Command.zig").Command;
// const CommandListener = @import("javax/microedition/lcdui/CommandListener.zig").CommandListener;
// const Item = @import("javax/microedition/lcdui/Item.zig").Item;
// const TextField = @import("javax/microedition/lcdui/TextField.zig").TextField;
const GameCommandsFactory = @import("org/allbinary/game/commands/GameCommandsFactory.zig").GameCommandsFactory;
const GameFeatureChoiceGroups = @import("org/allbinary/game/configuration/feature/GameFeatureChoiceGroups.zig").GameFeatureChoiceGroups;
const GameFeatureFormUtil = @import("org/allbinary/game/configuration/feature/GameFeatureFormUtil.zig").GameFeatureFormUtil;
const GameFeatureItemCommandListener = @import("org/allbinary/game/configuration/feature/GameFeatureItemCommandListener.zig").GameFeatureItemCommandListener;
const GameFeatureItemStateListener = @import("org/allbinary/game/configuration/feature/GameFeatureItemStateListener.zig").GameFeatureItemStateListener;
const SensorFeatureFactory = @import("org/allbinary/game/configuration/feature/SensorFeatureFactory.zig").SensorFeatureFactory;
const GameConfigurationPersistanceSingleton = @import("org/allbinary/game/configuration/persistance/GameConfigurationPersistanceSingleton.zig").GameConfigurationPersistanceSingleton;
const KeyValuePersistance = @import("org/allbinary/game/configuration/persistance/KeyValuePersistance.zig").KeyValuePersistance;
const BasicColor = @import("org/allbinary/graphics/color/BasicColor.zig").BasicColor;
const MyCommandsFactory = @import("org/allbinary/graphics/displayable/command/MyCommandsFactory.zig").MyCommandsFactory;
const CommandForm = @import("org/allbinary/graphics/displayable/screen/CommandForm.zig").CommandForm;
const OrientationData = @import("org/allbinary/input/gyro/OrientationData.zig").OrientationData;
const MEUtil = @import("org/allbinary/logic/MEUtil.zig").MEUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const GameConfiguration = @import("org/allbinary/game/configuration/GameConfiguration.zig").GameConfiguration;
const GameConfigurationCentral = @import("org/allbinary/game/configuration/GameConfigurationCentral.zig").GameConfigurationCentral;
const GameConfigurationGauge = @import("org/allbinary/game/configuration/GameConfigurationGauge.zig").GameConfigurationGauge;
const GameConfigurationSingleton = @import("org/allbinary/game/configuration/GameConfigurationSingleton.zig").GameConfigurationSingleton;
const GameConfigurationTextInput = @import("org/allbinary/game/configuration/GameConfigurationTextInput.zig").GameConfigurationTextInput;
const GameConfigurationUtil = @import("org/allbinary/game/configuration/GameConfigurationUtil.zig").GameConfigurationUtil;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const GameOptionsForm = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.GameOptionsForm";
    base: CommandForm = undefined,
    meUtil: ?*MEUtil = null,

    fn initFields(this: *Self) void {
        this.meUtil = Inheritance.upcast(?*MEUtil, MEUtil.getInstance());
    }
    

    pub fn create4(commandListener: ?*CommandListener, title: ?*String, backgrounBasicColor: ?*BasicColor, foregroundBasicColor: ?*BasicColor) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(CommandForm, "create4", .{ commandListener, title, backgrounBasicColor, foregroundBasicColor }).*;
        this.initFields();
        _ = Inheritance.call(Inheritance.fieldPointer(this, "logUtil").*.?, "putF", .{ Inheritance.fieldPointer(this, "commonStrings").*.?.START, this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        _ = this.addConfiguration();
        const gameFeatureFormUtil: ?*GameFeatureFormUtil = Inheritance.upcast(?*GameFeatureFormUtil, GameFeatureFormUtil.getInstance());
        _ = Inheritance.call(gameFeatureFormUtil.?, "addChoiceGroup", .{ this, Inheritance.receiverOf(GameFeatureChoiceGroups.getExclusiveInstance().?, "get").get(), Choice.EXCLUSIVE });
        _ = Inheritance.call(gameFeatureFormUtil.?, "addChoiceGroup", .{ this, Inheritance.receiverOf(GameFeatureChoiceGroups.getMultipleInstance().?, "get").get(), Choice.MULTIPLE });
        _ = Inheritance.call(this, "initCommands", .{ commandListener });
        _ = Inheritance.call(this, "setItemStateListener", .{ Inheritance.callStatic(GameFeatureItemStateListener, "create1", .{ this }) });
        _ = this.addTextFieldsIfSimulated();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn closeClientInformation(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = self.base.close();
        _ = Inheritance.call(self, "save", .{ abeClientInformation });
    }
    

    pub fn addTextFieldsIfSimulated(self: *Self) void {
        const key: ?*String = Inheritance.upcast(?*String, OrientationData.getInstance().?.ORIENTATION_SENSOR_INPUT);
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(GameFeatureChoiceGroups.getExclusiveInstance().?, "get").get());
        if (hashtable != null) {
            const listCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(hashtable.?, "get", .{ key }));
            if (listCanBeNull != null) {
                const list: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, listCanBeNull);
                if (Inheritance.call(list.?, "contains", .{ SensorFeatureFactory.getInstance().?.SIMULATED_ORIENTATION_SENSORS })) {
                    _ = self.addTextFields();
                }
            }
        }
    }
    

    pub fn addTextFields(self: *Self) void {
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, GameConfigurationTextInput.getHashtable());
        const size: i32 = Inheritance.receiver(hashtable.?, "size").size();
        const objectArray: []?Object = Inheritance.call(HashtableUtil.getInstance().?, "getKeysAsArray", .{ hashtable });
        var gameConfigurationTextInput: ?*GameConfigurationTextInput = null;
        var textField: ?*TextField = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            gameConfigurationTextInput = Inheritance.cast(?*GameConfigurationTextInput, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, objectArray[@intCast(index)]) }));
            textField = Inheritance.callStatic(TextField, "create4", .{ gameConfigurationTextInput.?.getLabel(), gameConfigurationTextInput.?.getText(), 30, TextField.ANY });
            _ = Inheritance.call(self.meUtil.?, "appendItem", .{ self, textField });
            }
        }
    }
    

    pub fn addConfiguration(self: *Self) void {
        const METHOD_NAME: ?*String = String.literal("addConfiguration");
        const NAME: ?*String = String.literal("Name: ");
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiverOf(GameConfigurationSingleton.getInstance().?, "getOptionsBasicArrayList").getOptionsBasicArrayList());
        const GAUGE_CHANGE: ?*Command = Inheritance.upcast(?*Command, MyCommandsFactory.getInstance().?.GAUGE_CHANGE);
        const stringMaker: ?*StringMaker = StringMaker.create();
        const size: i32 = list.?.size();
        var gameConfiguration: ?*GameConfiguration = null;
        var gauge: ?*GameConfigurationGauge = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            gameConfiguration = Inheritance.cast(?*GameConfiguration, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(stringMaker.?, "delete", .{ 0, stringMaker.?.length() });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringMaker.?, "append", .{ NAME }).?, "append", .{ Object.toString(Object.of(gameConfiguration)) }))), self, METHOD_NAME });
            gauge = Inheritance.callStatic(GameConfigurationGauge, "create1", .{ gameConfiguration });
            _ = Inheritance.call(gauge.?, "setDefaultCommand", .{ GAUGE_CHANGE });
            _ = Inheritance.call(gauge.?, "setItemCommandListener", .{ Inheritance.callStatic(GameFeatureItemCommandListener, "create1", .{ self }) });
            _ = Inheritance.call(self.meUtil.?, "appendItem", .{ self, gauge });
            }
        }
    }
    

    pub fn initCommands(self: *Self, cmdListener: ?*CommandListener) void {
        const gameCommandsFactory: ?*GameCommandsFactory = Inheritance.upcast(?*GameCommandsFactory, GameCommandsFactory.getInstance());
        _ = Inheritance.receiver(self, "removeAllCommands").removeAllCommands();
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.CLOSE_OPTIONS });
        _ = Inheritance.call(self, "addCommand", .{ gameCommandsFactory.?.DEFAULT_OPTIONS });
        _ = Inheritance.call(self, "setCommandListener", .{ cmdListener });
    }
    

    // throws Exception
    pub fn save(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        const size: i32 = Inheritance.receiver(self, "size").size();
        var item: ?*Item = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            item = Inheritance.upcast(@TypeOf(item), Inheritance.call(self, "get", .{ index }));
            if (Object.instanceOf(Object.of(item), GameConfigurationGauge)) {
                _ = Inheritance.call(GameConfigurationUtil.getInstance().?, "update", .{ Inheritance.cast(?*GameConfigurationGauge, item) });
            } else if (Object.instanceOf(Object.of(item), TextField)) {
                _ = Inheritance.callStatic(GameConfigurationTextInput, "update", .{ Inheritance.cast(?*TextField, item) });
            }
            }
        }
        _ = Inheritance.receiverOf(GameConfigurationUtil.getInstance().?, "updateCompetitionValue").updateCompetitionValue();
        const hashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        const SCALE: ?*GameConfiguration = Inheritance.upcast(?*GameConfiguration, GameConfigurationCentral.getInstance().?.SCALE);
        _ = Inheritance.call(hashtable.?, "put", .{ SCALE.?.getName(), Object.toString(Object.of(SCALE.?.getValue())) });
        const keyValuePersistance: ?*KeyValuePersistance = Inheritance.upcast(?*KeyValuePersistance, GameConfigurationPersistanceSingleton.getInstance());
        _ = Inheritance.receiver(keyValuePersistance.?, "clear").clear();
        _ = Inheritance.call(keyValuePersistance.?, "loadAll", .{ abeClientInformation });
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(keyValuePersistance.?, "getIds").getIds());
        _ = Inheritance.call(keyValuePersistance.?, "save", .{ abeClientInformation, hashtable });
        const size2: i32 = list.?.size();
        var integer: ?*Integer = null;
        {
            var index: i32 = 0;
            while (index < size2) : (index += 1) {
            integer = Inheritance.cast(?*Integer, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(keyValuePersistance.?, "delete", .{ abeClientInformation, integer.?.intValue() });
            }
        }
    }
};

