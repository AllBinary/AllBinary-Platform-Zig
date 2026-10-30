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
// package org.allbinary.logic.string.tokens

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const ABHashtable = @import("org/allbinary/util/ABHashtable.zig").ABHashtable;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;

pub const Tokenizer = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.string.tokens.Tokenizer";
    sep: ?*String = null,
    endSep: ?*String = null,

    fn initFields(this: *Self) void {
        
        this.endSep = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
    }
    

    pub fn create1(sep: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        if (sep == null or Inheritance.call(TsUtil.getInstance().?, "compareTo", .{ sep, StringUtil.getInstance().?.EMPTY_STRING }) == 0) {
            std.debug.panic("{any}", .{exception: { _ = String.literal("Sep provided is not valid"); break :exception error.Exception; }});
        }
        this.sep = sep;
        return this;
    }
    

    pub fn setSep(self: *Self, sep: ?*String) void {
        self.sep = sep;
    }
    

    pub fn setEndSep(self: *Self, endSep: ?*String) void {
        self.endSep = endSep;
    }
    

    pub fn getInsideSep(self: *Self, string: ?*String) ?*BasicArrayList {
        const tokenList: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        var index: i32 = 0;
        const size: i32 = string.?.length();
        while (index < size) {
            index = string.?.indexOf2(self.sep, index);
            if (index != -1) {
                const end: i32 = string.?.indexOf2(self.endSep, index + self.sep.?.length());
                if (end != -1) {
                    _ = Inheritance.call(tokenList.?, "add", .{ string.?.substring2(index + self.sep.?.length(), end - (self.endSep.?.length() - 1)) });
                    index = end + self.endSep.?.length();
                } else {
                }
            } else {
                break;
            }
        }
        return tokenList;
    }
    

    pub fn getTokensFromString(self: *Self, string: ?*String, tokenVector: ?*BasicArrayList) ?*BasicArrayList {
        var index: i32 = 0;
        var end: i32 = 0;
        while (index < string.?.length()) {
            end = string.?.indexOf2(self.sep, index);
            if (end != -1) {
                _ = Inheritance.call(tokenVector.?, "add", .{ string.?.substring2(index, end) });
                index = end + self.sep.?.length();
            } else {
                _ = Inheritance.call(tokenVector.?, "add", .{ string.?.substring2(index, string.?.length()) });
                break;
            }
        }
        return tokenVector;
    }
    

    pub fn getTokens(self: *Self, stringVector: ?*BasicArrayList) ?*ABHashtable {
        const tokenHashtable: ?*ABHashtable = Inheritance.upcast(?*ABHashtable, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashtable").createHashtable());
        var string: ?*String = Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        var end: i32 = 0;
        const size: i32 = stringVector.?.size();
        {
            var index: i32 = 0;
            while (index < size) : (index += 1) {
            string = Inheritance.cast(?*String, stringVector.?.objectArray[@intCast(index)]);
            end = Inheritance.call(string.?, "indexOf", .{ self.sep });
            if (end >= 0) {
                _ = Inheritance.call(tokenHashtable.?, "put", .{ string.?.substring2(0, end), string.?.substring2(end + 1, string.?.length()) });
            }
            }
        }
        return tokenHashtable;
    }
};

