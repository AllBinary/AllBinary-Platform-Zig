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
// package org.allbinary.logic.util.cache

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListUtil = @import("org/allbinary/util/BasicArrayListUtil.zig").BasicArrayListUtil;
const IndexedBasicArrayListCache = @import("org/allbinary/logic/util/cache/IndexedBasicArrayListCache.zig").IndexedBasicArrayListCache;

pub const KeylessBasicArrayListCache = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.util.cache.KeylessBasicArrayListCache";
    base: IndexedBasicArrayListCache = undefined,
    logUtil: ?*LogUtil = null,
    basicArrayListUtil: ?*BasicArrayListUtil = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.basicArrayListUtil = Inheritance.upcast(?*BasicArrayListUtil, BasicArrayListUtil.getInstance());
    }
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = IndexedBasicArrayListCache.create().*;
        this.initFields();
        Inheritance.bindOverrides(this);
        return this;
    }
    

    pub fn get(self: *Self) ?*BasicArrayList {
        { // try
            if (Inheritance.fieldPointer(self, "index").* >= Inheritance.fieldPointer(self, "list").*.?.size()) {
                _ = Inheritance.receiver(self, "addDefault").addDefault();
            }
            const list: ?*BasicArrayList = Inheritance.cast(?*BasicArrayList, Inheritance.call(self, "getAt", .{ value_N65950: { const value_N65950_value = Inheritance.fieldPointer(self, "index").*; Inheritance.fieldPointer(self, "index").* += 1; break :value_N65950 value_N65950_value; } }));
            return list;
        }
        // catch (Exception e):
//             _ = Inheritance.call(self.logUtil.?, "put", .{ Inheritance.fieldPointer(self, "commonStrings").*.?.EXCEPTION, self, Inheritance.fieldPointer(self, "commonStrings").*.?.GET, e });
//             return Inheritance.upcast(?*BasicArrayList, self.basicArrayListUtil.?.getImmutableInstance());
    }
    

    pub fn clear(self: *Self) void {
        _ = self.base.clear();
        var basicArrayList: ?*BasicArrayList = null;
        {
            var index: i32 = Inheritance.fieldPointer(self, "list").*.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            basicArrayList = Inheritance.upcast(@TypeOf(basicArrayList), (Inheritance.cast(?*BasicArrayList, Inheritance.fieldPointer(self, "list").*.?.objectArray[@intCast(index)])));
            _ = basicArrayList.?.clear();
            }
        }
    }
    

    pub fn log(self: *Self) ?*String {
        const stringBuffer: ?*StringMaker = StringMaker.create();
        _ = Inheritance.call(stringBuffer.?, "append", .{ String.literal("S: ") });
        _ = Inheritance.call(stringBuffer.?, "appendint", .{ Inheritance.fieldPointer(self, "list").*.?.size() });
        const S_LABEL: ?*String = String.literal(" s: ");
        var basicArrayList: ?*BasicArrayList = null;
        {
            var index: i32 = Inheritance.fieldPointer(self, "list").*.?.size() - 1;
            while (index >= 0) : (index -= 1) {
            _ = Inheritance.call(stringBuffer.?, "append", .{ S_LABEL });
            basicArrayList = Inheritance.upcast(@TypeOf(basicArrayList), (Inheritance.cast(?*BasicArrayList, Inheritance.fieldPointer(self, "list").*.?.objectArray[@intCast(index)])));
            _ = Inheritance.call(stringBuffer.?, "appendint", .{ basicArrayList.?.size() });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
    }
};

