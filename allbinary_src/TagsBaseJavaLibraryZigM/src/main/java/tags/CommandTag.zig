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
// package tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const CustomTagSupport = @import("tags/CustomTagSupport.zig").CustomTagSupport;
const TagStrings = @import("tags/TagStrings.zig").TagStrings;

pub const CommandTag = struct {
    const Self = @This();
    pub const java_name = "tags.CommandTag";
    base: CustomTagSupport = undefined,
    tagStrings: ?*TagStrings = null,
    command: ?*String = null,

    fn initFields(this: *Self) void {
        this.tagStrings = Inheritance.upcast(?*TagStrings, TagStrings.getInstance());
        this.command = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = CustomTagSupport.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn setCommand(self: *Self, command: ?*String) void {
        self.command = command;
    }
    

    pub fn getCommand(self: *Self) ?*String {
        return self.command;
    }
};

