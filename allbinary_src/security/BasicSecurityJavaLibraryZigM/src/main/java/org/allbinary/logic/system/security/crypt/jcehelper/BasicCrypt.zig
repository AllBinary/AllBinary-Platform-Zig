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
// package org.allbinary.logic.system.security.crypt.jcehelper

const std = @import("std");
const allocator = std.heap.page_allocator;
const String = @import("java/lang/String.zig").String;
const Object = @import("java/lang/Object.zig").Object;
const Inheritance = @import("zig/Inheritance.zig");
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const CryptInterface = @import("org/allbinary/init/crypt/jcehelper/CryptInterface.zig").CryptInterface;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const ByteUtil = @import("org/allbinary/logic/java/byteutil/ByteUtil.zig").ByteUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;

pub const BasicCrypt = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.crypt.jcehelper.BasicCrypt";
    byteUtil: ?*ByteUtil = null,
    key: []i8 = &.{},
    // Implements CryptInterface

    fn initFields(this: *Self) void {
        this.byteUtil = Inheritance.upcast(?*ByteUtil, ByteUtil.getInstance());
        
    }
    

    pub fn create1(keyAsString: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        var key: []i8 = NullUtil.getInstance().?.NULL_BYTE_ARRAY;
        { // try
            key = Inheritance.upcast(@TypeOf(key), Inheritance.call(TsUtil.getInstance().?, "getByteArray", .{ keyAsString }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ commonStrings.?.EXCEPTION, this, String.literal("AbCrypt(alg,key)"), e });
        this.key = key;
        return this;
    }
    

    pub fn encrypt(self: *Self, array: []i8) []i8 {
        { // try
            return Inheritance.call(self, "mutilate", .{ array });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("Encrypt Failed"), self, String.literal("encrypt"), e });
//             return NullUtil.getInstance().?.NULL_BYTE_ARRAY;
    }
    

    pub fn decrypt(self: *Self, array: []i8) []i8 {
        { // try
            return Inheritance.call(self, "mutilate", .{ array });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("decrypt Failed"), self, String.literal("decrypt"), e });
//             return NullUtil.getInstance().?.NULL_BYTE_ARRAY;
    }
    

    pub fn mutilate(self: *Self, arrayParameter: []i8) []i8 {
        var array = arrayParameter;
        var value: i8 = 0;
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(self.key.len))) : (index += 1) {
            value = self.key[@intCast(index)];
            array = Inheritance.upcast(@TypeOf(array), Inheritance.call(self.byteUtil.?, "xor", .{ array, value }));
            }
        }
        return array;
    }
};

