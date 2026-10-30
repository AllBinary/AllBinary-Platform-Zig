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
// package org.allbinary.business.user.commerce.inventory.item.download

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const BasicItemData = @import("org/allbinary/business/user/commerce/inventory/item/BasicItemData.zig").BasicItemData;
const ProductIdGenerator = @import("org/allbinary/data/generator/ProductIdGenerator.zig").ProductIdGenerator;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TimeUtil = @import("org/allbinary/time/TimeUtil.zig").TimeUtil;
const DownloadItemData = @import("org/allbinary/business/user/commerce/inventory/item/download/DownloadItemData.zig").DownloadItemData;
const Long = @import("java/lang/Long.zig").Long;

pub const DownloadableItem = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.commerce.inventory.item.download.DownloadableItem";
    id: ?*String = null,
    basicItemId: ?*String = null,
    enabled: ?*String = null,
    system: ?*String = null,
    platform: ?*String = null,
    specialName: ?*String = null,
    version: ?*String = null,
    changes: ?*String = null,
    licenseFile: ?*String = null,
    file: ?*String = null,
    size: ?*Long = null,
    validTime: ?*Long = null,
    retries: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
        
        
        
        
        
        
        
        
    }
    

    pub fn create1(id: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        this.id = Inheritance.upcast(@TypeOf(this.id), Inheritance.receiver(ProductIdGenerator.create(), "getNext").getNext());
        this.basicItemId = id;
        this.enabled = Inheritance.upcast(@TypeOf(this.enabled), EntryData.getInstance().?.YES);
        this.system = String.literal("Java");
        this.platform = String.literal("Android");
        this.specialName = EMPTY_STRING;
        this.version = EMPTY_STRING;
        this.changes = EMPTY_STRING;
        this.licenseFile = EMPTY_STRING;
        this.file = EMPTY_STRING;
        this.size = Inheritance.upcast(@TypeOf(this.size), Inheritance.callStatic(Long, "valueOf", .{ 0 }));
        this.validTime = Inheritance.upcast(@TypeOf(this.validTime), Inheritance.callStatic(Long, "valueOf", .{ 0 }));
        this.retries = EMPTY_STRING;
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.id = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.ID }));
        this.basicItemId = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ BasicItemData.getInstance().?.ID }));
        this.enabled = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ EntryData.getInstance().?.ENABLE }));
        this.system = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.SYSTEM }));
        this.platform = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.PLATFORM }));
        this.specialName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.SPECIAL_NAME }));
        this.version = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.VERSION }));
        this.changes = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.CHANGES }));
        this.licenseFile = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.LICENSE_FILE }));
        this.file = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.FILE }));
        const value: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.SIZE }));
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ value })) {
            this.size = Inheritance.upcast(@TypeOf(this.size), Inheritance.callStatic(Long, "valueOf", .{ value }));
        } else {
            this.size = Inheritance.callStatic(Long, "create1", .{ 0 });
        }
        const validTime: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.VALID_TIME }));
        if (!Inheritance.call(StringValidationUtil.getInstance().?, "isEmpty", .{ validTime })) {
            this.validTime = Inheritance.upcast(@TypeOf(this.validTime), Inheritance.callStatic(Long, "valueOf", .{ validTime }));
        } else {
            const totalYears: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.VALID_TIME_YEARS }));
            const totalMonths: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.VALID_TIME_MONTHS }));
            const totalDays: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.VALID_TIME_DAYS }));
            const totalHours: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.VALID_TIME_HOURS }));
            const totalMinutes: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.VALID_TIME_MINUTES }));
            const totalSeconds: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.VALID_TIME_SECONDS }));
            const totalTime: i64 = Inheritance.call(TimeUtil.getInstance().?, "getTotalTime", .{ totalYears, totalMonths, totalDays, totalHours, totalMinutes, totalSeconds });
            this.validTime = Inheritance.callStatic(Long, "create1", .{ totalTime });
        }
        this.retries = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ DownloadItemData.RETRIES }));
        return this;
    }
    

    pub fn toVector(self: *Self) ?*BasicArrayList {
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.upcast(?*String, String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?));
        const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(values.?, "add", .{ self.getId() });
        _ = Inheritance.call(values.?, "add", .{ self.basicItemId });
        _ = Inheritance.call(values.?, "add", .{ self.enabled });
        _ = Inheritance.call(values.?, "add", .{ self.getSpecialName() });
        _ = Inheritance.call(values.?, "add", .{ self.getVersion() });
        _ = Inheritance.call(values.?, "add", .{ self.getChanges() });
        _ = Inheritance.call(values.?, "add", .{ self.getSystem() });
        _ = Inheritance.call(values.?, "add", .{ self.getPlatform() });
        _ = Inheritance.call(values.?, "add", .{ self.getLicenseFile() });
        _ = Inheritance.call(values.?, "add", .{ self.getFile() });
        _ = Inheritance.call(values.?, "add", .{ Object.toString(Object.of(self.getSize())) });
        _ = Inheritance.call(values.?, "add", .{ Object.toString(Object.of(self.getValidTime())) });
        _ = Inheritance.call(values.?, "add", .{ self.getRetries() });
        _ = Inheritance.call(values.?, "add", .{ time });
        _ = Inheritance.call(values.?, "add", .{ time });
        return values;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const values: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.ID, self.getId() });
        _ = Inheritance.call(values.?, "put", .{ BasicItemData.getInstance().?.ID, self.basicItemId });
        _ = Inheritance.call(values.?, "put", .{ EntryData.getInstance().?.ENABLE, self.enabled });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.SYSTEM, self.getSystem() });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.PLATFORM, self.getPlatform() });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.SPECIAL_NAME, self.getSpecialName() });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.VERSION, self.getVersion() });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.CHANGES, self.getChanges() });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.LICENSE_FILE, self.getLicenseFile() });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.FILE, self.getFile() });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.SIZE, Object.toString(Object.of(self.getSize())) });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.VALID_TIME, Object.toString(Object.of(self.getValidTime())) });
        _ = Inheritance.call(values.?, "put", .{ DownloadItemData.RETRIES, self.getRetries() });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(values.?, "put", .{ EntryData.getInstance().?.LASTMODIFIED, time });
        return Inheritance.upcast(?*HashMap, values);
    }
    

    pub fn getId(self: *Self) ?*String {
        return self.id;
    }
    

    pub fn getSystem(self: *Self) ?*String {
        return self.system;
    }
    

    pub fn getPlatform(self: *Self) ?*String {
        return self.platform;
    }
    

    pub fn getSpecialName(self: *Self) ?*String {
        return self.specialName;
    }
    

    pub fn getVersion(self: *Self) ?*String {
        return self.version;
    }
    

    pub fn getChanges(self: *Self) ?*String {
        return self.changes;
    }
    

    pub fn getLicenseFile(self: *Self) ?*String {
        return self.licenseFile;
    }
    

    pub fn getFile(self: *Self) ?*String {
        return self.file;
    }
    

    pub fn getSize(self: *Self) ?*Long {
        return self.size;
    }
    

    pub fn getValidTime(self: *Self) ?*Long {
        return self.validTime;
    }
    

    pub fn getRetries(self: *Self) ?*String {
        return self.retries;
    }
};

