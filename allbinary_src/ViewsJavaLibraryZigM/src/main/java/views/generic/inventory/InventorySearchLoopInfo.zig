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
// package views.generic.inventory

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;

pub const InventorySearchLoopInfo = struct {
    const Self = @This();
    pub const java_name = "views.generic.inventory.InventorySearchLoopInfo";
    lastPage: i32 = 0,
    currentPage: i32 = 0,
    numberOfResultsOnCurrentPage: i32 = 0,
    numberOfResults: i32 = 0,
    CURRENT: ?*String = null,
    NUM: ?*String = null,
    LAST: ?*String = null,

    fn initFields(this: *Self) void {
        this.lastPage = -1;
        this.currentPage = -1;
        this.numberOfResultsOnCurrentPage = 0;
        this.numberOfResults = 0;
        this.CURRENT = String.literal("current: ");
        this.NUM = String.literal(" num: ");
        this.LAST = String.literal(" last: ");
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.CURRENT });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.currentPage });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.NUM });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.numberOfResults });
        _ = Inheritance.call(stringBuffer.?, "append", .{ self.LAST });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.lastPage });
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

