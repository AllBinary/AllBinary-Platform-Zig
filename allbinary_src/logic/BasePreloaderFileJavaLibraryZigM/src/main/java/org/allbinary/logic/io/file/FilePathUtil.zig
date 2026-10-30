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
// package org.allbinary.logic.io.file

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const FilePathData = @import("org/allbinary/logic/io/file/FilePathData.zig").FilePathData;

//Used to correct user input for paths
pub const FilePathUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.FilePathUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn adjust(pathParameter: ?*String) ?*String {
        var path = pathParameter;
        const abPathData: ?*AbPathData = Inheritance.upcast(?*AbPathData, AbPathData.getInstance());
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        const filePathData: ?*FilePathData = Inheritance.upcast(?*FilePathData, FilePathData.getInstance());
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ path })) {
            return Inheritance.upcast(?*String, filePathData.?.PATH_START);
        }
        path = Inheritance.upcast(@TypeOf(path), Inheritance.call(path.?, "replace", .{ abPathData.?.SEPARATORCHAR, filePathData.?.SEPARATORCHAR }));
        return path;
    }
};

