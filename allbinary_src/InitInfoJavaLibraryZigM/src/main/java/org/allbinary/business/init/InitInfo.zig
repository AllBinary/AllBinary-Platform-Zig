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
// package org.allbinary.business.init

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const LogConfigTypeFactory = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypeFactory.zig").LogConfigTypeFactory;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const BooleanUtil = @import("org/allbinary/logic/java/bool/BooleanUtil.zig").BooleanUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const InitException = @import("org/allbinary/business/init/InitException.zig").InitException;
const InitInfoEntity = @import("org/allbinary/business/init/InitInfoEntity.zig").InitInfoEntity;

pub const InitInfo = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.init.InitInfo";
    TESTING: ?*String = null,
    MAINPATH: ?*String = null,
    TESTHTMLPATH: ?*String = null,
    testing: ?*String = null,
    mainPath: ?*AbPath = null,
    testHtmlPath: ?*AbPath = null,
    hasRead: bool = false,
    var instance: ?*InitInfo = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InitInfo.create();
    }

    fn initFields(this: *Self) void {
        this.TESTING = String.literal("TESTING");
        this.MAINPATH = String.literal("MAINPATH");
        this.TESTHTMLPATH = String.literal("TESTHTMLPATH");
        this.testing = null;
        this.mainPath = null;
        this.testHtmlPath = null;
        this.hasRead = false;
    }
    

    pub fn getInstance() ?*InitInfo {
        return Inheritance.upcast(?*InitInfo, InitInfo.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws InitException
    pub fn set(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            const initInfoEntity: ?*InitInfoEntity = InitInfoEntity.create();
            if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADER })) {
                _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("created entity"), String.literal("InitInfo"), String.literal("set()") });
            }
            if (!Inheritance.receiver(initInfoEntity.?, "is").is()) {
                if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADER })) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("adding"), String.literal("InitInfo"), String.literal("set()") });
                }
                _ = Inheritance.receiver(initInfoEntity.?, "add").add();
            } else {
                if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADER })) {
                    _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.literal("update"), String.literal("InitInfo"), String.literal("set()") });
                }
                _ = Inheritance.receiver(initInfoEntity.?, "update").update();
            }
            self.hasRead = false;
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("error"), String.literal("InitInfo"), String.literal("set()"), e });
//             }
    }
    

    pub fn set1(self: *Self, hashMap: ?*HashMap) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            self.testing = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ self.TESTING }));
            self.mainPath = Inheritance.callStatic(AbPath, "create2", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ self.MAINPATH })), StringUtil.getInstance().?.EMPTY_STRING });
            self.testHtmlPath = Inheritance.callStatic(AbPath, "create2", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ self.TESTHTMLPATH })), StringUtil.getInstance().?.EMPTY_STRING });
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("error"), String.literal("InitInfo"), String.literal("set()"), e });
//             }
    }
    

    pub fn get(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            self.testing = null;
            self.mainPath = null;
            self.testHtmlPath = null;
            const initInfoEntity: ?*InitInfoEntity = InitInfoEntity.create();
            _ = Inheritance.receiver(initInfoEntity.?, "get").get();
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("error"), String.literal("InitInfo"), String.literal("set()"), e });
//             }
//             return;
    }
    

    pub fn setHasRead(self: *Self, value: bool) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        self.hasRead = value;
    }
    

    pub fn updateIfNeeded(self: *Self) void {
        // Java synchronized method
        const javaMonitor = Object.monitor(self).enter();
        defer javaMonitor.exit();
        { // try
            if (!self.hasRead) {
                self.hasRead = true;
                _ = self.get();
            }
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("error"), String.literal("InitInfo"), String.literal("updateIfNeeded()"), e });
//             }
//             return;
    }
    

    pub fn isTesting(self: *Self) bool {
        { // try
            _ = self.updateIfNeeded();
            return Inheritance.call(BooleanUtil.getInstance().?, "getFromString", .{ self.testing });
        }
        // catch (Exception e):
//             if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ LogConfigTypeFactory.getInstance().?.PRELOADERERROR })) {
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("error"), String.literal("InitInfo"), String.literal("updateIfNeeded()"), e });
//             }
//             return false;
    }
    

    pub fn getTesting(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        return self.testing;
    }
    

    pub fn getTestHtmlPath(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        if (self.testHtmlPath != null) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.testHtmlPath)));
        } else {
            return null;
        }
    }
    

    pub fn getMainPath(self: *Self) ?*String {
        _ = self.updateIfNeeded();
        if (self.mainPath != null) {
            return Inheritance.upcast(?*String, Object.toString(Object.of(self.mainPath)));
        } else {
            return null;
        }
    }
    

    pub fn setTesting(self: *Self, value: ?*String) void {
        self.testing = Inheritance.upcast(@TypeOf(self.testing), value);
    }
    

    pub fn setTestHtmlPath(self: *Self, value: ?*AbPath) void {
        self.testHtmlPath = Inheritance.upcast(@TypeOf(self.testHtmlPath), value);
    }
    

    pub fn setMainPath(self: *Self, value: ?*AbPath) void {
        self.mainPath = Inheritance.upcast(@TypeOf(self.mainPath), value);
    }
    

    pub fn isMainPathValid(self: *Self, abPath: ?*AbPath) bool {
        _ = abPath;
        _ = self;
        return true;
    }
    

    pub fn isTestHtmlPathValid(self: *Self, abPath: ?*AbPath) bool {
        _ = abPath;
        _ = self;
        return true;
    }
    

    // throws Exception
    pub fn isTestingValid(self: *Self, testing: ?*String) bool {
        return Inheritance.call(BooleanUtil.getInstance().?, "isStringBoolean", .{ testing });
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ self.TESTING, self.getTesting() });
        _ = Inheritance.call(hashMap.?, "put", .{ self.MAINPATH, self.getMainPath() });
        _ = Inheritance.call(hashMap.?, "put", .{ self.TESTHTMLPATH, self.getTestHtmlPath() });
        return hashMap;
    }
};

