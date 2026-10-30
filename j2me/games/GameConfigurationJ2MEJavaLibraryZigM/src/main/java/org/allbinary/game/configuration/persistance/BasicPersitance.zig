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
// const RecordStore = @import("javax/microedition/rms/RecordStore.zig").RecordStore;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const AbeClientInformationInterface = @import("org/allbinary/logic/system/security/licensing/AbeClientInformationInterface.zig").AbeClientInformationInterface;
const PlatformRecordIdUtil = @import("org/allbinary/persistance/PlatformRecordIdUtil.zig").PlatformRecordIdUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const NullRecordStore = @import("org/allbinary/game/configuration/persistance/NullRecordStore.zig").NullRecordStore;
const PersistanceStrings = @import("org/allbinary/game/configuration/persistance/PersistanceStrings.zig").PersistanceStrings;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const BasicPersitance = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.configuration.persistance.BasicPersitance";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    persistanceStrings: ?*PersistanceStrings = null,
    platformRecordIdUtil: ?*PlatformRecordIdUtil = null,
    recordId: ?*String = null,
    valueList: ?*BasicArrayList = null,
    idList: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.persistanceStrings = Inheritance.upcast(?*PersistanceStrings, PersistanceStrings.getInstance());
        this.platformRecordIdUtil = Inheritance.upcast(?*PlatformRecordIdUtil, PlatformRecordIdUtil.getInstance());
        
        this.valueList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        this.idList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
    }
    

    pub fn create1(recordId: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.recordId = recordId;
        return this;
    }
    

    // throws Exception
    pub fn deleteRecoreStore(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        _ = Inheritance.callStatic(RecordStore, "deleteRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }) });
    }
    

    // throws Exception
    pub fn deleteAll(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) void {
        const size: i32 = self.idList.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const integer: ?*Integer = Inheritance.cast(?*Integer, self.idList.?.objectArray[@intCast(index)]);
            _ = Inheritance.call(self, "delete", .{ abeClientInformation, integer.?.intValue() });
            }
        }
        _ = self.clear();
    }
    

    // throws Exception
    pub fn delete(self: *Self, abeClientInformation: ?*AbeClientInformationInterface, deleteId: i32) void {
        var recordStore: ?*RecordStore = Inheritance.upcast(?*RecordStore, NullRecordStore.NULL_RECORD_STORE);
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "append", .{ self.persistanceStrings.?.DELETING_WITH_ID }).?, "appendint", .{ deleteId }))), self, self.commonStrings.?.delete });
            recordStore = Inheritance.upcast(@TypeOf(recordStore), Inheritance.callStatic(RecordStore, "openRecordStore", .{ Inheritance.call(self, "getRecordId", .{ abeClientInformation }), true }));
            _ = Inheritance.call(recordStore.?, "deleteRecord", .{ deleteId });
        }
        // catch (Exception e):
//             std.debug.panic("{any}", .{e});
        { // finally
            if (recordStore != null) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ self.persistanceStrings.?.CLOSING_RECORDSTORE, self, self.commonStrings.?.delete });
                _ = recordStore.?.closeRecordStore();
            }
        }
    }
    

    pub fn getRecordId(self: *Self, abeClientInformation: ?*AbeClientInformationInterface) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self.platformRecordIdUtil.?, "getRecordId", .{ abeClientInformation, self.recordId }));
    }
    

    pub fn getList(self: *Self) ?*BasicArrayList {
        return self.valueList;
    }
    

    pub fn getIds(self: *Self) ?*BasicArrayList {
        return self.idList;
    }
    

    pub fn clear(self: *Self) void {
        _ = self.valueList.?.clear();
        _ = self.idList.?.clear();
    }
};

