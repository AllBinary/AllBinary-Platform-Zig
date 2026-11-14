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
// package org.allbinary

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const IOException = @import("java/io/IOException.zig").IOException;
const InputStream = @import("java/io/InputStream.zig").InputStream;
const Form = @import("javax/microedition/lcdui/Form.zig").Form;
const Image = @import("javax/microedition/lcdui/Image.zig").Image;
const Item = @import("javax/microedition/lcdui/Item.zig").Item;
const Manager = @import("javax/microedition/media/Manager.zig").Manager;
const MediaException = @import("javax/microedition/media/MediaException.zig").MediaException;
const Player = @import("javax/microedition/media/Player.zig").Player;

//like microemu-playn, so the languages without overloading can be generated. The J2ME version uses the MIDP overloads.
pub const MIDPUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.MIDPUtil";
    var instance: ?*MIDPUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = MIDPUtil.create();
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getInstance() ?*MIDPUtil {
        return Inheritance.upcast(?*MIDPUtil, MIDPUtil.instance);
    }
    

    pub fn createImageWH(self: *Self, width: i32, height: i32) ?*Image {
        _ = self;
        return Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImageWH", .{ width, height }));
    }
    

    pub fn createImageFromByteArray(self: *Self, imageData: []i8, imageOffset: i32, imageLength: i32) ?*Image {
        _ = self;
        return Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImageFromByteArray", .{ imageData, imageOffset, imageLength }));
    }
    

    // throws IOException
    pub fn createImageFromInputStream(self: *Self, inputStream: ?*InputStream) ?*Image {
        _ = self;
        return Inheritance.upcast(?*Image, Inheritance.callStatic(Image, "createImageFromInputStream", .{ inputStream }));
    }
    

    // throws IOException, MediaException
    pub fn createPlayerFromInputStream(self: *Self, inputStream: ?*InputStream, @"type": ?*String) ?*Player {
        _ = self;
        return Inheritance.upcast(?*Player, Inheritance.callStatic(Manager, "createPlayerFromInputStream", .{ inputStream, @"type" }));
    }
    

    pub fn appendItem(self: *Self, form: ?*Form, item: ?*Item) i32 {
        _ = self;
        return Inheritance.call(form.?, "appendItem", .{ item });
    }
};

