// Generated Code Do Not Modify
// package org.allbinary.util

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const JsType = @import("jsinterop/annotations/JsType.zig").JsType;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonLabels = @import("org/allbinary/string/CommonLabels.zig").CommonLabels;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const JsMethod = @import("jsinterop/annotations/JsMethod.zig").JsMethod;
const JsConstructor = @import("jsinterop/annotations/JsConstructor.zig").JsConstructor;
const JsProperty = @import("jsinterop/annotations/JsProperty.zig").JsProperty;
const ArrayUtil = @import("org/allbinary/util/ArrayUtil.zig").ArrayUtil;
const BasicArrayListS = @import("org/allbinary/util/BasicArrayListS.zig").BasicArrayListS;
const System = @import("java/lang/System.zig").System;

//This is a very fast and simple resizable list.
pub const BasicArrayList = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.util.BasicArrayList";
    arrayUtil: ?*ArrayUtil = null,
    objectArray: []?Object = &.{},
    currentIndex: i32 = 0,
    const SIZE: ?*String = String.literal(", Size: ");

    fn initFields(this: *Self) void {
        this.arrayUtil = Inheritance.upcast(?*ArrayUtil, ArrayUtil.getInstance());
        
        this.currentIndex = 0;
    }
    

    pub fn create1(objectArray: []?Object) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.objectArray = objectArray;
        return this;
    }
    

    pub fn addAt(self: *Self, index: i32, element: ?Object) void {
        if (index > self.currentIndex or index < 0) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.INDEX_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(stringBuffer.?, "append", .{ BasicArrayList.SIZE });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.currentIndex });
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.IndexOutOfBoundsException; }});
        }
        _ = Inheritance.call(self, "ensureCapacity", .{ self.currentIndex + 1 });
        _ = @memmove(self.objectArray[@intCast(index + 1)..@intCast(index + 1 + self.currentIndex - index)], self.objectArray[@intCast(index)..@intCast(index + self.currentIndex - index)]);
        self.objectArray[@intCast(index)] = Inheritance.upcast(@TypeOf(self.objectArray[@intCast(index)]), element);
        self.currentIndex += 1;
    }
    

    pub fn add(self: *Self, anyType: ?Object) bool {
        _ = Inheritance.call(self, "ensureCapacity", .{ self.currentIndex + 1 });
        self.objectArray[@intCast(value_N66627: { const value_N66627_value = self.currentIndex; self.currentIndex += 1; break :value_N66627 value_N66627_value; })] = Inheritance.upcast(@TypeOf(self.objectArray[@intCast(value_N66627: { const value_N66627_value = self.currentIndex; self.currentIndex += 1; break :value_N66627 value_N66627_value; })]), anyType);
        return true;
    }
    

    pub fn removeAt(self: *Self, index: i32) ?Object {
        if (index >= self.currentIndex) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.INDEX_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(stringBuffer.?, "append", .{ BasicArrayList.SIZE });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.currentIndex });
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.IndexOutOfBoundsException; }});
        }
        const oldValue: ?Object = Inheritance.upcast(?Object, self.objectArray[@intCast(index)]);
        const numMoved: i32 = self.currentIndex - index - 1;
        if (numMoved > 0) {
            _ = @memmove(self.objectArray[@intCast(index)..@intCast(index + numMoved)], self.objectArray[@intCast(index + 1)..@intCast(index + 1 + numMoved)]);
        }
        self.objectArray[@intCast(value_N67233: { self.currentIndex -= 1; break :value_N67233 self.currentIndex; })] = null;
        return oldValue;
    }
    

    pub fn remove(self: *Self, anyType: ?Object) bool {
        if (anyType == null) {
            {
                var index: i32 = 0;
                while (index < self.currentIndex) : (index += 1) {
                if (self.objectArray[@intCast(index)] == null) {
                    const numMoved: i32 = self.currentIndex - index - 1;
                    if (numMoved > 0) {
                        _ = @memmove(self.objectArray[@intCast(index)..@intCast(index + numMoved)], self.objectArray[@intCast(index + 1)..@intCast(index + 1 + numMoved)]);
                    }
                    self.objectArray[@intCast(value_N67994: { self.currentIndex -= 1; break :value_N67994 self.currentIndex; })] = null;
                    return true;
                }
                }
            }
        } else {
            {
                var index: i32 = 0;
                while (index < self.currentIndex) : (index += 1) {
                if (Object.same(anyType, self.objectArray[@intCast(index)]) or Object.equals(Object.of(anyType), self.objectArray[@intCast(index)])) {
                    const numMoved: i32 = self.currentIndex - index - 1;
                    if (numMoved > 0) {
                        _ = @memmove(self.objectArray[@intCast(index)..@intCast(index + numMoved)], self.objectArray[@intCast(index + 1)..@intCast(index + 1 + numMoved)]);
                    }
                    self.objectArray[@intCast(value_N67644: { self.currentIndex -= 1; break :value_N67644 self.currentIndex; })] = null;
                    return true;
                }
                }
            }
        }
        return false;
    }
    

    pub fn removeAll2(self: *Self, list: ?*BasicArrayList) bool {
        var result: bool = true;
        const size_: i32 = list.?.size();
        {
            var index: i32 = 0;
            while (index < size_) : (index += 1) {
            if (Inheritance.call(self, "remove", .{ Inheritance.call(list.?, "get", .{ index }) })) {
            } else {
                result = false;
            }
            }
        }
        return result;
    }
    

    pub fn addAll2(self: *Self, list: ?*BasicArrayList) bool {
        _ = Inheritance.call(self, "ensureCapacity", .{ self.currentIndex + list.?.currentIndex });
        const listSize: i32 = list.?.currentIndex;
        {
            var index: i32 = 0;
            while (index < listSize) : (index += 1) {
            self.objectArray[@intCast(value_N68588: { const value_N68588_value = self.currentIndex; self.currentIndex += 1; break :value_N68588 value_N68588_value; })] = Inheritance.upcast(@TypeOf(self.objectArray[@intCast(value_N68588: { const value_N68588_value = self.currentIndex; self.currentIndex += 1; break :value_N68588 value_N68588_value; })]), list.?.objectArray[@intCast(index)]);
            }
        }
        return true;
    }
    

    pub fn addAllList(self: *Self, list: ?*BasicArrayList) bool {
        const newObjectArray: []?Object = list.?.toArray();
        return Inheritance.call(self, "addAll", .{ newObjectArray });
    }
    

    pub fn addAll(self: *Self, newObjectArray: []?Object) bool {
        const numSize: i32 = @as(i32, @intCast(newObjectArray.len));
        _ = Inheritance.call(self, "ensureCapacity", .{ self.currentIndex + numSize });
        _ = @memmove(self.objectArray[@intCast(self.currentIndex)..@intCast(self.currentIndex + numSize)], newObjectArray[@intCast(0)..@intCast(0 + numSize)]);
        self.currentIndex += numSize;
        return numSize != 0;
    }
    

    pub fn ensureCapacity(self: *Self, minSize: i32) void {
        const oldCapacity: i32 = @as(i32, @intCast(self.objectArray.len));
        if (minSize > oldCapacity) {
            var newCapacity: i32 = ((oldCapacity * 3) >> @intCast(1)) + 1;
            if (newCapacity < minSize) {
                newCapacity = minSize;
            }
            self.objectArray = Inheritance.upcast(@TypeOf(self.objectArray), Inheritance.call(self.arrayUtil.?, "copyOf", .{ self.objectArray, newCapacity }));
        }
    }
    

    pub fn trimToSize(self: *Self) void {
        const oldCapacity: i32 = @as(i32, @intCast(self.objectArray.len));
        if (self.currentIndex < oldCapacity) {
            self.objectArray = Inheritance.upcast(@TypeOf(self.objectArray), Inheritance.call(self.arrayUtil.?, "copyOf", .{ self.objectArray, self.currentIndex }));
        }
    }
    

    pub fn indexOf(self: *Self, anyType: ?Object) i32 {
        if (anyType == null) {
            {
                var i: i32 = 0;
                while (i < self.currentIndex) : (i += 1) {
                if (self.objectArray[@intCast(i)] == null) {
                    return i;
                }
                }
            }
        } else {
            {
                var i: i32 = 0;
                while (i < self.currentIndex) : (i += 1) {
                if (Object.equals(Object.of(anyType), self.objectArray[@intCast(i)])) {
                    return i;
                }
                }
            }
        }
        return -1;
    }
    

    pub fn lastIndexOf(self: *Self, anyType: ?Object) i32 {
        if (anyType == null) {
            {
                var i: i32 = self.currentIndex - 1;
                while (i >= 0) : (i -= 1) {
                if (self.objectArray[@intCast(i)] == null) {
                    return i;
                }
                }
            }
        } else {
            {
                var i: i32 = self.currentIndex - 1;
                while (i >= 0) : (i -= 1) {
                if (Object.equals(Object.of(anyType), self.objectArray[@intCast(i)])) {
                    return i;
                }
                }
            }
        }
        return -1;
    }
    

    pub fn get(self: *Self, index: i32) ?Object {
        if (index >= self.currentIndex) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.INDEX_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(stringBuffer.?, "append", .{ BasicArrayList.SIZE });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.currentIndex });
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.IndexOutOfBoundsException; }});
        }
        return Inheritance.upcast(?Object, self.objectArray[@intCast(index)]);
    }
    

    pub fn set(self: *Self, index: i32, element: ?Object) ?Object {
        if (index >= self.currentIndex) {
            const stringBuffer: ?*StringMaker = StringMaker.create();
            _ = Inheritance.call(stringBuffer.?, "append", .{ CommonLabels.getInstance().?.INDEX_LABEL });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ index });
            _ = Inheritance.call(stringBuffer.?, "append", .{ BasicArrayList.SIZE });
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ self.currentIndex });
            std.debug.panic("{any}", .{exception: { _ = Object.toString(Object.of(stringBuffer)); break :exception error.IndexOutOfBoundsException; }});
        }
        const oldValue: ?Object = Inheritance.upcast(?Object, self.objectArray[@intCast(index)]);
        self.objectArray[@intCast(index)] = Inheritance.upcast(@TypeOf(self.objectArray[@intCast(index)]), element);
        return oldValue;
    }
    

    pub fn clear(self: *Self) void {
        {
            var i: i32 = 0;
            while (i < self.currentIndex) : (i += 1) {
            self.objectArray[@intCast(i)] = null;
            }
        }
        self.currentIndex = 0;
    }
    

    pub fn size(self: *Self) i32 {
        return self.currentIndex;
    }
    

    pub fn isEmpty(self: *Self) bool {
        return self.currentIndex == 0;
    }
    

    pub fn contains(self: *Self, anyType: ?Object) bool {
        return Inheritance.call(self, "indexOf", .{ anyType }) >= 0;
    }
    

    pub fn toArray(self: *Self) []?Object {
        return Inheritance.call(self.arrayUtil.?, "copyOf", .{ self.objectArray, self.currentIndex });
    }
    

    pub fn toArrayType(self: *Self, objectArray: []?Object) []?Object {
        if (@as(i32, @intCast(objectArray.len)) < self.currentIndex) {
            return Inheritance.call(self.arrayUtil.?, "copyOfType", .{ self.objectArray, self.currentIndex, @as(?*anyopaque, @ptrCast(@constCast(Object.of(objectArray).?.class))) });
        }
        _ = @memmove(objectArray[@intCast(0)..@intCast(0 + self.currentIndex)], self.objectArray[@intCast(0)..@intCast(0 + self.currentIndex)]);
        if (@as(i32, @intCast(objectArray.len)) > self.currentIndex) {
            objectArray[@intCast(self.currentIndex)] = null;
        }
        return objectArray;
    }
    

    pub fn clone(self: *Self) ?Object {
        const size_: i32 = self.size();
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.callStatic(BasicArrayListS, "create1", .{ size_ }));
        var anyType: ?Object = null;
        {
            var index: i32 = 0;
            while (index < size_) : (index += 1) {
            anyType = Inheritance.upcast(@TypeOf(anyType), self.objectArray[@intCast(index)]);
            _ = Inheritance.call(list.?, "add", .{ anyType });
            }
        }
        return Inheritance.upcast(?Object, list);
    }
    

    pub fn toString(self: *Self) ?*String {
        const COMMA_SEP: ?*String = Inheritance.upcast(?*String, CommonSeps.getInstance().?.COMMA_SEP);
        const stringBuffer: ?*StringMaker = StringMaker.create();
        {
            var index: i32 = 0;
            while (index < self.currentIndex) : (index += 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ Object.toString(Object.of(self.objectArray[@intCast(index)])) });
            _ = Inheritance.call(stringBuffer.?, "append", .{ COMMA_SEP });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

