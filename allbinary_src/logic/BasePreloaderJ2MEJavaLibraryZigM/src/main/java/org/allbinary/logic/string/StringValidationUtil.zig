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
// package org.allbinary.logic.string

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const StringValidationUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.string.StringValidationUtil";
    stringUtil: ?*StringUtil = null,
    tsUtil: ?*TsUtil = null,
    var instance: ?*StringValidationUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = StringValidationUtil.create();
    }

    fn initFields(this: *Self) void {
        this.stringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
    }
    

    pub fn getInstance() ?*StringValidationUtil {
        return Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn containsSpaces(self: *Self, value: ?*String) bool {
        _ = self;
        if (Inheritance.call(value.?, "indexOf", .{ ' ' }) >= 0) {
            return true;
        }
        return false;
    }
    

    pub fn isNumber(self: *Self, value: ?*String) bool {
        var numberOfDecimalPoints: i32 = 0;
        {
            var index: i32 = 0;
            while (index < value.?.length()) : (index += 1) {
            const digit: u16 = Inheritance.call(value.?, "charAt", .{ index });
            if (!Inheritance.call(self, "isNumberFromChar", .{ digit }) and digit != '.') {
                return false;
            }
            if (digit == '.') {
                numberOfDecimalPoints += 1;
                if (numberOfDecimalPoints > 1) {
                    return false;
                }
            }
            }
        }
        return true;
    }
    

    pub fn isNumberFromChar(self: *Self, digit: u16) bool {
        _ = self;
        if (digit != '0' and digit != '1' and digit != '2' and digit != '3' and digit != '4' and digit != '5' and digit != '6' and digit != '7' and digit != '8' and digit != '9') {
            return false;
        }
        return true;
    }
    

    pub fn isValidRequired(self: *Self, value: ?*String, min: i32, max: i32) bool {
        _ = self;
        if (value == null or value.?.length() < min or value.?.length() > max) {
            return false;
        }
        return true;
    }
    

    pub fn isValidRequiredNumber(self: *Self, value: ?*String, min: i32, max: i32) bool {
        if (Inheritance.call(self, "isEmpty", .{ value }) or value.?.length() < min or value.?.length() > max) {
            return false;
        }
        if (!Inheritance.call(self, "isNumber", .{ value })) {
            return false;
        }
        return true;
    }
    

    pub fn isValidNotRequired(self: *Self, value: ?*String, min: i32, max: i32) bool {
        _ = self;
        if (value != null) {
            if (value.?.length() < min or value.?.length() > max) {
                return false;
            }
        }
        return true;
    }
    

    pub fn isValidNotRequiredNumber(self: *Self, value: ?*String, min: i32, max: i32) bool {
        if (value != null) {
            if (Inheritance.call(self.tsUtil.?, "compareTo", .{ value, self.stringUtil.?.NULL_STRING }) == 0 or value.?.length() < min or value.?.length() > max) {
                return false;
            }
            if (!Inheritance.call(self, "isNumber", .{ value })) {
                return false;
            }
        }
        return true;
    }
    

    pub fn isEmpty(self: *Self, string: ?*String) bool {
        if (string != null and Inheritance.call(self.tsUtil.?, "compareTo", .{ string, self.stringUtil.?.NULL_STRING }) != 0 and Inheritance.call(self.tsUtil.?, "compareTo", .{ string, self.stringUtil.?.EMPTY_STRING }) != 0) {
            return false;
        } else {
            return true;
        }
    }
};

