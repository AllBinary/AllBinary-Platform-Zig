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
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const AbContext = @import("org/allbinary/business/context/AbContext.zig").AbContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const FREEBLISKET_PATH_GLOBALS = @import("org/allbinary/globals/FREEBLISKET_PATH_GLOBALS.zig").FREEBLISKET_PATH_GLOBALS;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const WeblisketSessionInterface = @import("org/allbinary/logic/communication/http/request/session/WeblisketSessionInterface.zig").WeblisketSessionInterface;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const AbSqlData = @import("org/allbinary/logic/communication/sql/AbSqlData.zig").AbSqlData;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const TransformInfoObjectConfig = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfig.zig").TransformInfoObjectConfig;
const TransformInfo = @import("org/allbinary/logic/visual/transform/info/TransformInfo.zig").TransformInfo;
const TransformInfoData = @import("org/allbinary/logic/visual/transform/info/TransformInfoData.zig").TransformInfoData;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;

pub const TransformInfoHttp = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoHttp";
    pub const java_interfaces = .{ TransformInfoHttpInterface };
    base: TransformInfo = undefined,
    logUtil: ?*LogUtil = null,
    abContext: ?*AbContext = null,
    // Implements TransformInfoHttpInterface

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create3(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext, crud: bool) *Self {
        _ = crud;
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfo, "create", .{  }).*;
        this.initFields();
        this.abContext = Inheritance.callStatic(AbContext, "create2", .{ propertiesHashMap, pageContext });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Properties HashMap: "), Object.toString(Object.of(propertiesHashMap))), this, String.literal("Constructor(HashMap, PageContext, boolean)") });
        }
        _ = Inheritance.call(this, "override", .{ propertiesHashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create3(request: ?*HttpServletRequest, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfo, "create", .{  }).*;
        this.initFields();
        this.abContext = Inheritance.callStatic(AbContext, "create2", .{ propertiesHashMap, pageContext });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Properties HashMap: "), Object.toString(Object.of(propertiesHashMap))), this, String.literal("Constructor(HttpServletRequest, HashMap, PageContext)") });
        }
        _ = Inheritance.call(this, "set", .{ Inheritance.callStatic(RequestParams, "create1", .{ Inheritance.cast(?*HttpServletRequest, request) }).toHashMap() });
        _ = Inheritance.call(this, "override", .{ propertiesHashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create3(databaseHashMap: ?*HashMap, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfo, "create", .{  }).*;
        this.initFields();
        this.abContext = Inheritance.callStatic(AbContext, "create2", .{ propertiesHashMap, pageContext });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Properties HashMap: "), Object.toString(Object.of(propertiesHashMap))), this, String.literal("Constructor(HashMap, HashMap, PageContext)") });
        }
        _ = Inheritance.call(this, "set", .{ databaseHashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create2(propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfo, "create", .{  }).*;
        this.initFields();
        this.abContext = Inheritance.callStatic(AbContext, "create2", .{ propertiesHashMap, pageContext });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Properties HashMap: "), Object.toString(Object.of(propertiesHashMap))), this, String.literal("Constructor(HashMap, PageContext)") });
        }
        _ = Inheritance.call(this, "set", .{ propertiesHashMap });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(parentViewOfThisTransformInfoInterface: ?*TransformInfoHttp) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(TransformInfo, "create", .{  }).*;
        this.initFields();
        this.abContext = Inheritance.callStatic(AbContext, "create2", .{ Inheritance.receiver(parentViewOfThisTransformInfoInterface.?, "getPropertiesHashMap").getPropertiesHashMap(), Inheritance.receiver(parentViewOfThisTransformInfoInterface.?, "getPageContext").getPageContext() });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn set(self: *Self, hashMap: ?*HashMap) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEW })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Properties HashMap: "), Object.toString(Object.of(hashMap))), self, String.literal("set()") });
        }
        const transformInfoData: ?*TransformInfoData = Inheritance.upcast(?*TransformInfoData, TransformInfoData.getInstance());
        _ = Inheritance.call(self, "setName", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.NAME })) });
        _ = Inheritance.call(self, "setStoreName", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME })) });
        _ = Inheritance.call(self, "setObjectFile", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECTFILENAME })) });
        _ = Inheritance.call(self, "setObject", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECT })) });
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        const objectConfigString: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECTCONFIG }));
        if (Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ objectConfigString, 10, AbSqlData.MAXBLOB })) {
            _ = Inheritance.call(self, "setObjectConfig", .{ objectConfigString });
        } else {
            _ = Inheritance.call(self, "setObjectConfig", .{ Object.toString(Object.of(Inheritance.callStatic(TransformInfoObjectConfig, "create1", .{ self }))) });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isEmpty", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECTCONFIGFILENAME })) })) {
            _ = Inheritance.call(self, "setObjectConfigFile", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.OBJECTCONFIGFILENAME })) });
        }
        _ = Inheritance.call(self, "setTemplateFile", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.TEMPLATEFILENAME })) });
        _ = Inheritance.call(self, "setTemplate", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.TEMPLATE })) });
        _ = Inheritance.call(self, "setDataFile", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.DATAFILENAME })) });
        _ = Inheritance.call(self, "setData", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ transformInfoData.?.DATA })) });
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.TAGHELPERFACTORY })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ Inheritance.receiver(self, "log").log(), self, String.literal("set()") });
        }
    }
    

    pub fn getWeblisketSession(self: *Self) ?*WeblisketSessionInterface {
        return Inheritance.upcast(?*WeblisketSessionInterface, self.abContext.?.getWeblisketSession());
    }
    

    pub fn getPageContext(self: *Self) ?*PageContext {
        return Inheritance.upcast(?*PageContext, self.abContext.?.getPageContext());
    }
    

    pub fn getPropertiesHashMap(self: *Self) ?*HashMap {
        return Inheritance.upcast(?*HashMap, self.abContext.?.getPropertiesHashMap());
    }
    

    // throws Exception
    pub fn getTemplateFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH, Inheritance.receiver(self, "getTemplateFile").getTemplateFile() });
    }
    

    // throws Exception
    pub fn getObjectConfigFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH, Inheritance.receiver(self, "getObjectConfigFile").getObjectConfigFile() });
    }
    

    // throws Exception
    pub fn getDataFilePath(self: *Self) ?*AbPath {
        return Inheritance.callStatic(AbPath, "create2", .{ URLGLOBALS.getMainPath() + FREEBLISKET_PATH_GLOBALS.getInstance().?.XSLPATH, Inheritance.receiver(self, "getDataFile").getDataFile() });
    }
};

