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
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
const ByteArrayOutputStream = @import("java/io/ByteArrayOutputStream.zig").ByteArrayOutputStream;
// const DataInputStream = @import("java/io/DataInputStream.zig").DataInputStream;
// const DataOutputStream = @import("java/io/DataOutputStream.zig").DataOutputStream;
// const RecordEnumeration = @import("javax/microedition/rms/RecordEnumeration.zig").RecordEnumeration;
// const RecordStore = @import("javax/microedition/rms/RecordStore.zig").RecordStore;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const BasicPersitance = @import("org/allbinary/game/configuration/persistance/BasicPersitance.zig").BasicPersitance;
const NullRecordComparator = @import("org/allbinary/game/configuration/persistance/NullRecordComparator.zig").NullRecordComparator;
const NullRecordFilter = @import("org/allbinary/game/configuration/persistance/NullRecordFilter.zig").NullRecordFilter;
const NullRecordStore = @import("org/allbinary/game/configuration/persistance/NullRecordStore.zig").NullRecordStore;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const GameKeyMappingFactory = @import("org/allbinary/game/input/GameKeyMappingFactory.zig").GameKeyMappingFactory;
const Input = @import("org/allbinary/game/input/Input.zig").Input;
const InputFactory = @import("org/allbinary/game/input/InputFactory.zig").InputFactory;
const Integer = @import("java/lang/Integer.zig").Integer;

