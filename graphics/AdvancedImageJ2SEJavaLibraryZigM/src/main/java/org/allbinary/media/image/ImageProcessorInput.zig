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
// const BufferedImage = @import("java/awt/image/BufferedImage.zig").BufferedImage;
const File = @import("java/io/File.zig").File;

pub const ImageProcessorInput = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.media.image.ImageProcessorInput";
    bufferedImageArray: []?*BufferedImage = &.{},
    files: []?*File = &.{},

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create2(files: []?*File, bufferedImageArray: []?*BufferedImage) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        
        this.initFields();
        this.bufferedImageArray = bufferedImageArray;
        this.files = files;
        return this;
    }
    

    pub fn getBufferedImageArray(self: *Self) []?*BufferedImage {
        return self.bufferedImageArray;
    }
    

    pub fn getFiles(self: *Self) []?*File {
        return self.files;
    }
};

