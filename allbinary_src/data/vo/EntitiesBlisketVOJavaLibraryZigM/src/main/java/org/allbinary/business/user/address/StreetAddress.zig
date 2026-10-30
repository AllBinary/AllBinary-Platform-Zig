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
// package org.allbinary.business.user.address

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
// const Set = @import("java/util/Set.zig").Set;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const StreetAddressData = @import("org/allbinary/business/user/address/StreetAddressData.zig").StreetAddressData;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const StreetAddress = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.user.address.StreetAddress";
    logUtil: ?*LogUtil = null,
    id: ?*String = null,
    name: ?*String = null,
    street: ?*String = null,
    city: ?*String = null,
    state: ?*String = null,
    code: ?*String = null,
    country: ?*String = null,
    isDefault: bool = false,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
        
        
        
        
        
        
        this.isDefault = false;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const nameNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ StreetAddressData.NAME, node.?.getChildNodes() }));
        this.name = Inheritance.upcast(@TypeOf(this.name), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ nameNode }));
        const streetNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ StreetAddressData.STREET, node.?.getChildNodes() }));
        this.street = Inheritance.upcast(@TypeOf(this.street), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ streetNode }));
        const cityNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ StreetAddressData.CITY, node.?.getChildNodes() }));
        this.city = Inheritance.upcast(@TypeOf(this.city), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ cityNode }));
        const stateNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ StreetAddressData.STATE, node.?.getChildNodes() }));
        this.state = Inheritance.upcast(@TypeOf(this.state), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ stateNode }));
        const codeNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ StreetAddressData.CODE, node.?.getChildNodes() }));
        this.code = Inheritance.upcast(@TypeOf(this.code), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ codeNode }));
        const countryNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ StreetAddressData.COUNTRY, node.?.getChildNodes() }));
        this.country = Inheritance.upcast(@TypeOf(this.country), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ countryNode }));
        _ = this.log();
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(streetAddress: ?*StreetAddress) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.id = Inheritance.upcast(@TypeOf(this.id), streetAddress.?.getId());
        this.name = Inheritance.upcast(@TypeOf(this.name), streetAddress.?.getName());
        this.street = Inheritance.upcast(@TypeOf(this.street), streetAddress.?.getStreet());
        this.city = Inheritance.upcast(@TypeOf(this.city), streetAddress.?.getCity());
        this.state = Inheritance.upcast(@TypeOf(this.state), streetAddress.?.getState());
        this.code = Inheritance.upcast(@TypeOf(this.code), streetAddress.?.getCode());
        this.country = Inheritance.upcast(@TypeOf(this.country), streetAddress.?.getCountry());
        this.isDefault = streetAddress.?.isDefault();
        _ = this.log();
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(request: ?*HttpServletRequest) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setId", .{ Inheritance.call(request.?, "getParameter", .{ StreetAddressData.ID }) });
        _ = Inheritance.call(this, "setName", .{ Inheritance.call(request.?, "getParameter", .{ StreetAddressData.NAME }) });
        _ = Inheritance.call(this, "setStreet", .{ Inheritance.call(request.?, "getParameter", .{ StreetAddressData.STREET }) });
        _ = Inheritance.call(this, "setCity", .{ Inheritance.call(request.?, "getParameter", .{ StreetAddressData.CITY }) });
        _ = Inheritance.call(this, "setState", .{ Inheritance.call(request.?, "getParameter", .{ StreetAddressData.STATE }) });
        _ = Inheritance.call(this, "setCode", .{ Inheritance.call(request.?, "getParameter", .{ StreetAddressData.CODE }) });
        _ = Inheritance.call(this, "setCountry", .{ Inheritance.call(request.?, "getParameter", .{ StreetAddressData.COUNTRY }) });
        _ = this.log();
        return this;
    }
    

    pub fn create6(name: ?*String, street: ?*String, city: ?*String, state: ?*String, code: ?*String, country: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.name = name;
        this.street = street;
        this.city = city;
        this.state = state;
        this.code = code;
        this.country = country;
        _ = this.log();
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(address: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.id = Inheritance.cast(?*String, Inheritance.call(address.?, "get", .{ StreetAddressData.ID }));
        this.name = Inheritance.cast(?*String, Inheritance.call(address.?, "get", .{ StreetAddressData.NAME }));
        this.street = Inheritance.cast(?*String, Inheritance.call(address.?, "get", .{ StreetAddressData.STREET }));
        this.city = Inheritance.cast(?*String, Inheritance.call(address.?, "get", .{ StreetAddressData.CITY }));
        this.state = Inheritance.cast(?*String, Inheritance.call(address.?, "get", .{ StreetAddressData.STATE }));
        this.code = Inheritance.cast(?*String, Inheritance.call(address.?, "get", .{ StreetAddressData.CODE }));
        this.country = Inheritance.cast(?*String, Inheritance.call(address.?, "get", .{ StreetAddressData.COUNTRY }));
        const def: ?*String = Inheritance.cast(?*String, Inheritance.call(address.?, "get", .{ StreetAddressData.DEFAULT }));
        if (def != null and Inheritance.call(def.?, "compareTo", .{ StreetAddressData.DEFAULT }) == 0) {
            this.isDefault = true;
        } else {
            this.isDefault = false;
        }
        _ = this.log();
        return this;
    }
    

    pub fn log(self: *Self) void {
        if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGING })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Created Address: \n"), self.toHashMap()), self, String.literal("log") });
        }
    }
    

    pub fn setId(self: *Self, id: ?*String) void {
        self.id = id;
    }
    

    pub fn setName(self: *Self, name: ?*String) void {
        self.name = name;
    }
    

    pub fn setStreet(self: *Self, value: ?*String) void {
        self.street = value;
    }
    

    pub fn setCity(self: *Self, value: ?*String) void {
        self.city = value;
    }
    

    pub fn setState(self: *Self, value: ?*String) void {
        self.state = value;
    }
    

    pub fn setCode(self: *Self, value: ?*String) void {
        self.code = value;
    }
    

    pub fn setCountry(self: *Self, value: ?*String) void {
        self.country = value;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn getStreet(self: *Self) ?*String {
        return self.street;
    }
    

    pub fn getCity(self: *Self) ?*String {
        return self.city;
    }
    

    pub fn getState(self: *Self) ?*String {
        return self.state;
    }
    

    pub fn getCode(self: *Self) ?*String {
        return self.code;
    }
    

    pub fn getCountry(self: *Self) ?*String {
        return self.country;
    }
    

    pub fn getId(self: *Self) ?*String {
        return self.id;
    }
    

    pub fn isDefault(self: *Self) bool {
        return self.isDefault;
    }
    

    pub fn isEmpty(self: *Self) ?*Boolean {
        const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        if (self.getName() == null and Inheritance.call(self.getName().?, "compareTo", .{ EMPTY_STRING }) == 0 and self.getStreet() == null and Inheritance.call(self.getStreet().?, "compareTo", .{ EMPTY_STRING }) == 0 and self.getCity() == null and Inheritance.call(self.getCity().?, "compareTo", .{ EMPTY_STRING }) == 0 and self.getState() == null and Inheritance.call(self.getState().?, "compareTo", .{ EMPTY_STRING }) == 0 and self.getCode() == null and Inheritance.call(self.getCode().?, "compareTo", .{ EMPTY_STRING }) == 0 and self.getCountry() == null and Inheritance.call(self.getCountry().?, "compareTo", .{ EMPTY_STRING }) == 0) {
            return Inheritance.upcast(?*Boolean, Boolean.TRUE);
        }
        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn isValid(self: *Self) ?*Boolean {
        const EMPTY_STRING: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        if (self.getName() == null or Inheritance.call(self.getName().?, "compareTo", .{ EMPTY_STRING }) == 0 or self.getStreet() == null or Inheritance.call(self.getStreet().?, "compareTo", .{ EMPTY_STRING }) == 0 or self.getCity() == null or Inheritance.call(self.getCity().?, "compareTo", .{ EMPTY_STRING }) == 0 or self.getState() == null or Inheritance.call(self.getState().?, "compareTo", .{ EMPTY_STRING }) == 0 or self.getCode() == null or Inheritance.call(self.getCode().?, "compareTo", .{ EMPTY_STRING }) == 0 or self.getCountry() == null or Inheritance.call(self.getCountry().?, "compareTo", .{ EMPTY_STRING }) == 0) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        return Inheritance.upcast(?*Boolean, Boolean.TRUE);
    }
    

    pub fn validationInfo(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Address Failed To Validate - All fields must contain data.<br></br>") });
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.getName(), StreetAddressData.MIN, StreetAddressData.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a valid name") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br></br>") });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.getStreet(), StreetAddressData.MIN, StreetAddressData.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a valid street") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br></br>") });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.getCity(), StreetAddressData.MIN, StreetAddressData.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a valid city") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br></br>") });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.getState(), StreetAddressData.MIN, StreetAddressData.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a valid state") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br></br>") });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.getCode(), StreetAddressData.MIN, StreetAddressData.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a valid zipcode") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br></br>") });
        }
        if (!Inheritance.call(stringValidationUtil.?, "isValidRequired", .{ self.getCountry(), StreetAddressData.MIN, StreetAddressData.MAX })) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Please enter a valid country") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("<br></br>") });
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
    

    pub fn toValidationInfoDoc(self: *Self) ?*Document {
        _ = self;
        return null;
    }
    

    pub fn toValidationInfoNode(self: *Self, document: ?*Document) ?*Node {
        { // try
            const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StreetAddressData.FORM }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.call(self, "toXmlNode", .{ document }) });
            return node;
        }
        // catch (Exception e):
