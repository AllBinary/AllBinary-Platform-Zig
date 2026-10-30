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
// const Provider = @import("java/security/Provider.zig").Provider;
// const Security = @import("java/security/Security.zig").Security;
// const KeySpec = @import("java/security/spec/KeySpec.zig").KeySpec;
// const Cipher = @import("javax/crypto/Cipher.zig").Cipher;
// const SecretKey = @import("javax/crypto/SecretKey.zig").SecretKey;
// const SecretKeyFactory = @import("javax/crypto/SecretKeyFactory.zig").SecretKeyFactory;
const CryptInterface = @import("org/allbinary/init/crypt/jcehelper/CryptInterface.zig").CryptInterface;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const KeySpecFactory = @import("org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory.zig").KeySpecFactory;

pub const AbBasicCrypt = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.crypt.jcehelper.AbBasicCrypt";
    cipher: ?*Cipher = null,
    secretKey: ?*SecretKey = null,
    algorithm: ?*String = null,
    key: []i8 = &.{},
    // Implements CryptInterface

    fn initFields(this: *Self) void {
        this.cipher = null;
        this.secretKey = null;
        this.algorithm = null;
        this.key = &.{};
    }
    

    pub fn create2(algorithm: ?*String, key: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        { // try
            this.algorithm = algorithm;
            this.key = Inheritance.upcast(@TypeOf(this.key), key.?.getBytes());
            _ = this.init();
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ commonStrings.?.EXCEPTION, this, String.literal("AbCrypt(alg,key)"), e });
        return this;
    }
    

    pub fn init(self: *Self) void {
        { // try
            const sunJce: ?*Provider = Inheritance.upcast(?*Provider, SunJCE.create());
            _ = Inheritance.callStatic(Security, "addProvider", .{ sunJce });
            const keySpec: ?*KeySpec = Inheritance.upcast(?*KeySpec, Inheritance.call(KeySpecFactory.getInstance().?, "getInstance", .{ self.algorithm, self.key }));
            const keyFactory: ?*SecretKeyFactory = Inheritance.upcast(?*SecretKeyFactory, Inheritance.callStatic(SecretKeyFactory, "getInstance", .{ self.algorithm }));
            self.secretKey = Inheritance.upcast(@TypeOf(self.secretKey), Inheritance.call(keyFactory.?, "generateSecret", .{ keySpec }));
            self.cipher = Inheritance.upcast(@TypeOf(self.cipher), Inheritance.callStatic(Cipher, "getInstance", .{ self.algorithm }));
        }
        // catch (Exception e):
//             const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("init Failed"), self, commonStrings.?.INIT, e });
    }
    

    pub fn encrypt(self: *Self, array: []i8) []i8 {
        { // try
            _ = Inheritance.call(self.cipher.?, "init", .{ Cipher.ENCRYPT_MODE, self.secretKey });
            const ivArray: []i8 = self.secretKey.?.getEncoded();
            const encrypted: []i8 = Inheritance.call(self.cipher.?, "doFinal", .{ array });
            const result: []i8 = array_N66931: { const array_N66931_array = allocator.alloc(i8, @intCast(@as(i32, @intCast(ivArray.len)) + @as(i32, @intCast(encrypted.len)))) catch unreachable; @memset(array_N66931_array, 0); break :array_N66931 array_N66931_array; };
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("ivArray Length: "), @as(i32, @intCast(ivArray.len))), self, String.literal("encrypt") });
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(ivArray.len))) : (index += 1) {
                result[@intCast(index)] = ivArray[@intCast(index)];
                }
            }
            {
                var index: i32 = 0;
                while (index < @as(i32, @intCast(encrypted.len))) : (index += 1) {
                result[@intCast(index + @as(i32, @intCast(ivArray.len)))] = encrypted[@intCast(index)];
                }
            }
            return result;
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("Encrypt Failed"), self, String.literal("encrypt"), e });
//             return null;
    }
    

    pub fn decrypt(self: *Self, array: []i8) []i8 {
        { // try
            _ = Inheritance.call(self.cipher.?, "init", .{ Cipher.DECRYPT_MODE, self.secretKey });
            const ivArray: []i8 = array_N67570: { const array_N67570_array = allocator.alloc(i8, @intCast(8)) catch unreachable; @memset(array_N67570_array, 0); break :array_N67570 array_N67570_array; };
            {
                var index: i32 = 0;
                while (index < 8) : (index += 1) {
                ivArray[@intCast(index)] = array[@intCast(index)];
                }
            }
            _ = Inheritance.callStatic(PreLogUtil, "put", .{ String.plus(String.literal("ivArray Length: "), @as(i32, @intCast(ivArray.len))), self, String.literal("encrypt") });
            const result: []i8 = array_N67795: { const array_N67795_array = allocator.alloc(i8, @intCast(@as(i32, @intCast(array.len)) - @as(i32, @intCast(ivArray.len)))) catch unreachable; @memset(array_N67795_array, 0); break :array_N67795 array_N67795_array; };
            {
                var index: i32 = @as(i32, @intCast(ivArray.len));
                while (index < @as(i32, @intCast(array.len))) : (index += 1) {
                result[@intCast(index - @as(i32, @intCast(ivArray.len)))] = array[@intCast(index)];
                }
            }
            const decrypted: []i8 = Inheritance.call(self.cipher.?, "doFinal", .{ result }); _ = decrypted;
            return result;
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("decrypt Failed"), self, String.literal("decrypt"), e });
//             return null;
    }
};

