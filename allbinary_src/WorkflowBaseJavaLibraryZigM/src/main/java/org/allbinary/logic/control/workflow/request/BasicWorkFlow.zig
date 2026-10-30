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
// package org.allbinary.logic.control.workflow.request

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const Calendar = @import("java/util/Calendar.zig").Calendar;
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const StoreFrontData = @import("org/allbinary/business/context/modules/storefront/StoreFrontData.zig").StoreFrontData;
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const DomDocumentHelper = @import("org/allbinary/data/tree/dom/document/DomDocumentHelper.zig").DomDocumentHelper;
const XmlDocumentHelper = @import("org/allbinary/data/tree/dom/document/XmlDocumentHelper.zig").XmlDocumentHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const RequestParams = @import("org/allbinary/logic/communication/http/request/RequestParams.zig").RequestParams;
const WeblisketSession = @import("org/allbinary/logic/communication/http/request/session/WeblisketSession.zig").WeblisketSession;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const WorkFlowData = @import("org/allbinary/logic/control/workflow/WorkFlowData.zig").WorkFlowData;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const Long = @import("java/lang/Long.zig").Long;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const BasicWorkFlow = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.workflow.request.BasicWorkFlow";
    logUtil: ?*LogUtil = null,
    commonStrings: ?*CommonStrings = null,
    workFlowDoc: ?*Document = null,
    workFlowName: ?*String = null,
    storeName: ?*String = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.workFlowName = Inheritance.upcast(@TypeOf(this.workFlowName), StringUtil.getInstance().?.EMPTY_STRING);
        this.workFlowDoc = Inheritance.upcast(@TypeOf(this.workFlowDoc), DomDocumentHelper.create());
        const workFlowNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(this.workFlowDoc.?, "createElement", .{ WorkFlowData.getInstance().?.WORKFLOW }));
        _ = Inheritance.call(this.workFlowDoc.?, "appendChild", .{ workFlowNode });
        return this;
    }
    

    pub fn create2(hashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const weblisketSession: ?*WeblisketSession = Inheritance.callStatic(WeblisketSession, "create2", .{ hashMap, pageContext });
        this.storeName = Inheritance.upcast(@TypeOf(this.storeName), weblisketSession.?.getStoreName());
        const requestHashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.callStatic(RequestParams, "create1", .{ pageContext }).toHashMap());
        this.workFlowName = Inheritance.cast(?*String, Inheritance.call(requestHashMap.?, "get", .{ WorkFlowData.getInstance().?.NAME }));
        this.workFlowDoc = Inheritance.upcast(@TypeOf(this.workFlowDoc), Inheritance.callStatic(DomDocumentHelper, "create", .{ Inheritance.cast(?*String, Inheritance.call(requestHashMap.?, "get", .{ WorkFlowData.getInstance().?.DATA })) }));
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.workFlowName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ WorkFlowData.getInstance().?.NAME }));
        this.storeName = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ StoreFrontData.getInstance().?.NAME }));
        this.workFlowDoc = Inheritance.upcast(@TypeOf(this.workFlowDoc), Inheritance.callStatic(DomDocumentHelper, "create", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ WorkFlowData.getInstance().?.DATA })) }));
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.workFlowName;
    }
    

    pub fn getStoreName(self: *Self) ?*String {
        return self.storeName;
    }
    

    pub fn getKey(self: *Self) ?Object {
        return Inheritance.cast(?Object, self.getName());
    }
    

    // throws Exception
    pub fn toVector(self: *Self) ?*BasicArrayList {
        const values: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        _ = Inheritance.call(values.?, "add", .{ self.workFlowName });
        _ = Inheritance.call(values.?, "add", .{ self.storeName });
        _ = Inheritance.call(values.?, "add", .{ Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.workFlowDoc }) });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(values.?, "add", .{ time });
        _ = Inheritance.call(values.?, "add", .{ time });
        return values;
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ WorkFlowData.getInstance().?.NAME, self.workFlowName });
        _ = Inheritance.call(hashMap.?, "put", .{ StoreFrontData.getInstance().?.NAME, self.storeName });
        _ = Inheritance.call(hashMap.?, "put", .{ WorkFlowData.getInstance().?.DATA, Inheritance.callStatic(XmlDocumentHelper, "toString", .{ self.workFlowDoc }) });
        const calendar: ?*Calendar = Inheritance.upcast(?*Calendar, Calendar.getInstance());
        const time: ?*String = Inheritance.callStatic(String, "create1", .{ String.valueOf(Inheritance.callStatic(Long, "create1", .{ calendar.?.getTimeInMillis() }).?) });
        _ = Inheritance.call(hashMap.?, "put", .{ EntryData.getInstance().?.LASTMODIFIED, time });
        return hashMap;
    }
    

    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.toHashMap());
            const keySet: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ WorkFlowData.getInstance().?.WORKFLOW }));
            const nameArray: []?Object = keySet.?.toArray();
            const size: i32 = @as(i32, @intCast(nameArray.len));
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                const name: ?*String = Inheritance.cast(?*String, nameArray[@intCast(index)]);
                const value: ?*String = Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ name }));
                _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, name, value }) });
                }
            }
            return node;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("toXmlNode()"), e });
//             }
//             return null;
    }
    

    pub fn toXmlDoc(self: *Self) ?*Document {
        { // try
            return self.workFlowDoc;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ self.commonStrings.?.EXCEPTION, self, String.literal("toXmlDoc()"), e });
//             }
//             return null;
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        { // try
            var returnBoolean: ?*Boolean = Inheritance.upcast(?*Boolean, Boolean.TRUE);
            if (self.workFlowName == null) {
                returnBoolean = Inheritance.upcast(@TypeOf(returnBoolean), Boolean.FALSE);
            }
            return returnBoolean;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLTAGSERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to validate"), self, self.commonStrings.?.IS_VALID, e });
//             }
//             return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        { // try
            const stringBuffer: ?*StringMaker = StringMaker.create();
            if (self.workFlowName == null) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("No WorkFlow name specified.") });
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.VIEWERROR })) {
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ String.literal("Failed to generate validation error info"), self, String.literal("validationInfo()"), e });
//             }
//             return String.literal("Error Getting Validation Info");
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        _ = document;
        _ = self;
        return null;
    }
};

