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
// const DataInputStream = @import("java/io/DataInputStream.zig").DataInputStream;
// const EOFException = @import("java/io/EOFException.zig").EOFException;
// const IOException = @import("java/io/IOException.zig").IOException;
// const RecordComparator = @import("javax/microedition/rms/RecordComparator.zig").RecordComparator;
// const RecordEnumeration = @import("javax/microedition/rms/RecordEnumeration.zig").RecordEnumeration;
// const RecordStore = @import("javax/microedition/rms/RecordStore.zig").RecordStore;
// const RecordStoreException = @import("javax/microedition/rms/RecordStoreException.zig").RecordStoreException;
// const RecordStoreNotFoundException = @import("javax/microedition/rms/RecordStoreNotFoundException.zig").RecordStoreNotFoundException;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const GameInfo = @import("org/allbinary/game/GameInfo.zig").GameInfo;
const NullRecordComparator = @import("org/allbinary/game/configuration/persistance/NullRecordComparator.zig").NullRecordComparator;
const NullRecordFilter = @import("org/allbinary/game/configuration/persistance/NullRecordFilter.zig").NullRecordFilter;
const NullRecordStore = @import("org/allbinary/game/configuration/persistance/NullRecordStore.zig").NullRecordStore;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const PlatformRecordIdUtil = @import("org/allbinary/persistance/PlatformRecordIdUtil.zig").PlatformRecordIdUtil;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const HighScore = @import("org/allbinary/game/score/HighScore.zig").HighScore;
const HighScores = @import("org/allbinary/game/score/HighScores.zig").HighScores;
const ScoreComparator = @import("org/allbinary/game/score/ScoreComparator.zig").ScoreComparator;

