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
// package org.allbinary.data

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const StringValidationUtil = @import("org/allbinary/logic/string/StringValidationUtil.zig").StringValidationUtil;
const Tokenizer = @import("org/allbinary/logic/string/tokens/Tokenizer.zig").Tokenizer;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Character = @import("java/lang/Character.zig").Character;

pub const CamelCaseUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.data.CamelCaseUtil";
    commonSeps: ?*CommonSeps = null,
    var instance: ?*CamelCaseUtil = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        instance = CamelCaseUtil.create();
    }

    fn initFields(this: *Self) void {
        this.commonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
    }

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        return this;
    }
    

    pub fn getInstance() ?*CamelCaseUtil {
        return Inheritance.upcast(?*CamelCaseUtil, CamelCaseUtil.instance);
    }
    

    // throws Exception
    pub fn getAsCamelCase(self: *Self, string: ?*String, stringBuilder: ?*StringMaker) ?*String {
        if (string == null) {
            return Inheritance.upcast(?*String, StringUtil.getInstance().?.EMPTY_STRING);
        }
        const stringValidationUtil: ?*StringValidationUtil = Inheritance.upcast(?*StringValidationUtil, StringValidationUtil.getInstance());
        _ = Inheritance.call(stringBuilder.?, "delete", .{ 0, stringBuilder.?.length() });
        const list: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, BasicArrayListD.create());
        const tokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ self.commonSeps.?.UNDERSCORE });
        _ = Inheritance.call(tokenizer.?, "getTokensFromString", .{ string, list });
        const size: i32 = list.?.size();
        var word: ?*String = null;
        {
            var i: i32 = 0;
            while (i < size) : (i += 1) {
            word = Inheritance.cast(?*String, Inheritance.call(list.?, "get", .{ i }));
            word = Inheritance.upcast(@TypeOf(word), (if (Inheritance.call(stringValidationUtil.?, "isEmpty", .{ word })) word else Object.toString(Object.of(Inheritance.call(Inheritance.call(StringMaker.create(), "appendchar", .{ std.ascii.toUpper(@intCast(Inheritance.call(word.?, "charAt", .{ 0 }))) }).?, "append", .{ Inheritance.call(word.?, "substring", .{ 1 }).?.toLowerCase() })))));
            _ = Inheritance.call(stringBuilder.?, "append", .{ word });
            }
        }
        return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuilder)));
    }
};

