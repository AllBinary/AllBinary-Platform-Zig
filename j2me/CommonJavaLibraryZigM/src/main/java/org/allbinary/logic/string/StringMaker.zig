// Generated Code Do Not Modify
// package org.allbinary.logic.string

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;
const Long = @import("java/lang/Long.zig").Long;
const Float = @import("java/lang/Float.zig").Float;

pub const StringMaker = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.string.StringMaker";
    charArray: []u16 = &.{},
    currentLength: i32 = 0,

    fn initFields(this: *Self) void {
        
        this.currentLength = 0;
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.charArray = Inheritance.upcast(@TypeOf(this.charArray), array_N65726: { const array_N65726_array = allocator.alloc(u16, @intCast(20)) catch unreachable; @memset(array_N65726_array, 0); break :array_N65726 array_N65726_array; });
        return this;
    }
    

    pub fn append(self: *Self, string: ?*String) ?*StringMaker {
        const stringLength: i32 = string.?.length();
        _ = Inheritance.call(self, "ensureCapacity", .{ self.currentLength + stringLength });
        _ = Inheritance.call(string.?, "getChars", .{ 0, stringLength, self.charArray, self.currentLength });
        self.currentLength += stringLength;
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn appendchar(self: *Self, c: u16) ?*StringMaker {
        _ = Inheritance.call(self, "ensureCapacity", .{ self.currentLength + 1 });
        self.charArray[@intCast(value_N66076: { const value_N66076_value = self.currentLength; self.currentLength += 1; break :value_N66076 value_N66076_value; })] = c;
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn appendCharArray(self: *Self, charArray: []u16, start: i32, end: i32) ?*StringMaker {
        _ = Inheritance.call(self, "ensureCapacity", .{ self.currentLength + (end - start) });
        {
            var index: i32 = start;
            while (index < end) : (index += 1) {
            self.charArray[@intCast(value_N66266: { const value_N66266_value = self.currentLength; self.currentLength += 1; break :value_N66266 value_N66266_value; })] = charArray[@intCast(index)];
            }
        }
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn appendbyte(self: *Self, b: i8) ?*StringMaker {
        _ = Inheritance.call(self, "append", .{ String.valueOf(b) });
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn appendshort(self: *Self, b: i16) ?*StringMaker {
        _ = Inheritance.call(self, "append", .{ String.valueOf(b) });
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn appendint(self: *Self, i: i32) ?*StringMaker {
        _ = Inheritance.call(self, "append", .{ String.valueOf(i) });
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn appendlong(self: *Self, l: i64) ?*StringMaker {
        _ = Inheritance.call(self, "append", .{ String.valueOf(l) });
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn appendfloat(self: *Self, f: f32) ?*StringMaker {
        _ = Inheritance.call(self, "append", .{ String.valueOf(f) });
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn appendboolean(self: *Self, @"bool": bool) ?*StringMaker {
        if (@"bool") {
            _ = Inheritance.call(self, "ensureCapacity", .{ self.currentLength + 4 });
            self.charArray[@intCast(value_N67424: { const value_N67424_value = self.currentLength; self.currentLength += 1; break :value_N67424 value_N67424_value; })] = 't';
            self.charArray[@intCast(value_N67468: { const value_N67468_value = self.currentLength; self.currentLength += 1; break :value_N67468 value_N67468_value; })] = 'r';
            self.charArray[@intCast(value_N67512: { const value_N67512_value = self.currentLength; self.currentLength += 1; break :value_N67512 value_N67512_value; })] = 'u';
            self.charArray[@intCast(value_N67556: { const value_N67556_value = self.currentLength; self.currentLength += 1; break :value_N67556 value_N67556_value; })] = 'e';
        } else {
            _ = Inheritance.call(self, "ensureCapacity", .{ self.currentLength + 5 });
            self.charArray[@intCast(value_N67159: { const value_N67159_value = self.currentLength; self.currentLength += 1; break :value_N67159 value_N67159_value; })] = 'f';
            self.charArray[@intCast(value_N67203: { const value_N67203_value = self.currentLength; self.currentLength += 1; break :value_N67203 value_N67203_value; })] = 'a';
            self.charArray[@intCast(value_N67247: { const value_N67247_value = self.currentLength; self.currentLength += 1; break :value_N67247 value_N67247_value; })] = 'l';
            self.charArray[@intCast(value_N67291: { const value_N67291_value = self.currentLength; self.currentLength += 1; break :value_N67291 value_N67291_value; })] = 's';
            self.charArray[@intCast(value_N67335: { const value_N67335_value = self.currentLength; self.currentLength += 1; break :value_N67335 value_N67335_value; })] = 'e';
        }
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn ensureCapacity(self: *Self, minSize: i32) void {
        const oldCapacity: i32 = @as(i32, @intCast(self.charArray.len));
        if (minSize > oldCapacity) {
            var newCapacity: i32 = oldCapacity * 3;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            const copy: []u16 = array_N67854: { const array_N67854_array = allocator.alloc(u16, @intCast(newCapacity)) catch unreachable; @memset(array_N67854_array, 0); break :array_N67854 array_N67854_array; };
            const min_: i32 = Inheritance.call(self, "min", .{ @as(i32, @intCast(self.charArray.len)), newCapacity });
            _ = @memmove(copy[@intCast(0)..@intCast(0 + min_)], self.charArray[@intCast(0)..@intCast(0 + min_)]);
            self.charArray = copy;
        }
    }
    

    pub fn min(self: *Self, value: i32, value2: i32) i32 {
        _ = self;
        return (if ((value <= value2)) value else value2);
    }
    

    pub fn delete(self: *Self, start: i32, end: i32) ?*StringMaker {
        self.currentLength -= (end - start);
        return Inheritance.upcast(?*StringMaker, self);
    }
    

    pub fn length(self: *Self) i32 {
        return self.currentLength;
    }
    

    pub fn toString(self: *Self) ?*String {
        return Inheritance.callStatic(String, "create3", .{ self.charArray, 0, self.currentLength });
    }
};

