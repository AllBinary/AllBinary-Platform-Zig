// 
// AllBinary Open License Version 1 
// Copyright (c) 2025 AllBinary 
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
// const Cipher = @import("javax/crypto/Cipher.zig").Cipher;
// const SecretKey = @import("javax/crypto/SecretKey.zig").SecretKey;
const ByteUtil = @import("org/allbinary/logic/java/byteutil/ByteUtil.zig").ByteUtil;
const BaseSecretComposite = @import("org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite.zig").BaseSecretComposite;

pub const SecretComposite = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.crypt.jcehelper.SecretComposite";
    base: BaseSecretComposite = undefined,
    byteUtil: ?*ByteUtil = null,
    cipher: ?*Cipher = null,
    secretKey: ?*SecretKey = null,
    key: []i8 = &.{},

    fn initFields(this: *Self) void {
        this.byteUtil = Inheritance.upcast(?*ByteUtil, ByteUtil.getInstance());
        
        
        
    }
    

    pub fn create3(secretKey: ?*SecretKey, cipher: ?*Cipher, key: []i8) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.base = BaseSecretComposite.create().*;
        this.initFields();
        this.secretKey = secretKey;
        this.cipher = cipher;
        this.key = key;
        Inheritance.bindOverrides(this);
        return this;
    }
    

    // throws Exception
    pub fn encrypt(self: *Self, arrayParameter: []i8) []i8 {
        var array = arrayParameter;
        array = Inheritance.upcast(@TypeOf(array), Inheritance.call(self, "mutilate", .{ array }));
        _ = Inheritance.call(self.cipher.?, "init", .{ Cipher.ENCRYPT_MODE, self.secretKey });
        return Inheritance.call(self.cipher.?, "doFinal", .{ array });
    }
    

    // throws Exception
    pub fn decrypt(self: *Self, array: []i8) []i8 {
        _ = Inheritance.call(self.cipher.?, "init", .{ Cipher.DECRYPT_MODE, self.secretKey });
        return Inheritance.call(self, "mutilate", .{ Inheritance.call(self.cipher.?, "doFinal", .{ array }) });
    }
    

    pub fn mutilate(self: *Self, arrayParameter: []i8) []i8 {
        var array = arrayParameter;
        {
            var index: i32 = 0;
            while (index < @as(i32, @intCast(self.key.len))) : (index += 1) {
            const value: i8 = self.key[@intCast(index)];
            if (@as(i32, @intCast(value)) < 8 and @as(i32, @intCast(value)) > 0) {
                array = Inheritance.upcast(@TypeOf(array), Inheritance.call(self.byteUtil.?, "xorByte", .{ array, @as(i32, @intCast(value)) }));
            }
            }
        }
        return array;
    }
};