//GameInputPersistanceLibrary
pub const InputPersistance = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.InputPersistance";
    base: BasicPersitance = undefined,
    tsUtil: ?*TsUtil = null,
    hashtableUtil: ?*HashtableUtil = null,

    fn initFields(this: *Self) void {
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
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
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
            const recordEnum: ?*RecordEnumeration = Inheritance.upcast(?*RecordEnumeration, Inheritance.call(recordStore.?, "enumerateRecords", .{ NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true }));
            var gameActionInputId: i64 = 0;
            var inputId: i64 = 0;
            var gameActionInput: ?*Input = null;
            var input: ?*Input = null;
            var hashtable: ?*ABHashtable = null;
            const gameKeyFactory: ?*GameKeyMappingFactory = Inheritance.upcast(?*GameKeyMappingFactory, GameKeyMappingFactory.getInstance());
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const inputFactory: ?*InputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
            const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
            const stdUtil: ?*StdUtil = Inheritance.upcast(?*StdUtil, StdUtil.getInstance());
            var recordAsBytes: []i8 = &.{};
            var byteArrayInputStream: ?*ByteArrayInputStream = null;
            var inputStream: ?*DataInputStream = null;
            while (recordEnum.?.hasNextElement()) {
                const id: i32 = recordEnum.?.nextRecordId();
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.LOADING_ID }).?, "appendint", .{ id }))), self, Inheritance.fieldPointer(self, "persistanceStrings").*.?.LOAD_ALL });
                recordAsBytes = Inheritance.upcast(@TypeOf(recordAsBytes), Inheritance.call(self.tsUtil.?, "getRecord", .{ recordStore, id }));
                if (recordAsBytes != null) {
                    byteArrayInputStream = Inheritance.callStatic(ByteArrayInputStream, "create1", .{ recordAsBytes });
                    inputStream = Inheritance.callStatic(DataInputStream, "create1", .{ byteArrayInputStream });
                    hashtable = Inheritance.upcast(@TypeOf(hashtable), stdUtil.?.createHashtable());
                    var value: i32 = 0;
                    while (inputStream.?.available() > 0) {
                        const gameActionInputIdAsString: ?*String = Inheritance.upcast(?*String, inputStream.?.readUTF());
                        value = (std.fmt.parseInt(i32, gameActionInputIdAsString.?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
                        gameActionInputId = @as(i64, @intCast(value));
                        _ = inputStream.?.readUTF();
                        value = (std.fmt.parseInt(i32, inputStream.?.readUTF().?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
                        inputId = @as(i64, @intCast(value));
                        gameActionInput = Inheritance.upcast(@TypeOf(gameActionInput), Inheritance.call(gameKeyFactory.?, "getGameKey", .{ @as(i32, @intCast(gameActionInputId)) }));
                        input = Inheritance.upcast(@TypeOf(input), Inheritance.call(inputFactory.?, "getInstanceById", .{ @as(i32, @intCast(inputId)) }));
                        if (Object.same(input, inputFactory.?.NO_INPUT) or gameActionInput == null) {
                            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                            if (Object.same(input, inputFactory.?.NO_INPUT)) {
                                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.ERROR_LOADING_ID });
                                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ inputId });
                                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.GAME_ACTION_INPUT });
                                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ gameActionInputId });
                                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "persistanceStrings").*.?.LOAD_ALL });
                            }
                            if (gameActionInput == null) {
                                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.ERROR_LOADING });
                                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ gameActionInputId });
                                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.ID });
                                _ = Inheritance.call(stringBuffer.?, "appendlong", .{ inputId });
                                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self, Inheritance.fieldPointer(self, "persistanceStrings").*.?.LOAD_ALL });
                            }
                        } else {
                        }
                        _ = Inheritance.call(hashtable.?, "put", .{ input, gameActionInput });
                    }
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "valueList").*.?, "add", .{ hashtable });
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "idList").*.?, "add", .{ Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ id }) });
                } else {
                }
            }
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        { // finally
            if (recordStore != null) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.CLOSING_RECORDSTORE, self, Inheritance.fieldPointer(self, "persistanceStrings").*.?.LOAD_ALL });
                _ = recordStore.?.closeRecordStore();
            }
        }
    }
    

    // throws Exception
    pub fn save(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, hashtable: ?*ABHashtable) void {
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.SAVING }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ hashtable }) }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.SAVE });
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
            const byteArrayOutputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            const outputStream: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ byteArrayOutputStream });
            var gameActionInput: ?*Input = null;
            var list: ?*BasicArrayList = null;
            var input: ?*Input = null;
            var savedGameBytes: []i8 = &.{};
            const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
            const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
            const inputObjectArray: []?Object = Inheritance.call(self.hashtableUtil.?, "getKeysAsArray", .{ hashtable });
            const size: i32 = @as(i32, @intCast(inputObjectArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                gameActionInput = Inheritance.cast(?*Input, inputObjectArray[@intCast(index)]);
                list = Inheritance.cast(?*BasicArrayList, Inheritance.call(hashtable.?, "get", .{ Inheritance.cast(?Object, inputObjectArray[@intCast(index)]) }));
                {
                    var index2: i32 = 0;
                    while (index2 < list.?.size()) : (index2 += 1) {
                    const gameActionInputIdAsString: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ gameActionInput.?.getId() }))));
                    _ = Inheritance.call(outputStream.?, "writeUTF", .{ gameActionInputIdAsString });
                    _ = Inheritance.call(outputStream.?, "writeUTF", .{ commonSeps.?.EQUALS });
                    input = Inheritance.cast(?*Input, list.?.objectArray[@intCast(index2)]);
                    const inputIdAsString: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ input.?.getId() }))));
                    _ = Inheritance.call(outputStream.?, "writeUTF", .{ inputIdAsString });
                    }
                }
                }
            }
            savedGameBytes = Inheritance.upcast(@TypeOf(savedGameBytes), byteArrayOutputStream.?.toByteArray());
            _ = Inheritance.call(recordStore.?, "addRecord", .{ savedGameBytes, 0, @as(i32, @intCast(savedGameBytes.len)) });
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        { // finally
            if (recordStore != null) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.CLOSING_RECORDSTORE, self, Inheritance.fieldPointer(self, "commonStrings").*.?.SAVE });
                _ = recordStore.?.closeRecordStore();
            }
        }
    }
};

