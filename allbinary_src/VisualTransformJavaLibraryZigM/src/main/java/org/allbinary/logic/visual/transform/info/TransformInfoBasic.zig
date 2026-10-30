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
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
// const PageContext = @import("javax/servlet/jsp/PageContext.zig").PageContext;
const AbContext = @import("org/allbinary/business/context/AbContext.zig").AbContext;
const StoreFrontInterface = @import("org/allbinary/business/context/modules/storefront/StoreFrontInterface.zig").StoreFrontInterface;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const TransformInfoObjectConfigInterface = @import("org/allbinary/logic/visual/transform/info/objectConfig/TransformInfoObjectConfigInterface.zig").TransformInfoObjectConfigInterface;
const Document = @import("org/w3c/dom/Document.zig").Document;
const TransformInfoHttpInterface = @import("org/allbinary/logic/visual/transform/info/TransformInfoHttpInterface.zig").TransformInfoHttpInterface;

//Hack class should not exist
pub const TransformInfoBasic = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.info.TransformInfoBasic";
    pub const java_interfaces = .{ TransformInfoHttpInterface };
    base: AbContext = undefined,
    storeFrontInterface: ?*StoreFrontInterface = null,
    // Implements TransformInfoHttpInterface

    fn initFields(this: *Self) void {
        _ = this;
        
    }
    

    pub fn create3(storeFrontInterface: ?*StoreFrontInterface, propertiesHashMap: ?*HashMap, pageContext: ?*PageContext) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(AbContext, "create2", .{ propertiesHashMap, pageContext }).*;
        this.initFields();
        this.storeFrontInterface = storeFrontInterface;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getStoreName(self: *Self) ?*String {
        return Inheritance.upcast(?*String, Inheritance.receiver(self.storeFrontInterface.?, "getName").getName());
    }
    

    pub fn log(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED);
    }
    

    pub fn override(self: *Self, hashMap: ?*HashMap) void {
        _ = hashMap;
        _ = self;
    }
    

    pub fn getName(self: *Self) ?*String {
        _ = self;
        return null;
    }
    

    pub fn getObjectFile(self: *Self) ?*String {
        _ = self;
        return null;
    }
    

    pub fn getObject(self: *Self) ?Object {
        _ = self;
        return null;
    }
    

    pub fn getObjectConfigInterface(self: *Self) ?*TransformInfoObjectConfigInterface {
        _ = self;
        return null;
    }
    

    pub fn setObjectConfigInterface(self: *Self, transformInfoObjectConfigInterface: ?*TransformInfoObjectConfigInterface) void {
        _ = transformInfoObjectConfigInterface;
        _ = self;
    }
    

    pub fn getTemplateFilePath(self: *Self) ?*AbPath {
        _ = self;
        return null;
    }
    

    pub fn getTemplateFile(self: *Self) ?*String {
        _ = self;
        return null;
    }
    

    pub fn getTemplate(self: *Self) ?*String {
        _ = self;
        return null;
    }
    

    pub fn getDataFilePath(self: *Self) ?*AbPath {
        _ = self;
        return null;
    }
    

    pub fn getDataFile(self: *Self) ?*String {
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn getDataDocument(self: *Self) ?*Document {
        _ = self;
        std.debug.panic("{any}", .{exception: { _ = Inheritance.fieldPointer(self, "commonStrings").*.?.NOT_IMPLEMENTED; break :exception error.Exception; }});
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
    }
    

    pub fn setStoreName(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
    }
    

    pub fn setObjectFile(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
    }
    

    pub fn setObject(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
    

    pub fn setObjectConfigFile(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
    }
    

    pub fn setTemplateFile(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
    }
    

    pub fn setTemplate(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
    }
    

    pub fn setDataFile(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
    }
    

    pub fn setData(self: *Self, value: ?*String) void {
        _ = value;
        _ = self;
    }
    

    pub fn setChild(self: *Self) void {
        _ = self;
    }
    

    pub fn isChild(self: *Self) bool {
        _ = self;
        return true;
    }
    

    pub fn getImportUriPath(self: *Self) ?*String {
        _ = self;
        return null;
    }
    

    pub fn setImportUriPath(self: *Self, importUriPath: ?*String) void {
        _ = importUriPath;
        _ = self;
    }
    

    // throws Exception
    pub fn getKey(self: *Self) ?Object {
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn toVector(self: *Self) ?*BasicArrayList {
        _ = self;
        return null;
    }
    

    // throws Exception
    pub fn toHashMap(self: *Self) ?*HashMap {
        _ = self;
        return null;
    }
};

