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
// package org.allbinary.input.automation.module

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;

pub const DefaultListModelHelper = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.input.automation.module.DefaultListModelHelper";
    defaultListModel: ?*DefaultListModel = null,
    vector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        _ = this;
        
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.vector = Inheritance.upcast(@TypeOf(this.vector), BasicArrayListD.create());
        this.defaultListModel = DefaultListModel.create();
        return this;
    }
    

    pub fn initDefaultModelList(self: *Self) void {
        self.defaultListModel = DefaultListModel.create();
        const size: i32 = self.vector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const moduleName: ?*String = Inheritance.cast(?*String, Inheritance.call(self.vector.?, "get", .{ index }));
            _ = Inheritance.call(self.defaultListModel.?, "addElement", .{ moduleName });
            }
        }
    }
    

    pub fn getListModel(self: *Self) ?*ListModel {
        return Inheritance.cast(?*ListModel, self.defaultListModel);
    }
    

    pub fn add(self: *Self, string: ?*String) void {
        _ = Inheritance.call(self.vector.?, "add", .{ string });
    }
    

    pub fn remove(self: *Self, string: ?*String) void {
        _ = Inheritance.call(self.vector.?, "remove", .{ string });
    }
};

