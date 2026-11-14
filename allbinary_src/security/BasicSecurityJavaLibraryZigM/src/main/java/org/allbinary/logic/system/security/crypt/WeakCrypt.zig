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
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const StringUtil = @import("org/allbinary/logic/string/StringUtil.zig").StringUtil;
const AbCrypt = @import("org/allbinary/logic/system/security/crypt/jcehelper/AbCrypt.zig").AbCrypt;
const KeySpecFactory = @import("org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory.zig").KeySpecFactory;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const DatabaseEncoder = @import("org/allbinary/logic/system/security/crypt/DatabaseEncoder.zig").DatabaseEncoder;
const Exception = @import("java/lang/Exception.zig").Exception;

pub const WeakCrypt = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.crypt.WeakCrypt";
    tsUtil: ?*TsUtil = null,
    abCrypt: ?*AbCrypt = null,
    var keys: []?*String = undefined;
    pub var KEYMAX: i32 = undefined;

    // Static fields with runtime initializers: call staticInit once at startup
    pub fn staticInit() void {
        keys = @constCast(&[_]?*String{ Inheritance.upcast(?*String, String.literal("qwres6qewrupoi1132790jfahleavi89398")), Inheritance.upcast(?*String, String.literal("143uk32lngf8675gt1tv9214uvt924ut9u9")), Inheritance.upcast(?*String, String.literal("12kvjlvlkv11445v12951v512v9m51295v1")), Inheritance.upcast(?*String, String.literal("gampipoiupg4g43y5u238tu2485u20u0932")), Inheritance.upcast(?*String, String.literal("a93u5uu02s2d2g3259u4395u409u093u9vu")), Inheritance.upcast(?*String, String.literal("nlkxzj90je3mln9l8l89qjf0j3v50j23r9j")), Inheritance.upcast(?*String, String.literal("2lk5fn5j23nr8f0233vq35n23jn58vhy843")), Inheritance.upcast(?*String, String.literal("9q24334m598t092tkn2iv0982456n425j9g")), Inheritance.upcast(?*String, String.literal("5m9uvmt9436243m5v34g09d43i52ki35g99")), Inheritance.upcast(?*String, String.literal("n123lr1iubiu2br32lv32rbu23b32ub2rlb")), Inheritance.upcast(?*String, String.literal("va0u0iovji2ojpvj2oij22poiu4ov2uv28v")), Inheritance.upcast(?*String, String.literal("bkk80gn2v9uc902340ut209pcup0u09utc9")), Inheritance.upcast(?*String, String.literal("mn32m32neee23c42fn32nf3mf2n3fn2m3fm")), Inheritance.upcast(?*String, String.literal("zcxpozo3423voizupovsijevnv3n33o33n3")), Inheritance.upcast(?*String, String.literal("v0345324thv93h03893893vh893v8h3vhzz")), Inheritance.upcast(?*String, String.literal("v8na898v8wyef9ty39yv98yaw39yeeyf8ye")), Inheritance.upcast(?*String, String.literal("45zd36d34jg09434hfshp8uj9sy8s7cyr78")), Inheritance.upcast(?*String, String.literal("b098yy0908vdvh983b2lb327980a76s5e5e")), Inheritance.upcast(?*String, String.literal("v90y9v9p8y3r98pagsdgsagyr6y3985yhfh")), Inheritance.upcast(?*String, String.literal("vblkzhhzp8yvzi8u4t9856456zy3rv8a388")), Inheritance.upcast(?*String, String.literal("da7696023rgf28dssfa98asd879hg32hewe")), Inheritance.upcast(?*String, String.literal("afo7d6ffkjb3jr3i34gb24ytuvu3jr3uryf")), Inheritance.upcast(?*String, String.literal("4gijvqo8vq984hv984hj5j3511h832hf833")) })[0..];
        KEYMAX = @as(i32, @intCast(WeakCrypt.keys.len));
    }

    fn initFields(this: *Self) void {
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.abCrypt = Inheritance.callStatic(AbCrypt, "create1", .{ Inheritance.fieldPointer(KeySpecFactory.getInstance().?, "DES").* });
    }
    

    pub fn create1(key: i32) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            _ = Inheritance.call(this.abCrypt.?, "init", .{ WeakCrypt.keys[@intCast(key)] });
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ Inheritance.fieldPointer(commonStrings.?, "EXCEPTION").*, this, String.literal("SuperCrypt(key)"), e });
        return this;
    }
    

    pub fn encrypt(self: *Self, value: ?*String) ?*String {
        { // try
            const crypted: []i8 = Inheritance.call(self.abCrypt.?, "encrypt", .{ Inheritance.call(self.tsUtil.?, "getByteArray", .{ value }) });
            return Inheritance.upcast(?*String, Inheritance.callStatic(DatabaseEncoder, "encode", .{ crypted }));
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("Encrypt Failed"), self, String.literal("encrypt"), e });
//             return Inheritance.upcast(?*String, Inheritance.fieldPointer(StringUtil.getInstance().?, "EMPTY_STRING").*);
    }
    

    pub fn decrypt(self: *Self, value: ?*String) ?*String {
        { // try
            const decrypted: []i8 = Inheritance.call(self.abCrypt.?, "decrypt", .{ Inheritance.callStatic(DatabaseEncoder, "decode", .{ value }) });
            return Inheritance.callStatic(String, "create1", .{ decrypted });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("decrypt Failed"), self, String.literal("decrypt"), e });
//             return Inheritance.upcast(?*String, Inheritance.fieldPointer(StringUtil.getInstance().?, "EMPTY_STRING").*);
    }
};

