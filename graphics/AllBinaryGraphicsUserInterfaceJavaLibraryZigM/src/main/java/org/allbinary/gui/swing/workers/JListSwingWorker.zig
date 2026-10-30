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
// package org.allbinary.gui.swing.workers

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");

pub const JListSwingWorker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.gui.swing.workers.JListSwingWorker";
    base: SwingWorker = undefined,
    jList: ?*JList = null,
    listModel: ?*ListModel = null,

    fn initFields(this: *Self) void {
        this.jList = null;
        this.listModel = null;
    }
    

    pub fn create2(jList: ?*JList, listModel: ?*ListModel) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = SwingWorker.create().*;
        this.initFields();
        _ = Inheritance.call(this, "setJList", .{ jList });
        _ = Inheritance.call(this, "setListModel", .{ listModel });
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn doInBackground(self: *Self) ?Object {
        _ = self;
        return null;
    }
    

    pub fn done(self: *Self) void {
        _ = Inheritance.call(self.getJList().?, "setModel", .{ self.getListModel() });
    }
    

    pub fn getJList(self: *Self) ?*JList {
        return self.jList;
    }
    

    pub fn setJList(self: *Self, jList: ?*JList) void {
        self.jList = jList;
    }
    

    pub fn getListModel(self: *Self) ?*ListModel {
        return self.listModel;
    }
    

    pub fn setListModel(self: *Self, listModel: ?*ListModel) void {
        self.listModel = listModel;
    }
};

