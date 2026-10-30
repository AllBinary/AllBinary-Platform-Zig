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
// package org.allbinary.business.backup

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const StoreFrontsEntity = @import("org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntity.zig").StoreFrontsEntity;
const StoreFrontsEntityFactory = @import("org/allbinary/data/tables/context/module/storefronts/StoreFrontsEntityFactory.zig").StoreFrontsEntityFactory;
const PATH_GLOBALS = @import("org/allbinary/globals/PATH_GLOBALS.zig").PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const ZipFileUtil = @import("org/allbinary/logic/io/file/zip/ZipFileUtil.zig").ZipFileUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const BlisketBackupFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.backup.BlisketBackupFactory";
    logUtil: ?*LogUtil = null,
    stringUtil: ?*StringUtil = null,
    commonStrings: ?*CommonStrings = null,
    directory: ?*Directory = null,
    var instance: ?*BlisketBackupFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BlisketBackupFactory.create();
    }

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.directory = Inheritance.upcast(?*Directory, Directory.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*BlisketBackupFactory {
        return Inheritance.upcast(?*BlisketBackupFactory, BlisketBackupFactory.instance);
    }
    

    // throws Exception
    pub fn getFileBasicArrayList(self: *Self, pathString: ?*String) ?*BasicArrayList {
        const path: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ pathString, self.stringUtil.?.EMPTY_STRING });
        const file: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFileFromAbPath", .{ path }));
        return Inheritance.upcast(?*BasicArrayList, Inheritance.call(self.directory.?, "search", .{ file, true }));
    }
    

    pub fn backup(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("backup()") });
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ PATH_GLOBALS.getInstance().?.BACKUP_PATH });
            const backupPath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            const path: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ backupPath, self.stringUtil.?.EMPTY_STRING });
            const fileBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(self, "getFileBasicArrayList", .{ backupPath }));
            _ = Inheritance.call(self, "backup", .{ fileBasicArrayList, String.plus(path.?.toFileSystemString(), String.literal("backup.zip")) });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("backup()"), e });
    }
    

    pub fn backupViews(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("backupViews()") });
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ PATH_GLOBALS.getInstance().?.BACKUP_PATH });
            const backupPath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            const path: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ backupPath, self.stringUtil.?.EMPTY_STRING });
            const fileBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const storeFrontsEntity: ?*StoreFrontsEntity = Inheritance.upcast(?*StoreFrontsEntity, Inheritance.receiverOf(StoreFrontsEntityFactory.getInstance().?, "getStoreFrontsEntityInstance").getStoreFrontsEntityInstance());
            const storeFrontNamesBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(storeFrontsEntity.?, "getStoreFrontNames").getStoreFrontNames());
            const size: i32 = storeFrontNamesBasicArrayList.?.size();
            var nextStore: ?*String = null;
            var viewsPath: ?*String = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                nextStore = Inheritance.cast(?*String, Inheritance.call(storeFrontNamesBasicArrayList.?, "get", .{ index }));
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ PATH_GLOBALS.getInstance().?.VIEWS_PATH });
                _ = Inheritance.call(stringBuffer.?, "append", .{ nextStore });
                viewsPath = Inheritance.upcast(@TypeOf(viewsPath), Object.toString(Object.of(stringBuffer)));
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Backup Store Views: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ nextStore });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" from: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ viewsPath });
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("backupViews()") });
                _ = Inheritance.call(fileBasicArrayList.?, "addAllList", .{ Inheritance.call(self, "getFileBasicArrayList", .{ viewsPath }) });
                }
            }
            _ = Inheritance.call(self, "backup", .{ fileBasicArrayList, String.plus(path.?.toFileSystemString(), String.literal("backupViews.zip")) });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("backupViews()"), e });
    }
    

    pub fn backupResources(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("backupResources()") });
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ PATH_GLOBALS.getInstance().?.BACKUP_PATH });
            const backupPath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            const path: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ backupPath, self.stringUtil.?.EMPTY_STRING });
            const fileBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const storeFrontsEntity: ?*StoreFrontsEntity = Inheritance.upcast(?*StoreFrontsEntity, Inheritance.receiverOf(StoreFrontsEntityFactory.getInstance().?, "getStoreFrontsEntityInstance").getStoreFrontsEntityInstance());
            const storeFrontNamesBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(storeFrontsEntity.?, "getStoreFrontNames").getStoreFrontNames());
            const size: i32 = storeFrontNamesBasicArrayList.?.size();
            var nextStore: ?*String = null;
            var storeFrontInterface: ?*StoreFrontInterface = null;
            var resourcesPath: ?*String = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                nextStore = Inheritance.cast(?*String, Inheritance.call(storeFrontNamesBasicArrayList.?, "get", .{ index }));
                storeFrontInterface = Inheritance.upcast(@TypeOf(storeFrontInterface), Inheritance.call(storeFrontsEntity.?, "getStoreFrontInterface", .{ nextStore }));
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getCurrentHostNamePath").getCurrentHostNamePath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(storeFrontInterface.?, "getCategoryPath").getCategoryPath() });
                resourcesPath = Inheritance.upcast(@TypeOf(resourcesPath), Object.toString(Object.of(stringBuffer)));
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Backup Store Resrouces: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ nextStore });
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" from: ") });
                _ = Inheritance.call(stringBuffer.?, "append", .{ resourcesPath });
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("backupResources()") });
                _ = Inheritance.call(fileBasicArrayList.?, "addAllList", .{ Inheritance.call(self, "getFileBasicArrayList", .{ resourcesPath }) });
                }
            }
            _ = Inheritance.call(self, "backup", .{ fileBasicArrayList, String.plus(path.?.toFileSystemString(), String.literal("backupResources.zip")) });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("backupResources()"), e });
    }
    

    pub fn backupJsps(self: *Self) void {
        { // try
            _ = Inheritance.call(self.logUtil.?, "putF", .{ self.commonStrings.?.START, self, String.literal("backupJsps()") });
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ PATH_GLOBALS.getInstance().?.BACKUP_PATH });
            const backupPath: ?*String = Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
            const path: ?*AbPath = Inheritance.callStatic(AbPath, "create2", .{ backupPath, self.stringUtil.?.EMPTY_STRING });
            const fileBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
            const storeFrontsEntity: ?*StoreFrontsEntity = Inheritance.upcast(?*StoreFrontsEntity, Inheritance.receiverOf(StoreFrontsEntityFactory.getInstance().?, "getStoreFrontsEntityInstance").getStoreFrontsEntityInstance());
            const storeFrontNamesBasicArrayList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.receiver(storeFrontsEntity.?, "getStoreFrontNames").getStoreFrontNames());
            const size: i32 = storeFrontNamesBasicArrayList.?.size();
            var nextStore: ?*String = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                nextStore = Inheritance.cast(?*String, Inheritance.call(storeFrontNamesBasicArrayList.?, "get", .{ index }));
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Backup Store Jsps: "), nextStore), self, String.literal("backupJsps()") });
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getWebappPath() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ nextStore });
                _ = Inheritance.call(fileBasicArrayList.?, "addAllList", .{ Inheritance.call(self, "getFileBasicArrayList", .{ Object.toString(Object.of(stringBuffer)) }) });
                }
            }
            _ = Inheritance.call(self, "backup", .{ fileBasicArrayList, String.plus(path.?.toFileSystemString(), String.literal("backupJsps.zip")) });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("backupJsps()"), e });
    }
    

    pub fn backup2(self: *Self, fileBasicArrayList: ?*BasicArrayList, zipFile: ?*String) void {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("ZipFile: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ zipFile });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" BasicArrayList: ") });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ fileBasicArrayList.?.size() });
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Creating Backup Zip File: "), Object.toString(Object.of(stringBuffer))), self, String.literal("backup()") });
            _ = Inheritance.call(ZipFileUtil.getInstance().?, "create", .{ zipFile, fileBasicArrayList });
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.literal("Created Backup Zip File"), self, String.literal("backup()") });
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("backup()"), e });
    }
};

