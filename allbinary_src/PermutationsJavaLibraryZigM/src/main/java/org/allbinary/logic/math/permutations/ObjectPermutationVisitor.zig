// Generated Code Do Not Modify
// package org.allbinary.logic.math.permutations

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const Visitor = @import("org/allbinary/logic/util/visitor/Visitor.zig").Visitor;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const System = @import("java/lang/System.zig").System;

pub const ObjectPermutationVisitor = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.math.permutations.ObjectPermutationVisitor";
    base: Visitor = undefined,
    data: []?Object = &.{},
    stringBuilder: ?*StringMaker = null,

    fn initFields(this: *Self) void {
        
        this.stringBuilder = StringMaker.create();
    }
    

    pub fn create1(data: []?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = Visitor.create().*;
        this.initFields();
        this.data = data;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn visit(self: *Self, anyType: ?Object) ?Object {
        _ = anyType;
        _ = Inheritance.call(self.stringBuilder.?, "delete", .{ 0, self.stringBuilder.?.length() });
        _ = Inheritance.call(self, "print", .{ self.data, self.stringBuilder });
        return Inheritance.upcast(?Object, NullUtil.getInstance().?.NULL_OBJECT);
    }
    

    pub fn print(self: *Self, data: []?Object) void {
        const stringBuilder: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(self, "print", .{ data, stringBuilder });
    }
    

    pub fn print2(self: *Self, data: []?Object, stringBuilder: ?*StringMaker) void {
        const tsUtil: ?*TsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        const size: i32 = @as(i32, @intCast(data.len));
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            _ = Inheritance.call(stringBuilder.?, "appendint", .{ @as(i32, @intCast(Inheritance.call(tsUtil.?, "hashCode", .{ data[@intCast(i)] }))) });
            _ = Inheritance.call(stringBuilder.?, "append", .{ CommonSeps.getInstance().?.SPACE });
            }
        }
        _ = std.debug.print("{s}\n", .{String.text(Object.toString(Object.of(stringBuilder)))});
    }
};

