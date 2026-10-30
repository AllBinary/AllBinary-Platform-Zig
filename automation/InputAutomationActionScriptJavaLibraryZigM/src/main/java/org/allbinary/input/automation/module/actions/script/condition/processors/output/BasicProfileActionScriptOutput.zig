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
// package org.allbinary.input.automation.module.actions.script.condition.processors.output

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicProfileActionScriptProcessor = @import("org/allbinary/input/automation/actions/script/condition/processors/BasicProfileActionScriptProcessor.zig").BasicProfileActionScriptProcessor;
const Document = @import("org/w3c/dom/Document.zig").Document;
const Node = @import("org/w3c/dom/Node.zig").Node;
const GenericProfileActionScriptOutputData = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/GenericProfileActionScriptOutputData.zig").GenericProfileActionScriptOutputData;
const ProfileActionScriptOutputInterface = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputInterface.zig").ProfileActionScriptOutputInterface;

pub const BasicProfileActionScriptOutput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.actions.script.condition.processors.output.BasicProfileActionScriptOutput";
    pub const java_interfaces = .{ ProfileActionScriptOutputInterface };
    base: BasicProfileActionScriptProcessor = undefined,
    // Implements ProfileActionScriptOutputInterface
    

    pub fn create2(label: ?*String, node: ?*Node) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptProcessor, "create2", .{ label, node }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn create1(label: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BasicProfileActionScriptProcessor, "create1", .{ label }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn toXmlNode(self: *Self, document: ?*Document) ?*Node {
        _ = self;
        const node: ?*Node = Inheritance.upcast(?*Node, Inheritance.call(document.?, "createElement", .{ GenericProfileActionScriptOutputData.NAME }));
        return node;
    }
};

