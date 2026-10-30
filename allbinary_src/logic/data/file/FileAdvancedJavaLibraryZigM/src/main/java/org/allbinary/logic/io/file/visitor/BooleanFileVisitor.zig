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
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const AbFile = @import("org/allbinary/logic/io/file/AbFile.zig").AbFile;
const VisitorInterface = @import("org/allbinary/logic/util/visitor/VisitorInterface.zig").VisitorInterface;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const Boolean = @import("java/lang/Boolean.zig").Boolean;

pub const BooleanFileVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.io.file.visitor.BooleanFileVisitor";
    commonStrings: ?*CommonStrings = null,
    filterStringBasicArrayList: ?*BasicArrayList = null,
    // Implements VisitorInterface

    fn initFields(this: *Self) void {
        this.commonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance());
        this.filterStringBasicArrayList = null;
    }
    

    pub fn create1(filterStringBasicArrayList: ?*BasicArrayList) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        _ = Inheritance.call(this, "setFilterStringBasicArrayList", .{ filterStringBasicArrayList });
        _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("Filter BasicArrayList: "), Object.toString(Object.of(this.getFilterStringBasicArrayList()))), this, this.commonStrings.?.CONSTRUCTOR });
        return this;
    }
    

    pub fn visit(self: *Self, anyType: ?Object) ?Object {
        return Inheritance.cast(?Object, Inheritance.call(self, "visit", .{ Inheritance.cast(?*AbFile, anyType) }));
    }
    

    // Java overloaded method with the same parameter count: Zig needs a different name
    pub fn visit(self: *Self, file: ?*AbFile) ?*Boolean {
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, self.getFilterStringBasicArrayList());
        const size: i32 = list.?.size();
        var nextFileFilterString: ?*String = null;
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            nextFileFilterString = Inheritance.cast(?*String, Inheritance.call(list.?, "get", .{ index }));
            if (Inheritance.receiverOf(Inheritance.call(self, "visit", .{ file, nextFileFilterString }).?, "booleanValue").booleanValue()) {
                return Inheritance.upcast(?*Boolean, Boolean.TRUE);
            }
            }
        }
        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
    

    pub fn getFilterStringBasicArrayList(self: *Self) ?*BasicArrayList {
        return self.filterStringBasicArrayList;
    }
    

    pub fn setFilterStringBasicArrayList(self: *Self, filterStringBasicArrayList: ?*BasicArrayList) void {
        self.filterStringBasicArrayList = filterStringBasicArrayList;
    }
    

    pub fn visit2(self: *Self, file: ?*AbFile, fileNameString: ?*String) ?*Boolean {
        _ = file;
        _ = fileNameString;
        _ = self;
        return Inheritance.upcast(?*Boolean, Boolean.FALSE);
    }
};

