// 
// To change this license header, choose License Headers in Project Properties. 
// To change this template file, choose Tools | Templates 
// and open the template in the editor.  
// Generated Code Do Not Modify
// package org.allbinary.input.automation.actions.script

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JTreeInterface = @import("org/allbinary/input/automation/actions/script/JTreeInterface.zig").JTreeInterface;

pub const JTreeInterfaceFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.actions.script.JTreeInterfaceFactory";
    jTreeInterface: ?*JTreeInterface = null,
    var instance: ?*JTreeInterfaceFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = JTreeInterfaceFactory.create();
    }

    fn initFields(this: *Self) void {
        this.jTreeInterface = null;
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*JTreeInterfaceFactory {
        return Inheritance.upcast(?*JTreeInterfaceFactory, JTreeInterfaceFactory.instance);
    }
    

    pub fn set(self: *Self, jTreeInterface: ?*JTreeInterface) void {
        self.jTreeInterface = jTreeInterface;
    }
    

    pub fn getJTreeInterface(self: *Self) ?*JTreeInterface {
        return self.jTreeInterface;
    }
};

