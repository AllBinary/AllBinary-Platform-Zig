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
// package org.allbinary.logic.java.bool

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const BooleanFactory = @import("org/allbinary/logic/java/bool/BooleanFactory.zig").BooleanFactory;

pub const BooleanUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.bool.BooleanUtil";
    tsUtil: ?*TsUtil = null,
    var instance: ?*BooleanUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = BooleanUtil.create();
    }

    fn initFields(this: *Self) void {
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
    }
    

    pub fn getInstance() ?*BooleanUtil {
        return Inheritance.upcast(?*BooleanUtil, BooleanUtil.instance);
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    // throws Exception
    pub fn getFromString(self: *Self, booleanString: ?*String) bool {
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        const booleanFactory: ?*BooleanFactory = Inheritance.upcast(?*BooleanFactory, BooleanFactory.getInstance());
        if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ booleanString })) {
            return false;
        }
        const booleanStringLowerCase: ?*String = Inheritance.upcast(?*String, booleanString.?.toLowerCase());
        if (Inheritance.call(self.tsUtil.?, "compareTo", .{ booleanStringLowerCase, booleanFactory.?.TRUE_STRING }) == 0) {
            return true;
        } else if (Inheritance.call(self.tsUtil.?, "compareTo", .{ booleanStringLowerCase, booleanFactory.?.FALSE_STRING }) == 0) {
            return false;
        } else {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Invalid booleanString - Must be true or false"); break :exception error.Exception; }});
        }
    }
    

    // throws Exception
    pub fn isStringBoolean(self: *Self, booleanString: ?*String) bool {
        _ = self;
        const booleanFactory: ?*BooleanFactory = Inheritance.upcast(?*BooleanFactory, BooleanFactory.getInstance());
        const booleanStringLowerCase: ?*String = Inheritance.upcast(?*String, booleanString.?.toLowerCase());
        if (Inheritance.call(booleanStringLowerCase.?, "compareTo", .{ booleanFactory.?.TRUE_STRING }) == 0 or Inheritance.call(booleanStringLowerCase.?, "compareTo", .{ booleanFactory.?.FALSE_STRING }) == 0) {
            return true;
        }
        return false;
    }
    

    pub fn toStringFromBooleanArray(self: *Self, booleanArray: []bool) ?*String {
        _ = self;
        const stringMaker: ?*StringMaker = StringMaker.create();
        const size: i32 = @as(i32, @intCast(booleanArray.len));
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            _ = Inheritance.call(stringMaker.?, "appendboolean", .{ booleanArray[@intCast(index)] });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringMaker)));
    }
};

