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
// package org.allbinary.game.score

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
// const RecordStoreException = @import("javax/microedition/rms/RecordStoreException.zig").RecordStoreException;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const NullRecordComparator = @import("org/allbinary/game/configuration/persistance/NullRecordComparator.zig").NullRecordComparator;
const NullRecordFilter = @import("org/allbinary/game/configuration/persistance/NullRecordFilter.zig").NullRecordFilter;
const NullRecordStore = @import("org/allbinary/game/configuration/persistance/NullRecordStore.zig").NullRecordStore;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const ExceptionUtil = @import("org/allbinary/logic/java/exception/ExceptionUtil.zig").ExceptionUtil;
const SmallIntegerSingletonFactory = @import("org/allbinary/logic/math/SmallIntegerSingletonFactory.zig").SmallIntegerSingletonFactory;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const PlatformRecordIdUtil = @import("org/allbinary/persistance/PlatformRecordIdUtil.zig").PlatformRecordIdUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const HighScoreNamePersistanceSingleton = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.HighScoreNamePersistanceSingleton";
    logUtil: ?*LogUtil = null,
    tsUtil: ?*TsUtil = null,
    commonStrings: ?*CommonStrings = null,
    platformRecordIdUtil: ?*PlatformRecordIdUtil = null,
    RECORD_ID: ?*String = null,
    name: ?*String = null,
    nameBasicArrayList: ?*BasicArrayList = null,
    var SINGLETON: ?*HighScoreNamePersistanceSingleton = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        SINGLETON = HighScoreNamePersistanceSingleton.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.platformRecordIdUtil = Inheritance.upcast(?*PlatformRecordIdUtil, PlatformRecordIdUtil.getInstance());
        this.RECORD_ID = String.literal("_SN");
        this.name = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.nameBasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*HighScoreNamePersistanceSingleton {
        return Inheritance.upcast(?*HighScoreNamePersistanceSingleton, HighScoreNamePersistanceSingleton.SINGLETON);
    }
    

    pub fn clear(self: *Self) void {
        self.name = Inheritance.upcast(@TypeOf(self.name), StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    // throws Exception
    pub fn deleteAll(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo) void {
        const size: i32 = self.nameBasicArrayList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const integer: ?*Integer = Inheritance.cast(?*Integer, self.nameBasicArrayList.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(self, "delete", .{ abeClientInformation, gameInfo, integer.?.intValue() });
            }
        }
        _ = self.clear();
    }
    

    pub fn getRecordId(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self.platformRecordIdUtil.?, "getRecordId", .{ abeClientInformation, self.RECORD_ID }));
    }
    

    // throws Exception
    pub fn delete(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo, deleteId: i32) void {
        _ = gameInfo;
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Deleting: ") }).?, "appendint", .{ deleteId }))), self, self.commonStrings.?.delete });
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
            _ = Inheritance.call(recordStore.?, "deleteRecord", .{ deleteId });
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        { // finally
            if (recordStore != null) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Closing RecordStore"), self, self.commonStrings.?.delete });
                _ = recordStore.?.closeRecordStore();
            }
        }
    }
    

    pub fn getIds(self: *Self) ?*BasicArrayList {
        return self.nameBasicArrayList;
    }
    

    pub fn load(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo) ?*String {
        _ = gameInfo;
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            if (Object.same(self.name, StringUtil.getInstance().?.EMPTY_STRING)) {
                const LOADING_ID: ?*String = String.literal("Loading id: ");
                recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
                const recordEnum: ?*RecordEnumeration = Inheritance.upcast(?*RecordEnumeration, Inheritance.call(recordStore.?, "enumerateRecords", .{ NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true }));
                const smallIntegerSingletonFactory: ?*SmallIntegerSingletonFactory = Inheritance.upcast(?*SmallIntegerSingletonFactory, SmallIntegerSingletonFactory.getInstance());
                var recordAsBytes: []i8 = &.{};
                var byteArrayInputStream: ?*ByteArrayInputStream = null;
                var inputStream: ?*DataInputStream = null;
                while (recordEnum.?.hasNextElement()) {
                    const id: i32 = recordEnum.?.nextRecordId();
                    _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ LOADING_ID }).?, "appendint", .{ id }))), self, self.commonStrings.?.LOAD });
                    recordAsBytes = Inheritance.upcast(@TypeOf(recordAsBytes), Inheritance.call(self.tsUtil.?, "getRecord", .{ recordStore, id }));
                    byteArrayInputStream = Inheritance.callStatic(ByteArrayInputStream, "create1", .{ recordAsBytes });
                    inputStream = Inheritance.callStatic(DataInputStream, "create1", .{ byteArrayInputStream });
                    while (inputStream.?.available() > 0) {
                        self.name = Inheritance.upcast(@TypeOf(self.name), inputStream.?.readUTF());
                    }
                    _ = Inheritance.call(self.nameBasicArrayList.?, "add", .{ Inheritance.call(smallIntegerSingletonFactory.?, "getAt", .{ id }) });
                }
            }
        }
        // catch (Exception e):
//             _ = Inheritance.call(self, "save", .{ abeClientInformation, gameInfo, self.name });
//             _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.commonStrings.?.EXCEPTION_LABEL }).?, "append", .{ Inheritance.call(ExceptionUtil.getInstance().?, "getStackTrace", .{ e }) }))), self, self.commonStrings.?.LOAD });
        { // finally
            { // try
                if (recordStore != null) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Closing RecordStore"), self, self.commonStrings.?.LOAD });
                    _ = recordStore.?.closeRecordStore();
                }
            }
            // catch (RecordStoreException e):
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.LOAD, e });
        }
        return self.name;
    }
    

    pub fn save(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo, name: ?*String) void {
        _ = gameInfo;
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Saving: ") }).?, "append", .{ name }))), self, self.commonStrings.?.SAVE });
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
            const byteArrayOutputStream: ?*ByteArrayOutputStream = ByteArrayOutputStream.create();
            const outputStream: ?*DataOutputStream = Inheritance.callStatic(DataOutputStream, "create1", .{ byteArrayOutputStream });
            _ = Inheritance.call(outputStream.?, "writeUTF", .{ name });
            const savedGameBytes: []i8 = byteArrayOutputStream.?.toByteArray();
            _ = Inheritance.call(recordStore.?, "addRecord", .{ savedGameBytes, 0, @as(i32, @intCast(savedGameBytes.len)) });
            self.name = name;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.SAVE, e });
        { // finally
            { // try
                if (recordStore != null) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Closing RecordStore"), self, self.commonStrings.?.SAVE });
                    _ = recordStore.?.closeRecordStore();
                }
            }
            // catch (RecordStoreException e):
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.SAVE, e });
        }
    }
};

