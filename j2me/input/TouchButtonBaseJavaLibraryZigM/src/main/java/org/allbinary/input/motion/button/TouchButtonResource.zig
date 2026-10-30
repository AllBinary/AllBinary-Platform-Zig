// 
// To change this license header, choose License Headers in Project Properties. 
// To change this template file, choose Tools | Templates 
// and open the template in the editor.  
// Generated Code Do Not Modify
// package org.allbinary.input.motion.button

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const TouchButtonResource = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.motion.button.TouchButtonResource";
    RESOURCE: ?*String = null,
    HINT: ?*String = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(resource: ?*String, hint: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.RESOURCE = resource;
        this.HINT = hint;
        return this;
    }
};

