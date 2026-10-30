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
const DomSearchHelper = @import("org/allbinary/data/tree/dom/DomSearchHelper.zig").DomSearchHelper;
const Node = @import("org/w3c/dom/Node.zig").Node;
const ImageActionScriptOutput = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutput.zig").ImageActionScriptOutput;
const ImageActionScriptOutputData = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ImageActionScriptOutputData.zig").ImageActionScriptOutputData;
const ProfileActionScriptOutputInterface = @import("org/allbinary/input/automation/module/actions/script/condition/processors/output/ProfileActionScriptOutputInterface.zig").ProfileActionScriptOutputInterface;

pub const ProfileActionScriptOutputFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.actions.script.condition.processors.output.ProfileActionScriptOutputFactory";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    // throws Exception
    pub fn getInstance(node: ?*Node) ?*ProfileActionScriptOutputInterface {
        var profileActionScriptOutputInterface: ?*ProfileActionScriptOutputInterface = null;
        if (Inheritance.callStatic(DomSearchHelper, "getNodeNoThrow", .{ ImageActionScriptOutputData.NAME, node.?.getChildNodes() }) != null) {
            profileActionScriptOutputInterface = Inheritance.upcast(@TypeOf(profileActionScriptOutputInterface), Inheritance.callStatic(ImageActionScriptOutput, "create1", .{ node }));
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("No Such ActionScript Output"); break :exception error.Exception; }});
        }
        return profileActionScriptOutputInterface;
    }
};

