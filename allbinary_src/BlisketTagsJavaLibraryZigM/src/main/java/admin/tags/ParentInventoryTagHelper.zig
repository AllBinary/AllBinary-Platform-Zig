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
// package admin.tags

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const Tag = @import("javax/servlet/jsp/tagext/Tag.zig").Tag;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const ParentInventoryTagHelper = struct {
    const Self = @This();
    pub const java_name = "admin.tags.ParentInventoryTagHelper";
    var instance: ?*ParentInventoryTagHelper = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = ParentInventoryTagHelper.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*ParentInventoryTagHelper {
        return Inheritance.upcast(?*ParentInventoryTagHelper, ParentInventoryTagHelper.instance);
    }
    

    // throws Exception
    pub fn isValid(self: *Self, tagClass: ?Object, parentTag: ?*Tag) void {
        _ = tagClass;
        _ = self;
        if (parentTag == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Must have parent tag."); break :exception error.Exception; }});
        } else if (!(Object.instanceOf(Object.of(parentTag), HelperTag))) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("Must have at least a ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("tags.HelperTag") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal(" as parent") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("and not: ") });
            _ = Inheritance.call(stringBuffer.?, "append", .{ String.fromBytes(@as(*const Object.Class, @ptrCast(@alignCast(@as(?*anyopaque, @ptrCast(@constCast(Object.of(parentTag).?.class))).?))).name) });
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.Exception; }});
        }
    }
};

