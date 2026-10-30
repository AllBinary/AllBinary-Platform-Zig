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
// package org.allbinary.logic.communication.log

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const Log = @import("org/allbinary/logic/communication/log/Log.zig").Log;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;

pub const LogBuffer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.communication.log.LogBuffer";
    logUtil: ?*LogUtil = null,
    logEntryVector: ?*BasicArrayList = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.logEntryVector = Inheritance.upcast(@TypeOf(this.logEntryVector), BasicArrayListD.create());
        return this;
    }
    

    pub fn add(self: *Self, log: ?*Log) void {
        _ = Inheritance.call(self.logEntryVector.?, "add", .{ log });
    }
    

    pub fn logAll(self: *Self) void {
        const size: i32 = self.logEntryVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            const log: ?*Log = Inheritance.cast(?*Log, Inheritance.call(self.logEntryVector.?, "get", .{ index }));
            _ = Inheritance.call(self.logUtil.?, "putL", .{ log });
            }
        }
    }
};

