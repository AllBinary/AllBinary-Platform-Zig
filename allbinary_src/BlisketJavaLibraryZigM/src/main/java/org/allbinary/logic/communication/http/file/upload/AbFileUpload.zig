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
// package org.allbinary.logic.communication.http.file.upload

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
// const IOException = @import("java/io/IOException.zig").IOException;
// const HttpServletRequest = @import("javax/servlet/http/HttpServletRequest.zig").HttpServletRequest;
const FileItemFactory = @import("org/apache/commons/fileupload/FileItemFactory.zig").FileItemFactory;
const FileItemIterator = @import("org/apache/commons/fileupload/FileItemIterator.zig").FileItemIterator;
const FileUpload = @import("org/apache/commons/fileupload/FileUpload.zig").FileUpload;
const FileUploadException = @import("org/apache/commons/fileupload/FileUploadException.zig").FileUploadException;
const ServletRequestContext = @import("org/apache/commons/fileupload/servlet/ServletRequestContext.zig").ServletRequestContext;

pub const AbFileUpload = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.http.file.upload.AbFileUpload";
    base: FileUpload = undefined,
    

    pub fn create1(fileItemFactory: ?*FileItemFactory) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(FileUpload, "create1", .{ fileItemFactory }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws FileUploadException, IOException
    pub fn getItemIterator(self: *Self, request: ?*HttpServletRequest) ?*FileItemIterator {
        return Inheritance.upcast(?*FileItemIterator, Inheritance.call(&self.base, "getItemIterator", .{ Inheritance.callStatic(ServletRequestContext, "create1", .{ request }) }));
    }
};

