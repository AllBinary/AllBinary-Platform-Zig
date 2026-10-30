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
// package org.allbinary.logic.communication.log.config

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const BooleanUtil = @import("org/allbinary/logic/java/bool/BooleanUtil.zig").BooleanUtil;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Node = @import("org/w3c/dom/Node.zig").Node;
const LogConfigData = @import("org/allbinary/logic/communication/log/config/LogConfigData.zig").LogConfigData;

pub const LogConfig = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.config.LogConfig";
    isEnabled: bool = false,
    name: ?*String = null,
    description: ?*String = null,
    path: ?*String = null,
    fileName: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
        
        
        
    }
    

    pub fn create4(aName: ?*String, aDescription: ?*String, aPath: ?*String, aFileName: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.isEnabled = false;
        this.name = aName;
        this.description = aDescription;
        this.path = aPath;
        this.fileName = aFileName;
        return this;
    }
    

    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        const enabledValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ EntryData.getInstance().?.ENABLE, node.?.getChildNodes() }));
        const isEnabledString: ?*String = Inheritance.upcast(?*String, Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ enabledValueNode }));
        this.isEnabled = Inheritance.call(BooleanUtil.getInstance().?, "getFromString", .{ isEnabledString });
        const logConfigData: ?*LogConfigData = Inheritance.upcast(?*LogConfigData, LogConfigData.getInstance());
        const nameValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ logConfigData.?.NAME, node.?.getChildNodes() }));
        this.name = Inheritance.upcast(@TypeOf(this.name), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ nameValueNode }));
        const descriptionValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ logConfigData.?.DESCRIPTION, node.?.getChildNodes() }));
        this.description = Inheritance.upcast(@TypeOf(this.description), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ descriptionValueNode }));
        const fileValueNode: ?*Node = Inheritance.upcast(?*Node, Inheritance.callStatic(DomSearchHelper, "getNode", .{ logConfigData.?.FILE, node.?.getChildNodes() }));
        this.fileName = Inheritance.upcast(@TypeOf(this.fileName), Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ fileValueNode }));
        return this;
    }
    

    pub fn getName(self: *Self) ?*String {
        return self.name;
    }
    

    pub fn isEnabled(self: *Self) bool {
        return self.isEnabled;
    }
    

    pub fn enable(self: *Self) void {
        self.isEnabled = true;
    }
    

    pub fn disable(self: *Self) void {
        self.isEnabled = false;
    }
    

    pub fn getDescription(self: *Self) ?*String {
        return self.description;
    }
    

    pub fn getFileName(self: *Self) ?*String {
        return self.fileName;
    }
    

    pub fn setName(self: *Self, value: ?*String) void {
        self.name = value;
    }
    

    pub fn setDescription(self: *Self, value: ?*String) void {
        self.description = value;
    }
    

    pub fn setPath(self: *Self, value: ?*String) void {
        self.path = value;
    }
    

    pub fn setFileName(self: *Self, value: ?*String) void {
        self.fileName = value;
    }
    

    // throws Exception
    pub fn getTypeVector(self: *Self) ?*BasicArrayList {
        _ = self;
        const logKeyVector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        return logKeyVector;
    }
};

