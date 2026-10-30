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
// const Security = @import("java/security/Security.zig").Security;
// const KeySpec = @import("java/security/spec/KeySpec.zig").KeySpec;
// const Cipher = @import("javax/crypto/Cipher.zig").Cipher;
// const SecretKey = @import("javax/crypto/SecretKey.zig").SecretKey;
// const SecretKeyFactory = @import("javax/crypto/SecretKeyFactory.zig").SecretKeyFactory;
const TsUtil = @import("org/allbinary/TsUtil.zig").TsUtil;
const CryptInterface = @import("org/allbinary/init/crypt/jcehelper/CryptInterface.zig").CryptInterface;
const NullUtil = @import("org/allbinary/logic/NullUtil.zig").NullUtil;
const PreLogUtil = @import("org/allbinary/logic/communication/log/PreLogUtil.zig").PreLogUtil;
const CommonStrings = @import("org/allbinary/string/CommonStrings.zig").CommonStrings;
const BouncyCastleProvider = @import("org/bouncycastle/jce/provider/BouncyCastleProvider.zig").BouncyCastleProvider;
const BaseSecretComposite = @import("org/allbinary/logic/system/security/crypt/jcehelper/BaseSecretComposite.zig").BaseSecretComposite;
const KeySpecFactory = @import("org/allbinary/logic/system/security/crypt/jcehelper/KeySpecFactory.zig").KeySpecFactory;
const SecretComposite = @import("org/allbinary/logic/system/security/crypt/jcehelper/SecretComposite.zig").SecretComposite;

pub const AbCrypt = struct {
    const Self = @This();
    pub const java_name = "org.allbinary.logic.system.security.crypt.jcehelper.AbCrypt";
    tsUtil: ?*TsUtil = null,
    secretComposite: ?*BaseSecretComposite = null,
    algorithm: ?*String = null,
    // Implements CryptInterface

    fn initFields(this: *Self) void {
        this.tsUtil = Inheritance.upcast(?*TsUtil, TsUtil.getInstance());
        this.secretComposite = Inheritance.upcast(?*BaseSecretComposite, BaseSecretComposite.NULL_SECRET_COMPOSITE);
        
    }
    

    pub fn create1(algorithm: ?*String) *Self {
        const this = allocator.create(Self) catch unreachable;
        this.* = .{};
        this.initFields();
        this.algorithm = algorithm;
        return this;
    }
    

    pub fn init(self: *Self, keyAsString: ?*String) void {
        const commonStrings: ?*CommonStrings = Inheritance.upcast(?*CommonStrings, CommonStrings.getInstance()); _ = commonStrings;
        { // try
            { // try
                _ = Inheritance.callStatic(Security, "addProvider", .{ BouncyCastleProvider.create() });
            }
            // catch (Exception e):
//                 _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ commonStrings.?.EXCEPTION, self, commonStrings.?.INIT, e });
            const key: []i8 = Inheritance.call(self.tsUtil.?, "getByteArray", .{ keyAsString });
            const keySpec: ?*KeySpec = Inheritance.upcast(?*KeySpec, Inheritance.call(KeySpecFactory.getInstance().?, "getInstance", .{ self.algorithm, key }));
            const keyFactory: ?*SecretKeyFactory = Inheritance.upcast(?*SecretKeyFactory, Inheritance.callStatic(SecretKeyFactory, "getInstance", .{ self.algorithm }));
            const secretKey: ?*SecretKey = Inheritance.upcast(?*SecretKey, Inheritance.call(keyFactory.?, "generateSecret", .{ keySpec }));
            const cipher: ?*Cipher = Inheritance.upcast(?*Cipher, Inheritance.callStatic(Cipher, "getInstance", .{ self.algorithm }));
            self.secretComposite = Inheritance.upcast(@TypeOf(self.secretComposite), Inheritance.callStatic(SecretComposite, "create3", .{ secretKey, cipher, key }));
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("init Failed"), self, commonStrings.?.INIT, e });
    }
    

    pub fn encrypt(self: *Self, array: []i8) []i8 {
        { // try
            return Inheritance.call(self.secretComposite.?, "encrypt", .{ array });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("Encrypt Failed"), self, String.literal("encrypt"), e });
//             return NullUtil.getInstance().?.NULL_BYTE_ARRAY;
    }
    

    pub fn decrypt(self: *Self, array: []i8) []i8 {
        { // try
            return Inheritance.call(self.secretComposite.?, "decrypt", .{ array });
        }
        // catch (Exception e):
//             _ = Inheritance.callStatic(PreLogUtil, "putOE", .{ String.literal("decrypt Failed"), self, String.literal("decrypt"), e });
//             return NullUtil.getInstance().?.NULL_BYTE_ARRAY;
    }
};

