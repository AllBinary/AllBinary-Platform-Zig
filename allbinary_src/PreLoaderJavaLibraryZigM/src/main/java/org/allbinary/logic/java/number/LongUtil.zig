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
// package org.allbinary.logic.java.number

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const CommonPhoneStrings = @import("org/allbinary/string/CommonPhoneStrings.zig").CommonPhoneStrings;
const LongData = @import("org/allbinary/logic/java/number/LongData.zig").LongData;

pub const LongUtil = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.java.number.LongUtil";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn fillIn(end: ?*String) ?*String {
        const frameStringBuffer: ?*StringMaker = StringMaker.create();
        if (frameStringBuffer.?.length() < LongData.MAX_LONG_LENGTH) {
            const commonPhoneStrings: ?*CommonPhoneStrings = Inheritance.upcast(?*CommonPhoneStrings, CommonPhoneStrings.getInstance());
            const size: i32 = LongData.MAX_LONG_LENGTH - frameStringBuffer.?.length();
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                _ = Inheritance.call(frameStringBuffer.?, "append", .{ commonPhoneStrings.?.ZERO });
                }
            }
        }
        _ = Inheritance.call(frameStringBuffer.?, "append", .{ end });
        return Inheritance.upcast(?*String, Object.toString(Object.of(frameStringBuffer)));
    }
};

