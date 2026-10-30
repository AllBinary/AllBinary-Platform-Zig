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
// package org.allbinary.media.image

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const ImageUnifierCell = @import("org/allbinary/media/image/ImageUnifierCell.zig").ImageUnifierCell;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const ImageUnifierProperties = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageUnifierProperties";
    rows: ?*Integer = null,
    columns: ?*Integer = null,
    imageUnifierCell: ?*ImageUnifierCell = null,

    fn initFields(this: *Self) void {
        this.rows = null;
        this.columns = null;
        this.imageUnifierCell = null;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getWidth(self: *Self) i32 {
        return Inheritance.receiverOf(self.getColumns().?, "intValue").intValue() * Inheritance.receiverOf(Inheritance.receiverOf(self.getImageUnifierCell().?, "getWidth").getWidth().?, "intValue").intValue();
    }
    

    pub fn getHeight(self: *Self) i32 {
        return Inheritance.receiverOf(self.getRows().?, "intValue").intValue() * Inheritance.receiverOf(Inheritance.receiverOf(self.getImageUnifierCell().?, "getHeight").getHeight().?, "intValue").intValue();
    }
    

    pub fn getRows(self: *Self) ?*Integer {
        return self.rows;
    }
    

    pub fn setRows(self: *Self, rows: ?*Integer) void {
        self.rows = rows;
    }
    

    pub fn getColumns(self: *Self) ?*Integer {
        return self.columns;
    }
    

    pub fn setColumns(self: *Self, columns: ?*Integer) void {
        self.columns = columns;
    }
    

    pub fn getImageUnifierCell(self: *Self) ?*ImageUnifierCell {
        return self.imageUnifierCell;
    }
    

    pub fn setImageUnifierCell(self: *Self, imageUnifierCell: ?*ImageUnifierCell) void {
        self.imageUnifierCell = imageUnifierCell;
    }
};

