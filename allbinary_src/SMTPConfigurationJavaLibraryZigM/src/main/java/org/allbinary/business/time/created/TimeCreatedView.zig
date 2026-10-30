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
// package org.allbinary.business.time.created

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const EntryData = @import("org/allbinary/business/entry/EntryData.zig").EntryData;
const DomNodeHelper = @import("org/allbinary/data/tree/dom/DomNodeHelper.zig").DomNodeHelper;
const DomNodeInterface = @import("org/allbinary/data/tree/dom/DomNodeInterface.zig").DomNodeInterface;
const ModDomHelper = @import("org/allbinary/data/tree/dom/ModDomHelper.zig").ModDomHelper;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const TimeCreated = @import("org/allbinary/business/time/created/TimeCreated.zig").TimeCreated;

pub const TimeCreatedView = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.business.time.created.TimeCreatedView";
    timeCreated: ?*TimeCreated = null,
    // Implements DomNodeInterface

    fn initFields(this: *Self) void {
        this.timeCreated = null;
    }
    

    pub fn create1(timeCreated: ?*TimeCreated) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setTimeCreated", .{ timeCreated });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create1(node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setTimeCreated", .{ Inheritance.callStatic(TimeCreated, "create1", .{ Inheritance.callStatic(DomNodeHelper, "getTextNodeValue", .{ node }) }) });
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        return Inheritance.upcast(?*Node, Inheritance.callStatic(ModDomHelper, "createTextNode", .{ document, EntryData.getInstance().?.TIMECREATED, Object.toString(Object.of(self.getTimeCreated())) }));
    }
    

    pub fn getTimeCreated(self: *Self) ?*TimeCreated {
        return self.timeCreated;
    }
    

    pub fn setTimeCreated(self: *Self, timeCreated: ?*TimeCreated) void {
        self.timeCreated = timeCreated;
    }
};

