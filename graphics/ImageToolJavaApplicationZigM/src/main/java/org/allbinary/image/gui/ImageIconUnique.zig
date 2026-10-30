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
// package org.allbinary.image.gui

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;

pub const ImageIconUnique = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.image.gui.ImageIconUnique";
    base: ImageIcon = undefined,
    id: i32 = 0,

    fn initFields(this: *Self) void {
        this.id = 0;
    }
    

    pub fn create2(bufferedImage: ?*BufferedImage, index: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(ImageIcon, "create1", .{ bufferedImage }).*;
        this.initFields();
        _ = Inheritance.call(this, "setId", .{ index });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn getId(self: *Self) i32 {
        return self.id;
    }
    

    pub fn setId(self: *Self, id: i32) void {
        self.id = id;
    }
};

