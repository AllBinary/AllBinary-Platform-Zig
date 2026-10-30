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
// package org.allbinary.logic.visual.transform.info

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const TransformInfoHttp = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttp.zig").TransformInfoHttp;
const TransformInfoHttpStoreInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpStoreInterface.zig").TransformInfoHttpStoreInterface;

pub const TransformInfoHttpStore = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoHttpStore";
    pub const java_interfaces = .{ TransformInfoHttpStoreInterface };
    base: TransformInfoHttp = undefined,
    logUtil: ?*LogUtil = null,
    // Implements TransformInfoHttpStoreInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoHttp, "create3", .{ propertiesHashMap, pageContext, true }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Properties HashMap: "), Object.toString(Object.of(propertiesHashMap))), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create3(databaseHashMap: ?*HashMap, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoHttp, "create3", .{ databaseHashMap, propertiesHashMap, pageContext }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Database HashMap: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(databaseHashMap)) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\nProperties HashMap: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(propertiesHashMap)) });
            _ = Inheritance.call(this.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), this, String.literal("Constructor(HashMap, HashMap , PageContext)") });
        }
        _ = Inheritance.call(this, "setStoreName", .{ Inheritance.cast(?*String, Inheritance.call(databaseHashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME })) });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create3(storeFrontInterface: ?*StoreFrontInterface, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfoHttp, "create2", .{ propertiesHashMap, pageContext }).*;
        this.initFields();
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Properties HashMap: "), Object.toString(Object.of(propertiesHashMap))), this, Inheritance.fieldPointer(this, "commonStrings").*.?.CONSTRUCTOR });
        }
        _ = Inheritance.call(this, "setStoreName", .{ Inheritance.receiver(storeFrontInterface.?, "getName").getName() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn getPath(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ URLGLOBALS.getMainPath() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.receiver(self, "getStoreName").getStoreName() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ AbPathData.getInstance().?.SEPARATOR });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    // throws Exception
    pub fn getTemplateFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ self.getPath(), Inheritance.receiver(self, "getTemplateFile").getTemplateFile() });
    }
    

    // throws Exception
    pub fn getObjectConfigFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ self.getPath(), Inheritance.receiver(self, "getObjectConfigFile").getObjectConfigFile() });
    }
    

    // throws Exception
    pub fn getDataFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ self.getPath(), Inheritance.receiver(self, "getDataFile").getDataFile() });
    }
};

