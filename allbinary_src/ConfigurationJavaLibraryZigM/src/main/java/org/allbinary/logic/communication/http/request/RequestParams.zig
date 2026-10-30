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
// const Map = @import("java/util/Map.zig").Map;
// const Set = @import("java/util/Set.zig").Set;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const RequestData = @import("org/allbinary/logic/communication/http/request/RequestData.zig").RequestData;

//Note: if request is destroyed or messed up this will not work. Use fileRequestParams
pub const RequestParams = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.request.RequestParams";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    map: ?*Map = null,
    KEY: ?*String = null,
    VALUE: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        this.KEY = String.literal("Key: ");
        this.VALUE = String.literal(" Value: ");
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.literal("New RequestParams Size: 0"), this, this.commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    pub fn create1(request: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.map = Inheritance.upcast(@TypeOf(this.map), request.?.getParameterMap());
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("RequestParams Size: "), Inheritance.receiverOf(Inheritance.receiverOf(this.getMap().?, "keySet").keySet().?, "size").size()), this, this.commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.map = Inheritance.upcast(@TypeOf(this.map), Inheritance.receiverOf(pageContext.?.getRequest().?, "getParameterMap").getParameterMap());
        _ = Inheritance.call(this.logUtil.?, "putF", .{ String.plus(String.literal("Request Params Size: "), Inheritance.receiverOf(Inheritance.receiverOf(this.getMap().?, "keySet").keySet().?, "size").size()), this, this.commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    pub fn setMap(self: *Self, map: ?*Map) void {
        self.map = map;
    }
    

    pub fn getMap(self: *Self) ?*Map {
        return self.map;
    }
    

    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ RequestData.REQUEST }));
            const stringBuffer: ?*StringMaker = StringMaker.create();
            const keys: ?*Set = Inheritance.upcast(?*Set, self.map.?.keySet());
            const keyArray: []?Object = keys.?.toArray();
            const size: i32 = @as(i32, @intCast(keyArray.len));
            {
                var i: i32 = 0;
                while (i < size) : (i += 1) {
                const key: ?*String = Inheritance.cast(?*String, keyArray[@intCast(i)]);
                const values: []?*String = Inheritance.cast([]?*String, Inheritance.call(self.map.?, "get", .{ key }));
                _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.KEY });
                _ = Inheritance.call(stringBuffer.?, "append", .{ key });
                _ = Inheritance.call(stringBuffer.?, "append", .{ self.VALUE });
                _ = Inheritance.call(stringBuffer.?, "append", .{ values[@intCast(0)] });
                _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("toXmlNode(document)") });
                _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, RequestData.PARAMETER, Inheritance.callStatic(String, "create1", .{ key }), Inheritance.callStatic(String, "create1", .{ values[@intCast(0)] }) }) });
                }
            }
            return node;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("toXmlNode(document)"), e });
//             return null;
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        const keys: ?*Set = Inheritance.upcast(?*Set, self.map.?.keySet());
        const keyArray: []?Object = keys.?.toArray();
        const size: i32 = @as(i32, @intCast(keyArray.len));
        const stringBuffer: ?*StringMaker = StringMaker.create();
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const key: ?*String = Inheritance.cast(?*String, keyArray[@intCast(i)]);
            const values: []?*String = Inheritance.cast([]?*String, Inheritance.call(self.map.?, "get", .{ key }));
            _ = Inheritance.call(hashMap.?, "put", .{ Inheritance.callStatic(String, "create1", .{ key }), Inheritance.callStatic(String, "create1", .{ values[@intCast(0)] }) });
            }
        }
        _ = Inheritance.call(stringBuffer.?, "delete", .{ 0, stringBuffer.?.length() });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("RequestParams: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.map)) });
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("\ntoHashMap: ") });
        _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(hashMap)) });
        _ = Inheritance.call(self.logUtil.?, "putF", .{ Object.toString(Object.of(stringBuffer)), self, String.literal("toHashMap()") });
        return hashMap;
    }
};

