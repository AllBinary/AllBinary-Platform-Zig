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
// package org.allbinary.logic.communication.http.request

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Tokenizer = @import("org/allbinary/logic/string/tokens/Tokenizer.zig").Tokenizer;
const HtmlNameMathData = @import("org/allbinary/logic/visual/dhtml/html/name/HtmlNameMathData.zig").HtmlNameMathData;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const NameSpaceRequestParamData = @import("org/allbinary/logic/communication/http/request/NameSpaceRequestParamData.zig").NameSpaceRequestParamData;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const NameSpaceRequestParam = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.NameSpaceRequestParam";
    logUtil: ?*LogUtil = null,
    nameSpaceVector: ?*BasicArrayList = null,
    nameSpacePropertiesHashMap: ?*HashMap = null,
    value: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
    }
    

    pub fn create2(nameSpace: ?*String, value: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.nameSpaceVector = Inheritance.upcast(@TypeOf(this.nameSpaceVector), BasicArrayListD.create());
        this.nameSpacePropertiesHashMap = Inheritance.upcast(@TypeOf(this.nameSpacePropertiesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        this.value = value;
        const beginIndex: i32 = Inheritance.call(nameSpace.?, "indexOf", .{ NameSpaceRequestParamData.NAME });
        if (beginIndex < 0) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Not a NameSpaceRequest"); break :exception error.Exception; }});
        }
        const packages: ?*String = Inheritance.upcast(?*String, Inheritance.call(nameSpace.?, "substring", .{ beginIndex + Inheritance.receiverOf(NameSpaceRequestParamData.NAME.?, "length").length() + Inheritance.receiverOf(NameSpaceRequestParamData.SEP.?, "length").length() }));
        const sepTokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ NameSpaceRequestParamData.SEP });
        const nameSpaceWithPropertiesVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(sepTokenizer.?, "getTokensFromString", .{ packages, BasicArrayListD.create() }));
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("\nSep Tokens: "), Object.toString(Object.of(nameSpaceWithPropertiesVector))), this, String.literal("NameSpaceRequestParam()") });
        }
        const nameSpaceAndPropertiesTokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ NameSpaceRequestParamData.PROPERTIES });
        var packageIndex: i32 = 0;
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var index: i32 = 0;
        const size: i32 = nameSpaceWithPropertiesVector.?.size();
        while (index < size) {
            const nameSpaceWithProperties: ?*String = Inheritance.cast(?*String, Inheritance.call(nameSpaceWithPropertiesVector.?, "get", .{ value_N66902: { const value_N66902_value = index; index += 1; break :value_N66902 value_N66902_value; } }));
            _ = list.?.clear();
            const nameSpaceAndPropertiesVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(nameSpaceAndPropertiesTokenizer.?, "getTokensFromString", .{ nameSpaceWithProperties, list }));
            if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("\nPackageName and PackageName Properties Tokens: "), Object.toString(Object.of(nameSpaceAndPropertiesVector))), this, String.literal("NameSpaceRequestParam()") });
            }
            if (nameSpaceAndPropertiesVector.?.size() > 0) {
                const packageName: ?*String = Inheritance.cast(?*String, Inheritance.call(nameSpaceAndPropertiesVector.?, "get", .{ 0 }));
                if (packageName == null) {
                    std.debug.panic("{any}", .{exception: { _ = String.literal("Package Name Is Null"); break :exception error.Exception; }});
                }
                _ = Inheritance.call(this.nameSpaceVector.?, "add", .{ packageName });
                if (nameSpaceAndPropertiesVector.?.size() > 1) {
                    const properties: ?*String = Inheritance.cast(?*String, Inheritance.call(nameSpaceAndPropertiesVector.?, "get", .{ 1 }));
                    const packagePropertiesHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.call(this, "generatePackagePropertiesHashMap", .{ properties }));
                    _ = Inheritance.call(this.nameSpacePropertiesHashMap.?, "put", .{ String.valueOf(packageIndex), packagePropertiesHashMap });
                }
                packageIndex += 1;
            }
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("NameSpace: "), Object.toString(Object.of(this.nameSpaceVector))), this, String.literal("NameSpaceRequestParam()") });
        }
        return this;
    }
    

    pub fn getPackages(self: *Self) ?*BasicArrayList {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("NameSpace: "), Object.toString(Object.of(self.nameSpaceVector))), self, String.literal("getPackages()") });
        }
        return self.nameSpaceVector;
    }
    

    pub fn getPackageProperties(self: *Self, packageIndex: i32) ?*HashMap {
        var packagePropertiesHashMap: ?*HashMap = Inheritance.cast(?*HashMap, Inheritance.call(self.nameSpacePropertiesHashMap.?, "get", .{ String.valueOf(packageIndex) }));
        if (packagePropertiesHashMap == null) {
            packagePropertiesHashMap = Inheritance.upcast(@TypeOf(packagePropertiesHashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        }
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Package Properties: "), Object.toString(Object.of(packagePropertiesHashMap))), self, String.literal("getPackagesProperties()") });
        }
        return packagePropertiesHashMap;
    }
    

    pub fn getValue(self: *Self) ?*String {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("\nValue: "), self.value), self, String.literal("getValue()") });
        }
        return self.value;
    }
    

    // throws Exception
    pub fn generatePackagePropertiesHashMap(self: *Self, properties: ?*String) ?*HashMap {
        const propertiesTokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ NameSpaceRequestParamData.PROPERTIESSEPARATOR });
        const packagePropertiesHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const propertyVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(propertiesTokenizer.?, "getTokensFromString", .{ properties, BasicArrayListD.create() }));
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const propertyTokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ HtmlNameMathData.getInstance().?.EQUALS });
        const index: i32 = 0;
        const size: i32 = propertyVector.?.size();
        while (index < size) {
            const property: ?*String = Inheritance.cast(?*String, Inheritance.call(propertyVector.?, "get", .{ index }));
            _ = list.?.clear();
            const propertyNameValueVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(propertyTokenizer.?, "getTokensFromString", .{ property, list }));
            var index2: i32 = 0;
            while (index2 < propertyNameValueVector.?.size()) {
                const propertyName: ?*String = Inheritance.cast(?*String, Inheritance.call(propertyNameValueVector.?, "get", .{ value_N69592: { const value_N69592_value = index2; index2 += 1; break :value_N69592 value_N69592_value; } }));
                if (propertyNameValueVector.?.size() > 1) {
                    const propertyValue: ?*String = Inheritance.cast(?*String, Inheritance.call(propertyNameValueVector.?, "get", .{ value_N69758: { const value_N69758_value = index2; index2 += 1; break :value_N69758 value_N69758_value; } }));
                    if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.HTTPREQUEST })) {
                        _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.plus(String.plus(String.literal("\nProperty Name: "), propertyName), String.literal("\nProperty Value: ")), propertyValue), self, String.literal("generatePackagePropertiesHashMap()") });
                    }
                    _ = Inheritance.call(packagePropertiesHashMap.?, "put", .{ propertyName, propertyValue });
                } else {
                    _ = Inheritance.call(packagePropertiesHashMap.?, "put", .{ propertyName, StringUtil.getInstance().?.EMPTY_STRING });
                }
            }
        }
        return packagePropertiesHashMap;
    }
};