pub const RecordStoreHighScores = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.score.RecordStoreHighScores";
    base: HighScores = undefined,
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    platformRecordIdUtil: ?*PlatformRecordIdUtil = null,
    tsUtil: ?*TsUtil = null,
    RECORD_ID: ?*String = null,
    MAXHIGHSCORES: i32 = 0,
    gameInfo: ?*GameInfo = null,
    abeClientInformation: ?*AbeClientInformationInterface = null,
    recordComparatorInterface: ?*RecordComparator = null,
    var hashTable: ?*ABHashtable = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        hashTable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.platformRecordIdUtil = Inheritance.upcast(?*PlatformRecordIdUtil, PlatformRecordIdUtil.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.RECORD_ID = String.literal("_HS");
        this.MAXHIGHSCORES = 100;
        
        
        
    }
    

    pub fn create6(abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo, name: ?*String, heading: ?*String, columnTwoHeading: ?*String, recordComparatorInterface: ?*RecordComparator) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(HighScores, "create3", .{ name, heading, columnTwoHeading }).*;
        this.initFields();
        this.abeClientInformation = abeClientInformation;
        this.gameInfo = gameInfo;
        this.recordComparatorInterface = recordComparatorInterface;
        _ = this.load();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getInstance(abeClientInformation: ?*AbeClientInformationInterface, gameInfo: ?*GameInfo, highScoreName: ?*String, heading: ?*String, columnTwoHeading: ?*String, recordComparatorInterface: ?*RecordComparator) ?*HighScores {
        // Java synchronized method
        const javaMonitor = Object.classMonitor(Self).enter();
        defer javaMonitor.exit();
        const highScoresCanBeNull: ?Object = Inheritance.upcast(?Object, Inheritance.call(RecordStoreHighScores.hashTable.?, "get", .{ Inheritance.cast(?Object, highScoreName) }));
        if (highScoresCanBeNull == null) {
            const highScores: ?*HighScores = Inheritance.upcast(?*HighScores, Inheritance.callStatic(RecordStoreHighScores, "create6", .{ abeClientInformation, gameInfo, highScoreName, heading, columnTwoHeading, recordComparatorInterface }));
            _ = Inheritance.call(RecordStoreHighScores.hashTable.?, "put", .{ highScores.?.getName(), highScores });
            return highScores;
        }
        return Inheritance.cast(?*HighScores, highScoresCanBeNull);
    }
    

    pub fn getRecordId(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self.platformRecordIdUtil.?, "getRecordId", .{ abeClientInformation, Object.toString(Object.of(Inheritance.call(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ CommonSeps.getInstance().?.UNDERSCORE }).?, "append", .{ Inheritance.receiver(self, "getName").getName() }).?, "append", .{ self.RECORD_ID }))) }));
    }
    

    pub fn addHighScore(self: *Self, newHighScore: ?*HighScore) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Adding HighScore: ") }).?, "appendlong", .{ @as(i64, @intCast(newHighScore.?.getScore())) }))), self, self.commonStrings.?.ADD });
            if (self.isTooManyHighScores()) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Removing Lowest Score"), self, self.commonStrings.?.ADD });
                _ = self.removeLowestHighScore();
            }
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ self.abeClientInformation }), true }));
            const highScoreBytes: []i8 = newHighScore.?.getAsBytes();
            const recordId: i32 = Inheritance.call(recordStore.?, "addRecord", .{ highScoreBytes, 0, @as(i32, @intCast(highScoreBytes.len)) }); _ = recordId;
            _ = self.load();
        }
        // catch (RecordStoreException e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.ADD, e });
        // catch (IOException e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.ADD, e });
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.ADD, e });
        { // finally
            { // try
                if (recordStore != null) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Closing RecordStore"), self, self.commonStrings.?.ADD });
                    _ = recordStore.?.closeRecordStore();
                }
            }
            // catch (RecordStoreException e):
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.ADD, e });
        }
    }
    

    pub fn removeLowestHighScore(self: *Self) void {
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ self.abeClientInformation }), true }));
            const recordEnum: ?*RecordEnumeration = Inheritance.upcast(?*RecordEnumeration, Inheritance.call(recordStore.?, "enumerateRecords", .{ NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true }));
            const scoreComparator: ?*ScoreComparator = Inheritance.upcast(?*ScoreComparator, (Inheritance.cast(?*ScoreComparator, self.recordComparatorInterface)));
            var bestHighScore: ?*HighScore = Inheritance.callStatic(HighScore, "create4", .{ -1, String.literal("none"), GameInfo.NONE, scoreComparator.?.getBestScore() });
            var recordAsBytes: []i8 = &.{};
            var byteArrayInputStream: ?*ByteArrayInputStream = null;
            var inputStream: ?*DataInputStream = null;
            while (recordEnum.?.hasNextElement()) {
                const id: i32 = recordEnum.?.nextRecordId();
                recordAsBytes = Inheritance.upcast(@TypeOf(recordAsBytes), Inheritance.call(self.tsUtil.?, "getRecord", .{ recordStore, id }));
                if (recordAsBytes != null) {
                    byteArrayInputStream = Inheritance.callStatic(ByteArrayInputStream, "create1", .{ recordAsBytes });
                    inputStream = Inheritance.callStatic(DataInputStream, "create1", .{ byteArrayInputStream });
                    const name: ?*String = Inheritance.upcast(?*String, inputStream.?.readUTF());
                    const nextScore: i64 = inputStream.?.readLong();
                    const nextCurrentHighScore: ?*HighScore = Inheritance.callStatic(HighScore, "create4", .{ id, name, GameInfo.NONE, nextScore });
                    if (Object.same(Inheritance.call(self.recordComparatorInterface.?, "compare", .{ nextCurrentHighScore.?.getAsBytes(), bestHighScore.?.getAsBytes() }), RecordComparator.FOLLOWS)) {
                        bestHighScore = nextCurrentHighScore;
                    }
                }
            }
            if (bestHighScore.?.getId() != -1) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("Removing Lowest HighScore: ") }).?, "appendlong", .{ @as(i64, @intCast(bestHighScore.?.getScore())) }))), self, self.commonStrings.?.LOAD });
                _ = Inheritance.call(recordStore.?, "deleteRecord", .{ bestHighScore.?.getId() });
            }
        }
        // catch (RecordStoreException e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("removeLowestHighScore"), e });
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("removeLowestHighScore"), e });
        { // finally
            { // try
                if (recordStore != null) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("Closing RecordStore"), self, String.literal("removeLowestHighScore") });
                    _ = recordStore.?.closeRecordStore();
                }
            }
            // catch (RecordStoreException e):
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("removeLowestHighScore"), e });
        }
    }
    

    pub fn load(self: *Self) void {
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ self.abeClientInformation }), true }));
            _ = Inheritance.call(self, "setList", .{ BasicArrayListD.create() });
            const recordEnum: ?*RecordEnumeration = Inheritance.upcast(?*RecordEnumeration, Inheritance.call(recordStore.?, "enumerateRecords", .{ NullRecordFilter.NULL_RECORD_FILTER, NullRecordComparator.NULL_RECORD_COMPARATOR, true }));
            var recordAsBytes: []i8 = &.{};
            var byteArrayInputStream: ?*ByteArrayInputStream = null;
            var inputStream: ?*DataInputStream = null;
            while (recordEnum.?.hasNextElement()) {
                const id: i32 = recordEnum.?.nextRecordId();
                recordAsBytes = Inheritance.upcast(@TypeOf(recordAsBytes), Inheritance.call(self.tsUtil.?, "getRecord", .{ recordStore, id }));
                if (recordAsBytes != null) {
                    byteArrayInputStream = Inheritance.callStatic(ByteArrayInputStream, "create1", .{ recordAsBytes });
                    inputStream = Inheritance.callStatic(DataInputStream, "create1", .{ byteArrayInputStream });
                    { // try
                        const name: ?*String = Inheritance.upcast(?*String, inputStream.?.readUTF());
                        const score: i64 = inputStream.?.readLong();
                        const newHighScore: ?*HighScore = Inheritance.callStatic(HighScore, "create4", .{ id, name, GameInfo.NONE, score });
                        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getList").getList());
                        const size: i32 = list.?.size();
                        var lastIndex: i32 = size;
                        {
                            var index: i32 = 0;
                            while (index < size) : (index += 1) {
                            const highScore: ?*HighScore = Inheritance.cast(?*HighScore, list.?.objectArray[@intCast(index)]);
                            if (Object.same(Inheritance.call(self.recordComparatorInterface.?, "compare", .{ newHighScore.?.getAsBytes(), highScore.?.getAsBytes() }), RecordComparator.PRECEDES)) {
                                lastIndex = index;
                                break;
                            }
                            }
                        }
                        _ = Inheritance.call(list.?, "addAt", .{ lastIndex, newHighScore });
                    }
                    // catch (EOFException e):
//                         _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("EOF"), self, self.commonStrings.?.LOAD, e });
//                         std.debug.panic("{any}", .{e});
                }
            }
        }
        // catch (RecordStoreNotFoundException e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("No High Scores"), self, self.commonStrings.?.LOAD, e });
        // catch (RecordStoreException e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.UNKNOWN, self, self.commonStrings.?.LOAD, e });
        // catch (IOException e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.UNKNOWN, self, self.commonStrings.?.LOAD, e });
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.UNKNOWN, self, self.commonStrings.?.LOAD, e });
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
    }
    

    pub fn isTooManyHighScores(self: *Self) bool {
        if (Inheritance.receiver(self, "getList").getList() != null and Inheritance.receiverOf(Inheritance.receiver(self, "getList").getList().?, "size").size() < self.MAXHIGHSCORES) {
            return false;
        } else {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ String.literal("HighScores RecordStore Max Reached: ") }).?, "appendint", .{ self.MAXHIGHSCORES }))), self, String.literal("isTooManyHighScores") });
            return true;
        }
    }
    

    // throws Exception
    pub fn isBestScore(self: *Self, newHighScore: ?*HighScore) bool {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            if (!self.isTooManyHighScores()) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Slot Available for a High Score"), self, String.literal("isBestScore") });
                return true;
            } else {
                const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getList").getList());
                const size: i32 = list.?.size();
                {
                    var index: i32 = 0;
                    while (index < size) : (index += 1) {
                    const highScore: ?*HighScore = Inheritance.cast(?*HighScore, list.?.objectArray[@intCast(index)]);
                    if (Object.same(Inheritance.call(self.recordComparatorInterface.?, "compare", .{ newHighScore.?.getAsBytes(), highScore.?.getAsBytes() }), RecordComparator.FOLLOWS)) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Obtained a High Score"), self, String.literal("isBestScore") });
                        return true;
                    }
                    }
                }
            }
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Not a High Score"), self, String.literal("isBestScore") });
            return false;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, self.commonStrings.?.ADD, e });
//             std.debug.panic("{any}", .{e});
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.base.toString() });
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(self, "getList").getList());
        const size: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const highScore: ?*HighScore = Inheritance.cast(?*HighScore, list.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(stringBuffer.?, "append", .{ highScore.?.getScoreString() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonSeps.getInstance().?.COMMA_SEP });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

