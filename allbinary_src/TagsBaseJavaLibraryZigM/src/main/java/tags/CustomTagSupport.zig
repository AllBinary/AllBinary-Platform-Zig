// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// const TagSupport = @import("javax/servlet/jsp/tagext/TagSupport.zig").TagSupport;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const TagStrings = @import("tags/TagStrings.zig").TagStrings;

pub const CustomTagSupport = struct {
    const Self = @This();
    pub const java_name = "tags.CustomTagSupport";
    base: TagSupport = undefined,
    commonStrings: ?*CommonStrings = null,
    tagStrings: ?*TagStrings = null,

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.tagStrings = Inheritance.upcast(?*TagStrings, TagStrings.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = TagSupport.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
};

