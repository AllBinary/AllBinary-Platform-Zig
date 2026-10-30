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
// package org.allbinary.logic.visual.transform.template.customizer.widgets.logo

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const ByteArrayInputStream = @import("java/io/ByteArrayInputStream.zig").ByteArrayInputStream;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const FileUtil = @import("org/allbinary/logic/io/file/FileUtil.zig").FileUtil;
const Directory = @import("org/allbinary/logic/io/file/directory/Directory.zig").Directory;
const AbPath = @import("org/allbinary/logic/io/path/AbPath.zig").AbPath;
const FileItem = @import("org/apache/commons/fileupload/FileItem.zig").FileItem;

pub const LogoImageFileUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.visual.transform.template.customizer.widgets.logo.LogoImageFileUtil";
    directory: ?*Directory = null,
    fileName: ?*String = null,
    imageFileAbPath: ?*AbPath = null,

    fn initFields(this: *Self) void {
        this.directory = Inheritance.upcast(?*Directory, Directory.getInstance());
        
        
    }
    

    pub fn create2(imageAbPath: ?*AbPath, imageFile: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.fileName = imageFile;
        this.imageFileAbPath = imageAbPath;
        return this;
    }
    

    // throws Exception
    pub fn saveFiles(self: *Self, fileItem: ?*FileItem) void {
        if (self.fileName == null) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Image File Name Was Null"); break :exception error.Exception; }});
        }
        if (!Inheritance.call(self.directory.?, "create", .{ self.imageFileAbPath })) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Unable to save file to non creatable directory"); break :exception error.Exception; }});
        }
        const originalImageFile: ?*AbFile = Inheritance.upcast(?*AbFile, Inheritance.callStatic(AbFile, "createAbFile", .{ String.plus(Object.toString(Object.of(self.imageFileAbPath)), self.fileName) }));
        _ = originalImageFile.?.createNewFile();
        _ = Inheritance.call(FileUtil.getInstance().?, "write", .{ Inheritance.callStatic(ByteArrayInputStream, "create1", .{ fileItem.?.get() }), originalImageFile });
    }
};

