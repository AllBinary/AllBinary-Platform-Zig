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
// package org.allbinary.game.configuration.persistance

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
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const HashtableUtil = @import("org/allbinary/util/HashtableUtil.zig").HashtableUtil;
const BasicPersitance = @import("org/allbinary/game/configuration/persistance/BasicPersitance.zig").BasicPersitance;
const NullRecordComparator = @import("org/allbinary/game/configuration/persistance/NullRecordComparator.zig").NullRecordComparator;
const NullRecordFilter = @import("org/allbinary/game/configuration/persistance/NullRecordFilter.zig").NullRecordFilter;
const NullRecordStore = @import("org/allbinary/game/configuration/persistance/NullRecordStore.zig").NullRecordStore;

pub const KeyValuePersistance = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.persistance.KeyValuePersistance";
    base: BasicPersitance = undefined,
    tsUtil: ?*TsUtil = null,

    fn initFields(this: *Self) void {
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
    }
    

    pub fn create1(recordId: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicPersitance, "create1", .{ recordId }).*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn loadAll(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = Inheritance.call(self, "loadAllSize", .{ abeClientInformation, 1 });
    }
    

    // throws Exception
    pub fn loadAllSize(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, size: i32) void {
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
            const recordEnum: ?*RecordEnumeration = Inheritance.upcast(?*RecordEnumeration, Inheritance.call(recordStore.?, "enumerateRecords", .{ NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true }));
            var hashtable: ?*ABHashtable = null;
            var name: ?*String = null;
            var value: ?*String = null;
            const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
            const stringBuffer: ?*StringMaker = StringMaker.create();
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
                    hashtable = ABHashtable.create();
                    {
                        var index: i32 = 0;
                        while (index < size) : (index += 1) {
                        name = Inheritance.upcast(@TypeOf(name), inputStream.?.readUTF());
                        _ = inputStream.?.readUTF();
                        value = Inheritance.upcast(@TypeOf(value), inputStream.?.readUTF());
                        _ = Inheritance.call(hashtable.?, "put", .{ name, value });
                        }
                    }
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "valueList").*.?, "add", .{ hashtable });
                    _ = Inheritance.call(Inheritance.fieldPointer(self, "idList").*.?, "add", .{ Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ id }) });
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
            _ = Inheritance.call(Inheritance.fieldPointer(self, "logUtil").*.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ Inheritance.fieldPointer(self, "persistanceStrings").*.?.SAVING }).?, "append", .{ Inheritance.call(StringUtil.getInstance().?, "toString", .{ hashtable }) }))), self, Inheritance.fieldPointer(self, "commonStrings").*.?.SAVE });
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
            const byteArrayOutputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            const outputStream: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ byteArrayOutputStream });
            var value: ?*String = null;
            const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
            const objectArray: []?Object = Inheritance.call(HashtableUtil.getInstance().?, "getKeysAsArray", .{ hashtable });
            var anyType: ?Object = null;
            const size: i32 = @as(i32, @intCast(objectArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(outputStream.?, "writeUTF", .{ Inheritance.cast(?*String, objectArray[@intCast(index)]) });
                _ = Inheritance.call(outputStream.?, "writeUTF", .{ commonSeps.?.EQUALS });
                anyType = Inheritance.cast(?Object, objectArray[@intCast(index)]);
                value = Inheritance.cast(?*String, Inheritance.call(hashtable.?, "get", .{ anyType }));
                _ = Inheritance.call(outputStream.?, "writeUTF", .{ value });
                }
            }
            const tsUtil: ?*TsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
            const savedGameBytes: []i8 = Inheritance.call(tsUtil.?, "getByteArray", .{ Object.toString(Object.of(byteArrayOutputStream)) });
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
    

    pub fn get(self: *Self, index: i32) ?*ABHashtable {
        const hashtable: ?*ABHashtable = Inheritance.cast(?*ABHashtable, Inheritance.fieldPointer(self, "valueList").*.?.objectArray[@intCast(index)]);
        return hashtable;
    }
};

