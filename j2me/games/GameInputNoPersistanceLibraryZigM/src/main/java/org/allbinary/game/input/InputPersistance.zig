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
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const RecordEnumeration = @import("javax/microedition/rms/RecordEnumeration.zig").RecordEnumeration;
// const RecordStore = @import("javax/microedition/rms/RecordStore.zig").RecordStore;
const BasicPersitance = @import("org/allbinary/game/configuration/persistance/BasicPersitance.zig").BasicPersitance;
const NullRecordComparator = @import("org/allbinary/game/configuration/persistance/NullRecordComparator.zig").NullRecordComparator;
const NullRecordFilter = @import("org/allbinary/game/configuration/persistance/NullRecordFilter.zig").NullRecordFilter;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const Input = @import("org/allbinary/game/input/Input.zig").Input;

//GameInputNoPersistanceLibrary
pub const InputPersistance = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.InputPersistance";
    base: BasicPersitance = undefined,
    hashtableUtil: ?*HashtableUtil = null,

    fn initFields(this: *Self) void {
        this.hashtableUtil = Inheritance.upcast(?*HashtableUtil, HashtableUtil.getInstance());
    }
    

    pub fn create1(name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicPersitance, "create1", .{ name }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn loadAll(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        const recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
        const recordEnum: ?*RecordEnumeration = Inheritance.upcast(?*RecordEnumeration, Inheritance.call(recordStore.?, "enumerateRecords", .{ NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true }));
        var hashtable: ?*ABHashtable = null;
        const stringBuffer: ?*StringMaker = StringMaker.create();
        const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
        var id: i32 = 0;
        while (recordEnum.?.hasNextElement()) {
            id = recordEnum.?.nextRecordId();
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.LOADING_ID }).?, "appendint", .{ id }))), self, Inheritance.fieldPointer(self, "persistanceStrings").*.?.LOAD_ALL });
            hashtable = Inheritance.upcast(@TypeOf(hashtable), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
            _ = Inheritance.call(Inheritance.fieldPointer(self, "valueList").*.?, "add", .{ hashtable });
            _ = Inheritance.call(Inheritance.fieldPointer(self, "idList").*.?, "add", .{ Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ id }) });
        }
        _ = recordStore.?.closeRecordStore();
    }
    

    // throws Exception
    pub fn save(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, hashtable: ?*ABHashtable) void {
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.NOT_SAVING }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ hashtable }) }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.SAVE });
        const recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
        var gameActionInput: ?*Input = null;
        var list: ?*BasicArrayList = null;
        var input: ?*Input = null;
        const inputObjectArray: []?Object = Inheritance.call(self.hashtableUtil.?, "getKeysAsArray", .{ hashtable });
        const size: i32 = @as(i32, @intCast(inputObjectArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            gameActionInput = Inheritance.cast(?*Input, inputObjectArray[@intCast(index)]);
            list = Inheritance.cast(?*BasicArrayList, Inheritance.call(hashtable.?, "get", .{ inputObjectArray[@intCast(index)] }));
            {
                var index2: i32 = 0;
                while (index2 < list.?.size()) : (index2 += 1) {
                input = Inheritance.cast(?*Input, Inheritance.call(list.?, "get", .{ index2 }));
                }
            }
            }
        }
        _ = recordStore.?.closeRecordStore();
    }
};

