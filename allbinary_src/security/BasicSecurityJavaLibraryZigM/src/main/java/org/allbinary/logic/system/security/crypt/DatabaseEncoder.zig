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
// package org.allbinary.logic.system.security.crypt

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringMaker = @import("org/allbinary/logic/string/StringMaker.zig").StringMaker;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const Tokenizer = @import("org/allbinary/logic/string/tokens/Tokenizer.zig").Tokenizer;
const CommonSeps = @import("org/allbinary/string/CommonSeps.zig").CommonSeps;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BasicArrayList = @import("org/allbinary/util/BasicArrayList.zig").BasicArrayList;
const BasicArrayListD = @import("org/allbinary/util/BasicArrayListD.zig").BasicArrayListD;
const Byte = @import("java/lang/Byte.zig").Byte;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const DatabaseEncoder = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.crypt.DatabaseEncoder";
    

    pub fn create() *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        return this;
    }
    

    pub fn encode(value: []i8) ?*String {
        { // try
            const array: []i8 = value;
            const stringBuffer: ?*StringMaker = StringMaker.create();
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(array.len))) : (index += 1) {
                _ = Inheritance.call(stringBuffer.?, "append", .{ String.valueOf(Inheritance.callStatic(Byte, "create1", .{ array[@intCast(index)] })) });
                if (index < @as(i32, @intCast(array.len)) - 1) {
                    _ = Inheritance.call(stringBuffer.?, "append", .{ Inheritance.fieldPointer(CommonSeps.getInstance().?, "SPACE").* });
                }
                }
            }
            return Inheritance.upcast(?*String, Object.toString(Object.of(stringBuffer)));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ Inheritance.fieldPointer(commonStrings.?, "EXCEPTION").*, String.literal("DatabaseEncoder"), String.literal("decode"), e });
//             return Inheritance.upcast(?*String, Inheritance.fieldPointer(StringUtil.getInstance().?, "EMPTY_STRING").*);
    }
    

    pub fn decode(value: ?*String) []i8 {
        { // try
            const tokenizer: ?*Tokenizer = Inheritance.callStatic(Tokenizer, "create1", .{ Inheritance.fieldPointer(CommonSeps.getInstance().?, "SPACE").* });
            const vector: ?*BasicArrayList = Inheritance.upcast(?*BasicArrayList, Inheritance.call(tokenizer.?, "getTokensFromString", .{ value, BasicArrayListD.create() }));
            const size: i32 = vector.?.size();
            const decode_: []i8 = array_N66680: { const array_N66680_array = allocator.alloc(i8, @intCast(size)) catch unreachable; @memset(array_N66680_array, 0); break :array_N66680 array_N66680_array; };
            var byteOfData: ?*String = null;
            {
                var index: i32 = 0;
                while (index < size) : (index += 1) {
                byteOfData = Inheritance.cast(?*String, Inheritance.fieldPointer(vector.?, "objectArray").*[@intCast(index)]);
                decode_[@intCast(index)] = (std.fmt.parseInt(i8, byteOfData.?.bytes, 10) catch @panic("java.lang.NumberFormatException"));
                }
            }
            return decode_;
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putSE", .{ Inheritance.fieldPointer(commonStrings.?, "EXCEPTION").*, String.literal("DatabaseEncoder"), String.literal("decode"), e });
//             return Inheritance.fieldPointer(NullUtil.getInstance().?, "NULL_BYTE_ARRAY").*;
    }
};

