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
const HashMap = @import("java/util/HashMap.zig").HashMap;
const StdUtil = @import("org/allbinary/logic/StdUtil.zig").StdUtil;
const AbPathData = @import("org/allbinary/logic/io/path/AbPathData.zig").AbPathData;
const MathData = @import("org/allbinary/logic/math/MathData.zig").MathData;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;

pub const SpecialCharacterUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.string.SpecialCharacterUtil";

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn getHashMap() ?*HashMap {
        const commonSeps: ?*CommonSeps = Inheritance.upcast(?*CommonSeps, CommonSeps.getInstance());
        const commonPhoneStrings: ?*CommonPhoneStrings = Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.getInstance());
        const stringUtil: ?*StringUtil = Inheritance.upcast(?*StringUtil, StringUtil.getInstance());
        const hashMap: ?*HashMap = Inheritance.upcast(?*HashMap, Inheritance.receiverOf(StdUtil.getInstance().?, "createHashMap").createHashMap());
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("!"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("@"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ commonPhoneStrings.?.POUND, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("$"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("%"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("^"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ commonSeps.?.AMPERSAND, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ commonPhoneStrings.?.STAR, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ commonSeps.?.PARENTHESIS_OPEN, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ commonSeps.?.PARENTHESIS_CLOSE, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ commonSeps.?.DASH, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ commonSeps.?.UNDERSCORE, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ MathData.getInstance().?.PLUS, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ commonSeps.?.EQUALS, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("\\"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("|"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ AbPathData.getInstance().?.EXTENSION_SEP, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal(","), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("<"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal(">"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("?"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ AbPathData.getInstance().?.SEPARATOR, stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("~"), stringUtil.?.EMPTY_STRING });
        _ = Inheritance.call(hashMap.?, "put", .{ String.literal("`"), stringUtil.?.EMPTY_STRING });
        return hashMap;
    }
};