//             if (Inheritance.call(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypes.?.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.SQLLOGGINGERROR })) {
//                 const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//                 _ = Inheritance.call(self.logUtil.?, "put", .{ commonStrings.?.EXCEPTION, self, String.literal("toValidationInfoNode"), e });
//             }
//             return null;
    }
    

    pub fn toHashMap(self: *Self) ?*HashMap {
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ StreetAddressData.ID, self.id });
        _ = Inheritance.call(hashMap.?, "put", .{ StreetAddressData.NAME, self.name });
        _ = Inheritance.call(hashMap.?, "put", .{ StreetAddressData.STREET, self.street });
        _ = Inheritance.call(hashMap.?, "put", .{ StreetAddressData.CITY, self.city });
        _ = Inheritance.call(hashMap.?, "put", .{ StreetAddressData.STATE, self.state });
        _ = Inheritance.call(hashMap.?, "put", .{ StreetAddressData.CODE, self.code });
        _ = Inheritance.call(hashMap.?, "put", .{ StreetAddressData.COUNTRY, self.country });
        return hashMap;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, self.toHashMap());
        const keySet: ?*Set = Inheritance.upcast(?*Set, hashMap.?.keySet());
        const keyArray: []?Object = keySet.?.toArray();
        const size: i32 = @as(i32, @intCast(keyArray.len));
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ StreetAddressData.ADDRESS }));
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            const name: ?*String = Inheritance.cast(?*String, keyArray[@intCast(i)]);
            const value: ?*String = Inheritance.upcast(?*String, Inheritance.call(stringUtil.?, "getNonNull", .{ Inheritance.cast(?*String, Inheritance.call(hashMap.?, "get", .{ name })) }));
            _ = Inheritance.call(node.?, "appendChild", .{ Inheritance.callStatic(ModDomHelper, "createNameValueNodes", .{ document, name, value }) });
            }
        }
        return node;
    }
};

