// 
// To change this license header, choose License Headers in Project Properties. 
// To change this template file, choose Tools | Templates 
// and open the template in the editor.  
// Generated Code Do Not Modify
// package org.allbinary.logic.system.security.licensing

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LockableFeature = @import("org/allbinary/logic/system/security/licensing/LockableFeature.zig").LockableFeature;

pub const InApplicationPurchaseFactory = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.licensing.InApplicationPurchaseFactory";
    var instance: ?*InApplicationPurchaseFactory = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = InApplicationPurchaseFactory.create();
    }
    

    pub fn getInstance() ?*InApplicationPurchaseFactory {
        return Inheritance.upcast(?*InApplicationPurchaseFactory, InApplicationPurchaseFactory.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn init(self: *Self, anyType: ?Object, stateObject: ?Object) void {
        _ = anyType;
        _ = stateObject;
        _ = self;
    }
    

    pub fn onCreate(self: *Self, anyType: ?Object, stateObject: ?Object) void {
        _ = anyType;
        _ = stateObject;
        _ = self;
    }
    

    pub fn onStart(self: *Self) void {
        _ = self;
    }
    

    pub fn onResult(self: *Self, requestCode: i32, resultCode: i32, data: ?Object) void {
        _ = requestCode;
        _ = resultCode;
        _ = data;
        _ = self;
    }
    

    pub fn onSaveState(self: *Self, anyType: ?Object) void {
        _ = anyType;
        _ = self;
    }
    

    pub fn onStop(self: *Self) void {
        _ = self;
    }
    

    pub fn onDestroy(self: *Self) void {
        _ = self;
    }
    

    pub fn purchase(self: *Self, lockableFeature: ?*LockableFeature) void {
        _ = lockableFeature;
        _ = self;
    }
    

    pub fn isPurchased(self: *Self, lockableFeature: ?*LockableFeature) bool {
        _ = lockableFeature;
        _ = self;
        return false;
    }
    

    pub fn add(self: *Self, lockableFeature: ?*LockableFeature) void {
        _ = lockableFeature;
        _ = self;
    }
    

    pub fn getUserName(self: *Self) ?*String {
        _ = self;
        return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn isEnabled(self: *Self) bool {
        _ = self;
        return false;
    }
};

