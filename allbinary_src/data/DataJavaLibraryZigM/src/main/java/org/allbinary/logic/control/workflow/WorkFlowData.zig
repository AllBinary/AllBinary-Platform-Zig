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
// package org.allbinary.logic.control.workflow

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const WorkFlowData = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.control.workflow.WorkFlowData";
    WORKFLOWS: ?*String = null,
    WORKFLOW: ?*String = null,
    NAME: ?*String = null,
    DATA: ?*String = null,
    var instance: ?*WorkFlowData = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = WorkFlowData.create();
    }

    fn initFields(this: *Self) void {
        this.WORKFLOWS = String.literal("WORKFLOWS");
        this.WORKFLOW = String.literal("WORKFLOW");
        this.NAME = String.literal("WORKFLOW_NAME");
        this.DATA = String.literal("WORKFLOW_DATA");
    }
    

    pub fn getInstance() ?*WorkFlowData {
        return Inheritance.upcast(?*WorkFlowData, WorkFlowData.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
};

