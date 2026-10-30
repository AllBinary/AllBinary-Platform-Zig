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
// package org.allbinary.logic.string.regex.replace

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const HashMap = @import("java/util/HashMap.zig").HashMap;
const J2SEUtil = @import("org/allbinary/J2SEUtil.zig").J2SEUtil;
const AppUrlGlobals = @import("org/allbinary/globals/AppUrlGlobals.zig").AppUrlGlobals;
const URLGLOBALS = @import("org/allbinary/globals/URLGLOBALS.zig").URLGLOBALS;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const LogUtil = @import("org/allbinary/logic/communication/log/LogUtil.zig").LogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const LogConfigTypes = @import("org/allbinary/logic/communication/log/config/type/LogConfigTypes.zig").LogConfigTypes;
const System = @import("java/lang/System.zig").System;
const Integer = @import("java/lang/Integer.zig").Integer;

pub const Replace = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.string.regex.replace.Replace";
    logUtil: ?*LogUtil = null,
    j2seUtil: ?*J2SEUtil = null,
    REPLACERS_: ?*String = null,
    ALL: ?*String = null,
    FOUND_KEY: ?*String = null,
    hashMap: ?*HashMap = null,

    fn initFields(this: *Self) void {
        this.logUtil = Inheritance.upcast(?*LogUtil, LogUtil.getInstance());
        this.j2seUtil = Inheritance.upcast(?*J2SEUtil, J2SEUtil.getInstance());
        this.REPLACERS_ = String.literal("Replacers: ");
        this.ALL = String.literal("all");
        this.FOUND_KEY = String.literal("found key total: ");
        
    }
    

    pub fn create2(key: ?*String, value: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.hashMap = Inheritance.upcast(@TypeOf(this.hashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(this.hashMap.?, "put", .{ @constCast(&[_]?*String{ key })[0..], @constCast(&[_]?*String{ value })[0..] });
        return this;
    }
    

    // Java overloaded constructor with the same parameter count: Zig needs a different name
    pub fn create2(keys: []?*String, values: []?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.hashMap = Inheritance.upcast(@TypeOf(this.hashMap), Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(this.hashMap.?, "put", .{ keys, values });
        return this;
    }
    

    pub fn create1(hashMap: ?*HashMap) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.hashMap = hashMap;
        return this;
    }
    

    pub fn all(self: *Self, replace: ?*String) ?*String {
        return Inheritance.upcast(?*String, Inheritance.call(self, "upTo", .{ replace, @as(i32, std.math.minInt(i32)) }));
    }
    

    pub fn upTo(self: *Self, replaceParameter: ?*String, total: i32) ?*String {
        var replace = replaceParameter;
        const newStringBuffer: ?*StringMaker = StringMaker.create();
        var totalNumberOfReplaces: i32 = 0;
        var keys: []?*String = &.{};
        var values: []?*String = &.{};
        const keyArray: []?Object = Inheritance.call(self.j2seUtil.?, "getHashMapAsArray", .{ self.hashMap });
        const size: i32 = @as(i32, @intCast(keyArray.len));
        {
            var index2: i32 = 0;
            while (index2 < size) : (index2 += 1) {
            keys = Inheritance.cast([]?*String, keyArray[@intCast(index2)]);
            values = Inheritance.cast([]?*String, Inheritance.call(self.hashMap.?, "get", .{ keys }));
            var foundTotal: i64 = 0;
            var index: i32 = 0;
            var nextKey: ?*String = null;
            var end: i32 = 0;
            var nextSecondKey: ?*String = null;
            var begin2: i32 = 0;
            while (index < replace.?.length()) {
                const begin: i32 = replace.?.indexOf2(keys[@intCast(0)], index);
                if (begin != -1) {
                    foundTotal += 1;
                    if (@rem(foundTotal, 100) == 0) {
                        _ = std.debug.print("{s}\n", .{String.text(String.plus(self.FOUND_KEY, foundTotal))});
                    }
                    nextKey = Inheritance.upcast(@TypeOf(nextKey), keys[@intCast(0)]);
                    end = begin + nextKey.?.length();
                    _ = Inheritance.call(newStringBuffer.?, "delete", .{ 0, newStringBuffer.?.length() });
                    _ = Inheritance.call(newStringBuffer.?, "append", .{ replace.?.substring2(0, begin) });
                    _ = Inheritance.call(newStringBuffer.?, "append", .{ values[@intCast(0)] });
                    index = newStringBuffer.?.length();
                    _ = Inheritance.call(newStringBuffer.?, "append", .{ replace.?.substring2(end, replace.?.length()) });
                    replace = Inheritance.upcast(@TypeOf(replace), Object.toString(Object.of(newStringBuffer)));
                    if (@as(i32, @intCast(keys.len)) > 1) {
                        nextSecondKey = Inheritance.upcast(@TypeOf(nextSecondKey), keys[@intCast(1)]);
                        begin2 = replace.?.indexOf2(nextSecondKey, index);
                        if (begin2 != -1) {
                            const end2: i32 = begin2 + nextSecondKey.?.length();
                            _ = Inheritance.call(newStringBuffer.?, "delete", .{ 0, newStringBuffer.?.length() });
                            _ = Inheritance.call(newStringBuffer.?, "append", .{ replace.?.substring2(0, begin2) });
                            _ = Inheritance.call(newStringBuffer.?, "append", .{ values[@intCast(1)] });
                            index = newStringBuffer.?.length();
                            _ = Inheritance.call(newStringBuffer.?, "append", .{ replace.?.substring2(end2, replace.?.length()) });
                            replace = Inheritance.upcast(@TypeOf(replace), Object.toString(Object.of(newStringBuffer)));
                        }
                    }
                    totalNumberOfReplaces += 1;
                    if (total != @as(i32, std.math.minInt(i32)) and totalNumberOfReplaces >= total) {
                        break;
                    }
                } else {
                    break;
                }
            }
            }
        }
        if (totalNumberOfReplaces > 0) {
            if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.REPLACE })) {
                _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Total Number Of Replaces: "), totalNumberOfReplaces), self, self.ALL });
            }
        }
        return replace;
    }
    

    pub fn line(self: *Self, replaceParameter: ?*String) ?*String {
        var replace = replaceParameter;
        const newStringBuffer: ?*StringMaker = StringMaker.create();
        var totalNumberOfReplaces: i32 = 0;
        var key: ?*String = null;
        var value: ?*String = null;
        const keyArray: []?Object = Inheritance.call(self.j2seUtil.?, "getHashMapAsArray", .{ self.hashMap });
        const size: i32 = @as(i32, @intCast(keyArray.len));
        {
            var index2: i32 = 0;
            while (index2 < size) : (index2 += 1) {
            key = Inheritance.cast(?*String, keyArray[@intCast(index2)]);
            value = Inheritance.cast(?*String, Inheritance.call(self.hashMap.?, "get", .{ key }));
            var index: i32 = 0;
            while (index < replace.?.length()) {
                _ = Inheritance.call(newStringBuffer.?, "delete", .{ 0, newStringBuffer.?.length() });
                const begin: i32 = replace.?.indexOf2(key, index);
                if (begin != -1) {
                    _ = std.debug.print("{s}\n", .{String.text(self.FOUND_KEY)});
                    const end: i32 = replace.?.indexOf2('\n', begin + key.?.length()) + 1;
                    if (end >= 0) {
                        _ = Inheritance.call(newStringBuffer.?, "append", .{ replace.?.substring2(0, begin) });
                        index = newStringBuffer.?.length();
                        _ = Inheritance.call(newStringBuffer.?, "append", .{ replace.?.substring2(end, replace.?.length()) });
                        replace = Inheritance.upcast(@TypeOf(replace), Object.toString(Object.of(newStringBuffer)));
                        totalNumberOfReplaces += 1;
                    }
                } else {
                    break;
                }
            }
            }
        }
        if (Inheritance.call(LogConfigTypes.LOGGING.?, "contains", .{ Inheritance.receiverOf(org.allbinary.?.logic.?.communication.?.log.?.config.?.@"type".?.LogConfigTypeFactory.?, "getInstance").getInstance().?.REPLACE })) {
            _ = Inheritance.call(self.logUtil.?, "putF", .{ String.plus(String.literal("Total Number Of Replaces: "), totalNumberOfReplaces), self, self.ALL });
        }
        return replace;
    }
    

    pub fn main(args: []?*String) void {
        _ = args;
        { // try
            const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
            const appUrlGlobals: ?*AppUrlGlobals = AppUrlGlobals.create();
            _ = Inheritance.call(appUrlGlobals.?, "setWebappPath", .{ String.literal("G:/mnt/bc/mydev/work/allbinary_src/ToolsJavaLibrary/tools") });
            _ = Inheritance.callStatic(URLGLOBALS, "init", .{ appUrlGlobals });
            var testString: ?*String = String.literal("\"super gun\" big tank \"goodgunriflegun");
            const replace: ?*Replace = Inheritance.callStatic(Replace, "create2", .{ String.literal("gun"), String.literal("abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz") });
            _ = std.debug.print("{s}\n", .{String.text(String.plus(String.literal("Old String: "), testString))});
            testString = Inheritance.upcast(@TypeOf(testString), Inheritance.call(replace.?, "all", .{ testString }));
            _ = std.debug.print("{s}\n", .{String.text(String.plus(String.literal("New String: "), testString))});
            const replaceCat: ?*Replace = Inheritance.callStatic(Replace, "create2", .{ String.literal("abcdefghijklmnopqrstuxwxyzabcdefghijklmnopqrstuxwxyz"), stringUtil.?.EMPTY_STRING });
            testString = Inheritance.upcast(@TypeOf(testString), Inheritance.call(replaceCat.?, "all", .{ testString }));
            _ = std.debug.print("{s}\n", .{String.text(String.plus(String.literal("New String: "), testString))});
        }
        // catch (Exception e):
    }
};

