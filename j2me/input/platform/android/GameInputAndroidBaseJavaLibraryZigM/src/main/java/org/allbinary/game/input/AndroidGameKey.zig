// Generated Code Do Not Modify
// package org.allbinary.game.input

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const AndroidGameKey = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.game.input.AndroidGameKey";
    base: Input = undefined,
    

    pub fn create2(keyCode: i32, name: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Inheritance.callStatic(Input, "create2", .{ keyCode, name }).*;
        const inputFactory: ?*InputFactory = Inheritance.upcast(?*InputFactory, InputFactory.getInstance());
        inputFactory.?.inputIntegerArray[@intCast(Inheritance.receiver(this, "getId").getId())] = Inheritance.upcast(@TypeOf(inputFactory.?.inputIntegerArray[@intCast(Inheritance.receiver(this, "getId").getId())]), this);
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.upcast(?*String, String.plus(String.literal("AndroidGameKey: "), self.base.toString()));
    }
    

    pub fn getString(keyCode: i32) ?*String {
        const input: ?*Input = Inheritance.upcast(?*Input, Inheritance.call(InputFactory.getInstance().?, "getInstanceById", .{ keyCode }));
        if (input != null) {
            return Inheritance.upcast(?*String, input.?.getName());
        } else {
            return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        }
    }
};

