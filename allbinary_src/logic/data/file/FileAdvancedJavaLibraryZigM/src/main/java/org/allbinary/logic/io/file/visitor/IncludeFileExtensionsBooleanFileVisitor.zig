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
// package org.allbinary.logic.io.file.visitor

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BooleanFileVisitor = @import("org/allbinary/logic/io/file/visitor/BooleanFileVisitor.zig").BooleanFileVisitor;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const IncludeFileExtensionsBooleanFileVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.visitor.IncludeFileExtensionsBooleanFileVisitor";
    base: BooleanFileVisitor = undefined,
    

    pub fn create1(filterStringBasicArrayList: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(BooleanFileVisitor, "create1", .{ filterStringBasicArrayList }).*;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn visit(self: *Self, file: ?*AbFile) ?*Boolean {
        if (Inheritance.receiverOf(Inheritance.receiver(self, "getFilterStringBasicArrayList").getFilterStringBasicArrayList().?, "size").size() == 0) {
            return Inheritance.upcast(?*Boolean, Boolean.FALSE);
        }
        return Inheritance.upcast(?*Boolean, Inheritance.call(&self.base, "visit", .{ file }));
    }
    

    pub fn visit2(self: *Self, file: ?*AbFile, fileNameString: ?*String) ?*Boolean {
        _ = self;
        const fileNameAndExtension: ?*String = Inheritance.upcast(?*String, file.?.getPath());
        if (fileNameAndExtension.?.length() > fileNameString.?.length()) {
            const startIndex: i32 = fileNameAndExtension.?.length() - fileNameString.?.length();
            const fileName: ?*String = Inheritance.upcast(?*String, Inheritance.call(fileNameAndExtension.?, "substring", .{ startIndex }));
            if (Inheritance.call(fileName.?, "compareTo", .{ fileNameString }) == 0) {
                return Inheritance.upcast(?*Boolean, Boolean.TRUE);
            }
        }
        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
};

