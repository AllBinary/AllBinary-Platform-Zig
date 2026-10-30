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
// package org.allbinary.game.input.mapping

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Enumeration = @import("java/util/Enumeration.zig").Enumeration;
const GamePersistanceStrings = @import("org/allbinary/game/configuration/persistance/GamePersistanceStrings.zig").GamePersistanceStrings;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputPersistance = @import("org/allbinary/game/input/InputPersistance.zig").InputPersistance;
const InputMappingEvent = @import("org/allbinary/game/input/mapping/event/InputMappingEvent.zig").InputMappingEvent;
const InputMappingEventListenerInterface = @import("org/allbinary/game/input/mapping/event/InputMappingEventListenerInterface.zig").InputMappingEventListenerInterface;
const NullInputMappingEventListener = @import("org/allbinary/game/input/mapping/event/NullInputMappingEventListener.zig").NullInputMappingEventListener;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const EnumerationUtil = @import("org/allbinary/util/EnumerationUtil.zig").EnumerationUtil;
const InputToGameKeyMapping = @import("org/allbinary/game/input/mapping/InputToGameKeyMapping.zig").InputToGameKeyMapping;

//GameInputPersistanceLibrary
pub const PersistentInputMapping = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.mapping.PersistentInputMapping";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    enumerationUtil: ?*EnumerationUtil = null,
    inputMapping: ?*InputToGameKeyMapping = null,
    inputMappingEventListenerInterface: ?*InputMappingEventListenerInterface = null,
    inputPersistance: ?*InputPersistance = null,
    inputMappingEvent: ?*InputMappingEvent = null,
    pub var instance: ?Object = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.enumerationUtil = Inheritance.upcast(?*EnumerationUtil, EnumerationUtil.getInstance());
        this.inputMapping = InputToGameKeyMapping.create();
        this.inputMappingEventListenerInterface = Inheritance.upcast(?*InputMappingEventListenerInterface, NullInputMappingEventListener.NULL_INPUT_MAPPING_EVENT_LISTENER);
        
        this.inputMappingEvent = Inheritance.callStatic(InputMappingEvent, "create1", .{ this });
    }
    

    pub fn getNullInstance() ?*PersistentInputMapping {
        if (Object.same(PersistentInputMapping.instance, NullUtil.getInstance().?.NULL_OBJECT)) {
            PersistentInputMapping.instance = Inheritance.upcast(@TypeOf(PersistentInputMapping.instance), Inheritance.callStatic(PersistentInputMapping, "create1", .{ GamePersistanceStrings.getInstance().?.SAVED_INPUT_CONFIGURATION_RECORD_ID }));
        }
        return Inheritance.cast(?*PersistentInputMapping, PersistentInputMapping.instance);
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.inputPersistance = Inheritance.callStatic(InputPersistance, "create1", .{ name });
        return this;
    }
    

    pub fn getTotalMapped(self: *Self) i32 {
        return Inheritance.receiverOf(Inheritance.receiverOf(self.getInputMapping().?, "getHashtable").getHashtable().?, "size").size();
    }
    

    pub fn isDefaultNew(self: *Self) bool {
        _ = self;
        return false;
    }
    

    pub fn getDefault(self: *Self) ?*InputToGameKeyMapping {
        _ = self;
        return Inheritance.upcast(?*InputToGameKeyMapping, InputToGameKeyMapping.getNullInstance());
    }
    

    // throws Exception
    pub fn setDefault(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = Inheritance.receiverOf(self.getInputMapping().?, "removeAll").removeAll();
        _ = Inheritance.call(self.getInputMapping().?, "addMapping", .{ self.getDefault() });
        _ = Inheritance.call(self, "save", .{ abeClientInformation });
    }
    

    // throws Exception
    pub fn update(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = Inheritance.call(self.inputPersistance.?, "deleteAll", .{ abeClientInformation });
        _ = Inheritance.call(self, "save", .{ abeClientInformation });
    }
    

    // throws Exception
    pub fn save(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = Inheritance.call(self.inputPersistance.?, "save", .{ abeClientInformation, Inheritance.receiverOf(self.getInputMapping().?, "getHashtable").getHashtable() });
        _ = Inheritance.call(self.inputMappingEvent.?, "setInputToGameKeyMapping", .{ self.getInputMapping() });
        if (self.getInputMappingEventListenerInterface() != null) {
            _ = Inheritance.call(self.getInputMappingEventListenerInterface().?, "onInputMappingEvent", .{ self.inputMappingEvent });
        }
    }
    

    // throws Exception
    pub fn init(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, self.commonStrings.?.INIT });
        { // try
            _ = Inheritance.call(self.inputPersistance.?, "loadAll", .{ abeClientInformation });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.INIT, e });
//             _ = Inheritance.call(self.inputPersistance.?, "deleteRecoreStore", .{ abeClientInformation });
//             _ = Inheritance.call(self, "setDefault", .{ abeClientInformation });
//             _ = Inheritance.call(self.inputPersistance.?, "loadAll", .{ abeClientInformation });
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self.inputPersistance.?, "getList").getList());
        var totalMappedTo: i32 = 0;
        const size: i32 = list.?.size();
        var hashtable: ?*ABHashtable = null;
        var enumeration: ?*Enumeration = null;
        var mappedToInput: ?*Input = null;
        var gameActionInput: ?*Input = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            hashtable = Inheritance.cast(?*ABHashtable, list.?.objectArray[@intCast(index)]);
            enumeration = Inheritance.upcast(@TypeOf(enumeration), Inheritance.receiver(hashtable.?, "keys").keys());
            while (Inheritance.call(self.enumerationUtil.?, "hasMoreElements", .{ enumeration })) {
                mappedToInput = Inheritance.cast(?*Input, Inheritance.call(self.enumerationUtil.?, "nextElement", .{ enumeration }));
                gameActionInput = Inheritance.cast(?*Input, Inheritance.call(hashtable.?, "get", .{ mappedToInput }));
                totalMappedTo += 1;
                _ = Inheritance.call(self.getInputMapping().?, "add", .{ gameActionInput, mappedToInput });
            }
            }
        }
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("End - Total Loaded Keys Mapped: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.getTotalMapped() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" to: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ totalMappedTo });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, self.commonStrings.?.INIT });
    }
    

    pub fn setInputMappingEventListenerInterface(self: *Self, inputMappingEventListenerInterface: ?*InputMappingEventListenerInterface) void {
        self.inputMappingEventListenerInterface = inputMappingEventListenerInterface;
    }
    

    pub fn getInputMappingEventListenerInterface(self: *Self) ?*InputMappingEventListenerInterface {
        return self.inputMappingEventListenerInterface;
    }
    

    pub fn getInputMapping(self: *Self) ?*InputToGameKeyMapping {
        return self.inputMapping;
    }
    

    // throws Exception
    pub fn isDelete(self: *Self, input: ?*Input) bool {
        _ = input;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    // throws Exception
    pub fn isSystemInput(self: *Self, input: ?*Input) bool {
        _ = input;
        std.debug.panic("{any}", .{exception: { _ = self.commonStrings.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
};

